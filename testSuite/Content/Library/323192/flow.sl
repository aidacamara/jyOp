namespace: '323192'
flow:
  name: flow
  workflow:
    - pyOp:
        do:
          323192.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 313
        'y': 133
        navigate:
          17c663e0-2af6-1292-76bb-f561d5cb47c5:
            targetId: 3e9d3101-8be8-4920-6514-13971a7a4f77
            port: SUCCESS
    results:
      SUCCESS:
        3e9d3101-8be8-4920-6514-13971a7a4f77:
          x: 486
          'y': 135
