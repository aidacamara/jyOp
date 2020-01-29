namespace: '328079'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: |-
      def execute():
          a = 1
          return locals()
  results:
    - SUCCESS
