checkResult () {
    [ $? -eq 0 ] ? echo "==> OK" : (echo "==> KO"; exit 1)
}



