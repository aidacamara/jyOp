namespace: '322149'
flow:
  name: flow
  workflow:
    - pyOp:
        parallel_loop:
          for: 'x in [4, 6, 90]'
          do:
            322149.pyOp: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      pyOp:
        x: 100
        'y': 150
        navigate:
          280a23ab-4668-6906-896c-ab350333df1a:
            targetId: da83b980-1a3f-2556-4827-aeeec5b2ae52
            port: SUCCESS
    results:
      SUCCESS:
        da83b980-1a3f-2556-4827-aeeec5b2ae52:
          x: 400
          'y': 150
