# String Calculator - TDD Kata

## Overview
This project implements a **String Calculator** using **Test-Driven Development (TDD)** in Ruby. The development process follows an iterative approach with incremental commits to demonstrate the evolution of the solution.

## Features
- ✅ Returns `0` for an empty string.
- ✅ Supports addition of one or two numbers.
- ✅ Handles an unknown number of numbers.
- ✅ Supports `,` and `\n` as delimiters.
- ✅ Allows custom delimiters.
- ✅ Throws an exception for negative numbers.

## Tech Stack
- **Language:** Ruby
- **Testing Framework:** RSpec

## Project Structure
```
├── lib/
│   ├── string_calculator.rb  # Main implementation file
├── spec/
│   ├── string_calculator_spec.rb  # RSpec test cases
├── README.md  # Project documentation
├── .rspec  # RSpec configuration
└── Gemfile  # Ruby dependencies
```

## Setup & Run Instructions

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/Rush1314/incubyte-tdd-assignment.git
cd incubyte-tdd-assignment
```

### 2️⃣ Install Dependencies
```sh
bundle install
```

### 3️⃣ Run Test Cases
```sh
rspec
```

## Test Cases & Results
| Input | Expected Output | Status |
|---|---|---|
| `""` | `0` | ✅ |
| `"1"` | `1` | ✅ |
| `"1,2"` | `3` | ✅ |
| `"1\n2,3"` | `6` | ✅ |
| `"//;\n1;2"` | `3` | ✅ |
| `"-1,2,-3"` | `Negative numbers not allowed: -1, -3` | ✅ |
