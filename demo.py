import toolz.curried as T
import random


def nats():
    a = 1
    while True:
        yield a
        a += 1

evens = T.filter(lambda x: x % 2 == 0, nats())
odds = T.filter(lambda x: x % 2 == 1, nats())
# curried functions can be trivially partially applied
evens_ = T.filter(lambda x: x % 2 == 0)
odds_ = T.filter(lambda x: x % 2 == 1)


def fibs():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b


def estimate():
    return T.pipe(
        fibs(),
        T.take(10),
        list,
        lambda x: T.nth(random.randint(0, len(x) - 1), x))


from hypothesis import given
from hypothesis.strategies import integers, lists


@given(integers())
def test_eq_to_inc(x):
    assert x == x + 1


# @given(lists(integers()))
# def test_eq_rev_xs(xs):
    # assert xs == xs[::-1]
