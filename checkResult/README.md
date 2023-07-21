# checkResult

> This function check the last command result

* If the last command result is ok, the function print "==> OK".
* If the last command result is ko, the function print "==> KO" and exit the script with the signal 1.
* How to use it ?
    * Include the file **checkResult.sh** at the beginning of your script :

    ```bash
    source /path/to/checkResult.sh
    or
    . /path/to/checkResult.sh
    ```
    * You can also add this function directly into your script file.
