send_email() {
    local recipient="$1"
    local subject="$2"
    local body="$3"
    echo "$body" | mail -s "$subject" "$recipient"
}
