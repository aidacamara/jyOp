namespace: '328080'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab.\nclass MyClass:\n    variable = \"blah\"\n    def function(self):\n        return (500 - 32)*5/9\n\ndef execute():\n    # code goes here\n    var = MyClass().variable\n    cel = str(MyClass().function())\n    \n    return locals()\n# you can add additional helper methods below."
  outputs:
    - var
    - cel
  results:
    - SUCCESS
