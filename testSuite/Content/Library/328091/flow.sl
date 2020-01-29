namespace: '328091'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          328091.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 256
        'y': 143
        navigate:
          b436bf29-5596-1ae2-8c0c-a7560dd9d0e0:
            targetId: 03bbf429-c4ff-a427-b7ea-efe48cbe2425
            port: SUCCESS
    results:
      SUCCESS:
        03bbf429-c4ff-a427-b7ea-efe48cbe2425:
          x: 422
          'y': 137
