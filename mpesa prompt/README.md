# M-Pesa Simulation Script (Bash)

This Bash script simulates a basic M-Pesa menu, allowing users to send money and check their balance. It utilizes a persistent balance storage mechanism using a text file.

## Features

* **Send Money:** Simulates sending money to a recipient with input validation for phone numbers and amounts.
* **Check Balance:** Displays the current M-Pesa balance.
* **Persistent Balance:** Stores and retrieves the balance from a text file (`balance.txt`).
* **Input Validation:** Robust validation for phone number and amount inputs.
* **Confirmation Prompt:** Confirms the transaction before execution.
* **Clear Menu:** User-friendly menu for navigation.
* **Currency Formatting:** Formats currency output with commas for readability.

## Prerequisites

* Bash shell environment.

## Installation

1.  **Clone the repository:**

    ```bash
    git clone [your-repository-url.git]
    cd [your-repository-directory]
    ```

2.  **Make the script executable:**

    ```bash
    chmod +x mpesa_simulation.sh
    ```

## Usage

1.  **Run the script:**

    ```bash
    ./mpesa_simulation.sh
    ```

2.  **Menu Options:**

    * **1. Send Money:** Enter the recipient's phone number and the amount to send.
    * **2. Check Balance:** View your current M-Pesa balance.
    * **3. Exit:** Exit the simulation.

## Script Details

* **Balance Storage:** The script stores the M-Pesa balance in a file named `balance.txt`. If the file does not exist, it initializes the balance to 5000.
* **Input Validation:**
    * Phone numbers must be in the format `07XXXXXXXX`.
    * Amounts must be positive numbers.
* **Error Handling:** The script handles invalid input and insufficient balance scenarios.
* **Currency Formatting:** displays the currency with commas, for easier reading.
* **Clear Screen:** The screen is cleared before each menu display.

## Security Considerations

* **File Permissions:** Ensure that the `balance.txt` file has appropriate permissions to prevent unauthorized access.
* **Data Integrity:** This script is a simulation and does not interact with the actual M-Pesa API. Do not use this for real financial transactions.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bug fixes or feature requests.


## Disclaimer

This script is provided for educational and simulation purposes only. Use it at your own risk. It does not interact with the actual M-Pesa API.
