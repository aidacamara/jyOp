namespace: '323193'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          323193.pyOp: []
        navigate:
          - SUCCESS: scndPyOp
    - scndPyOp:
        do:
          323193.scndPyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 352
        'y': 175
      scndPyOp:
        x: 537
        'y': 180
        navigate:
          1b8a8394-05c9-172d-6d51-fa256509aded:
            targetId: fc91fc89-ad76-bca0-c042-5e6e7d3ca541
            port: SUCCESS
    results:
      SUCCESS:
        fc91fc89-ad76-bca0-c042-5e6e7d3ca541:
          x: 695
          'y': 107
