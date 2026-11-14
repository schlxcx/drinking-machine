# Drinking Machine – Bash Simulation

**A practical Bash scripting project simulating a drink vending machine with beverage selection, customization, and payment options.**

![Language](https://img.shields.io/badge/language-Bash-4EAA25)
![Platform](https://img.shields.io/badge/platform-Linux-lightgrey)
![Type](https://img.shields.io/badge/type-CLI-blue)
![Language](https://img.shields.io/badge/interface-German%20Only-lightgrey)

## Overview

This project is a command-line simulation of a drink vending machine developed using Bash.

The application allows users to select beverages, customize certain drinks, calculate prices, and simulate different payment methods.

It was created as a practical scripting exercise and is included in my personal software development portfolio.

## Language Support

The Drinking Machine simulation is currently available in **German only**.

All menus, user prompts, and application messages are displayed in German. English language support is not implemented.

## Features

- **Beverage Selection** – Choose between coffee, tea, Coca-Cola, Sprite, Fanta, and mineral water.
- **Drink Customization** – Select coffee varieties, add milk or sugar, or choose carbonated mineral water.
- **Price Calculation** – Calculate beverage prices in Swiss francs (CHF).
- **Payment Simulation** – Choose between cash, TWINT, PayPal, and card payments.
- **Input Validation** – Reject invalid beverage and payment method selections.
- **Command-Line Interface** – Interactive terminal-based user experience.

**Note:** All payment methods are simulations. No real payments are processed.

## Technology Stack

| Category | Technology |
|---|---|
| Language | Bash |
| Environment | Bash-compatible terminal |
| Interface | Command-Line Interface (CLI) |
| Main Concepts | Functions, Variables, Conditions, Loops |

## Getting Started

### Prerequisites

- Bash
- A compatible terminal environment

### Running the Application

1. Clone or download the repository.
2. Open a git bash in the project directory.
3. Run the Bash script:

```bash
bash drinking-machine.sh
```

Replace `drinking-machine.sh` with the actual filename if necessary.

## What I Implemented

I developed a terminal-based vending machine simulation featuring multiple beverage categories, optional customizations, and price calculations.

The application uses Bash functions, `case` statements, conditional expressions, and loops to manage user interactions and simulate payment processes.

This project demonstrates my understanding of fundamental shell scripting concepts and command-line application development.

## Limitations

- Payment methods are simulated and do not connect to real payment providers.
- Cash payments require specific amounts rather than calculating change.
- Some user inputs have only basic validation.
- The application does not control any physical vending machine hardware.

## Project Purpose

This project was created to practice Bash scripting, user input handling, conditional logic, and function-based program structure.

It serves as a small educational project in my personal software development portfolio.

## License

No license has been specified. All rights are reserved by default.