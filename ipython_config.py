get_config().InteractiveShellApp.exec_lines = \
    [
        '%load_ext autoreload',
        '%autoreload 2',
        'import demo',
        'import toolz.curried as T',
        'from toolz import itertoolz as I',
        'from toolz import functoolz as F',
        'from toolz import dicttoolz as D'
    ]

print("--------->>>>>>>> CUSTOM CONFIG LOADED <<<<<<<<<------------")
