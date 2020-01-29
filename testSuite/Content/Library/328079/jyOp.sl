namespace: '328079'
operation:
  name: jyOp
  python_action:
    useJython: true
    script: |-
      def execute():
          a = '7';
          return locals()
  outputs:
    - a
  results:
    - SUCCESS
