namespace: '328077'
flow:
  name: flow
  workflow:
    - jyOp:
        do:
          328077.jyOp: []
        navigate:
          - SUCCESS: random_number_generator
    - pyOp:
        do:
          328077.pyOp: []
        navigate:
          - SUCCESS: uuid_generator
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '1'
            - max: '500'
        navigate:
          - SUCCESS: pyOp
          - FAILURE: on_failure
    - uuid_generator:
        do:
          io.cloudslang.base.utils.uuid_generator: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      jyOp:
        x: 188
        'y': 153
      pyOp:
        x: 472
        'y': 156
      random_number_generator:
        x: 329
        'y': 341
      uuid_generator:
        x: 660
        'y': 216
        navigate:
          472677a7-5358-5cab-354a-df61313c52ec:
            targetId: 46cc91ee-397e-5447-99e4-061cfb75e5ed
            port: SUCCESS
    results:
      SUCCESS:
        46cc91ee-397e-5447-99e4-061cfb75e5ed:
          x: 809
          'y': 97
