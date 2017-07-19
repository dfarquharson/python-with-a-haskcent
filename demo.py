import toolz.curried as T
import random


def nats():
    a = 0
    while True:
        yield a
        a += 1

evens = T.filter(lambda x: x % 2 == 0, nats())
odds = T.fitler(lambda x: x % 2 == 1, nats())


def fibs():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b


def estimate():
    return T.pipe(
        fibs(),
        T.take(10),
        lambda x: T.nth(random.randint(0, len(x) - 1)))
