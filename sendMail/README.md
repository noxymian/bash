# SendMail

> A function witch allow you to send mail through a shell script, for example for alerting or notifying the end of a maintenance script.

* How to use it ?
    * Include the file **sendMail.sh** at the beginning of your script :

    ```
    source /path/to/sendMail.sh
    or
    . /path/to/sendMail.sh
    ```
    * You can also add this function directly into your script file.
    * Then :
    ```
    send_email "recipient@example.com" "Subject line" "Message body"
    ```