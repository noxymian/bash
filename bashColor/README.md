# Bash Color

> This snippet is a collection of variable containing bash colors. That allow you to colorize your output.

* Example :

    ```
    echo -e ${RED}"your string"${WHITE}
    ```
* In this example your string will be colorized in RED but the variable ${WHITE} will reset the after the string.
* How to use it ?
    * Include the file **bashColor.sh** at the beginning of your script :

    ```
    source /path/to/bashColor.sh
    ```
    or
    ```
    . /path/to/bashColor.sh
    ```
    * You can also add this function directly into your script file.