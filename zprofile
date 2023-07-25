# Count the number of days since you've joined a company
hello() {
    day1_file="$HOME/day1.txt"
    company_file="$HOME/company.txt"

    if [ "$1" = "init" ]; then
        if [ -f "$day1_file" ] || [ -f "$company_file" ]; then
            echo "Initializing..."
            rm "$day1_file" "$company_file"
        fi
    else
        if [ -f "$day1_file" ]; then
            user_input=$(cat "$day1_file")
        else
            echo "Enter your company name: "
            read -r user_company
            echo "$user_company" > "$company_file"

            echo "Enter a date of your Day 1 at $user_company, in the format 'YYYY-MM-DD':"
            read -r user_input
            echo "$user_input" > "$day1_file"
        fi

        days_passed=$(( ($(date +%s) - $(date +%s -ud "$user_input")) / 3600 / 24 ))
        echo -e "\033[1m["$(date +"%Y-%m-%d %H:%M:%S")"] - ${@}\033[0m 👟👟 You have been running with $user_company for \033[1m$days_passed\033[0m days. Keep going! 👟👟"
    fi
}

