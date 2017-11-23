#!/usr/bin/python

## Exception example
import time, sys

x = 1
print("Script started.")
stored_exception=None

while True:
    try:
        print("Processing file #",x,"started...",)
        # do something time-cosnuming
        time.sleep(1)
        print(" finished.")
        if stored_exception:
            break
        x += 1
    except KeyboardInterrupt:
        stored_exception=sys.exc_info()

print("Bye")
print("x=",x)

# if stored_exception:
    #raise stored_exception[0], stored_exception[1], stored_exception[2]

sys.exit()