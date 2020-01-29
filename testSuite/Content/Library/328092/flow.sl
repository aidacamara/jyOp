namespace: '328092'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          328092.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
    - jyOp:
        do:
          328092.jyOp: []
        navigate:
          - SUCCESS: pyOp
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 359
        'y': 165
        navigate:
          5418ab4c-f117-029d-31b2-ce5eecc08dc2:
            targetId: 50379ae0-38ef-2a4e-76db-e60aafce877e
            port: SUCCESS
      jyOp:
        x: 127
        'y': 179
    results:
      SUCCESS:
        50379ae0-38ef-2a4e-76db-e60aafce877e:
          x: 656
          'y': 171
