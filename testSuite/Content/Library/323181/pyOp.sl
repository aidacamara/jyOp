namespace: '323181'
operation:
  name: pyOp
  python_action:
    useJython: false
    script: "# removing, renaming or overwriting the 'execute' method will  result in compilation failure.\n# any parameters declared in the execute's method signature should be present in the 'Inputs' tab. \ndef execute():\n    \n    result = datetime()\n    result = result + ' ' + timedelta_datatype() + ' ' +date_datatype()\n    \n    coll_result = collection_datatype()\n    # code goes here\n    return locals()\n# you can add additional helper methods below.\n\ndef timedelta_datatype():\n    from datetime import timedelta\n    \n    delta1 = timedelta(seconds=57)\n    delta2 = timedelta(hours=25, seconds=2)\n    \n    result = str(delta2 != delta1)\n    \n    return result\n\ndef datetime():\n    import datetime\n    from datetime import timedelta\n    result = str(datetime.MINYEAR) + ' '\n    result = result + str(datetime.MAXYEAR) + ' '\n    \n    delta = timedelta(\n        days = 50,\n        seconds = 27,\n        microseconds = 10,\n        milliseconds = 29000,\n        minutes = 5,\n        hours = 8,\n        weeks = 2)\n        \n    result = result + str(delta.days) + ' ' + str(delta.microseconds)\n    \n    return result\n    \ndef date_datatype():\n    from datetime import date\n    \n    result = date.fromisoformat('2019-12-04')\n    result = result.replace(day = 30)\n    return str(result)\n    \ndef collection_datatype():\n    from collections import deque\n    \n    d = deque('ghi')\n    d.append('j')\n    d.appendleft('f')\n    result = ''\n    for elem in d:\n        result = result + elem.upper()\n        \n    return result"
  outputs:
    - result
    - coll_result
  results:
    - SUCCESS
