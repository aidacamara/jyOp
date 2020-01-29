namespace: '328079'
operation:
  name: jyOp
  python_action:
    useJython: false
    script: |-
      def execute():
          a = 7
          return locals()
  results:
    - SUCCESS
