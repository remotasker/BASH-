#!/bin/bash

# Simulate an MPesa prompt to send money and check balance
set -euo pipefail

# Global Variables
MPESA_BALANCE=5000  # Simulated balance
MENU_OPTIONS=("Send Money" "Check Balance" "Exit")

# Functions

display_menu() {
    printf "\n--- MPESA MENU ---\n"
    for i in "${!MENU_OPTIONS[@]}"; do
        printf "%d. %s\n" "$((i+1))" "${MENU_OPTIONS[$i]}"
    done
    printf "Select an option: "
}

send_money() {
    local recipient; local amount

    printf "\n--- SEND MONEY ---\n"
    printf "Enter recipient phone number (e.g., 0712345678): "
    read -r recipient

    # Validate recipient number
    if [[ ! "$recipient" =~ ^07[0-9]{8}$ ]]; then
        printf "Invalid phone number. Try again.\n"
        return
    fi

    printf "Enter amount to send: "
    read -r amount

    # Validate amount
    if [[ ! "$amount" =~ ^[0-9]+$ || "$amount" -le 0 ]]; then
        printf "Invalid amount. Try again.\n"
        return
    fi

    if (( amount > MPESA_BALANCE )); then
        printf "Insufficient balance. Transaction failed.\n"
        return
    fi

    # Confirm transaction
    printf "Send KES %d to %s? (yes/no): " "$amount" "$recipient"
    read -r confirmation

    if [[ "$confirmation" != "yes" ]]; then
        printf "Transaction cancelled.\n"
        return
    fi

    # Deduct and confirm transaction
    MPESA_BALANCE=$((MPESA_BALANCE - amount))
    printf "Transaction successful! Remaining balance: KES %d\n" "$MPESA_BALANCE"
}

check_balance() {
    printf "\n--- CHECK BALANCE ---\n"
    printf "Your current MPESA balance is: KES %d\n" "$MPESA_BALANCE"
}

# Main Execution Flow
main() {
    while true; do
        display_menu
        local choice
        read -r choice

        case "$choice" in
            1) send_money ;;
            2) check_balance ;;
            3) printf "Exiting MPESA simulation. Goodbye!\n"; break ;;
            *) printf "Invalid option. Please try again.\n" ;;
        esac
    done
}

# Execute main function
main


