from robot.api.deco import keyword
from robot.api import logger

import json

# @keyword("Get Value From Json")
# def get_value_from_json(json_path, field):
#     with open(json_path) as f:
#         import json
#         data = json.load(f)
#         return data[field]

# @keyword("Get Value From Json")
# def get_value_from_json(json_path, field):
#     with open(json_path) as f:
#        # import json
#         data = json.load(f)
#         sfields = field.split(".")
#         value = ""
#         for field in data:
#             for sfield in sfields:
#                 if field.text == sfield:
#                     value = field
#                     sfields.remove(sfield)
#                     while len(sfields) > 0:
#                        value = value[sfields[0]]
#                        sfields.remove(value)
#         return value.text


@keyword("Get Value From Json")
def get_value_from_json(json_path, field):
    with open(json_path) as f:
       # import json
        data = json.load(f)
        values = data
        logger.console(data)
        sfields = field.split(".")

        for index, value in enumerate(sfields):
            #logger.console(value)
            if value in values:
                values = values[value]
            else:
                logger.console("Specified Json Field " + field + " not found.")
                raise IOError
        return values
