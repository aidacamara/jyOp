namespace: '328080'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          328080.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 273
        'y': 149
        navigate:
          c5ad66c3-95e7-316a-d2e0-692e728c0939:
            targetId: 4a9f29ea-e8dc-44c1-d399-756bda55b26b
            port: SUCCESS
    results:
      SUCCESS:
        4a9f29ea-e8dc-44c1-d399-756bda55b26b:
          x: 493
          'y': 147
