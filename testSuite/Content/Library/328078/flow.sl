namespace: '328078'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          328078.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 330
        'y': 170
        navigate:
          a6fa3cc6-1611-cdbf-db75-f793dd7c2236:
            targetId: af4d0a7b-0c5b-4d46-44cc-e05b161f2f48
            port: SUCCESS
    results:
      SUCCESS:
        af4d0a7b-0c5b-4d46-44cc-e05b161f2f48:
          x: 520
          'y': 161
