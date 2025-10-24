# 💻 Assembly Language Programs (DOS/DOSBox)

A collection of small assembly programs designed to run in a **DOS environment** (like **DOSBox**), demonstrating fundamental 16-bit concepts and algorithms.

---

## 📂 Repository Contents

This repository includes the following programs, all written in assembly language:

| Filename | Description |
| :--- | :--- |
| **`character_presence.asm`** | Program to check for the presence of a specific character in a string and optionally count its occurrences. |
| **`concate_two_strings.asm`** | Concatenates two distinct strings into a single string. |
| **`division_without_div.asm`** | Implements a division operation using only basic arithmetic instructions (e.g., subtraction and shifts), avoiding the dedicated `DIV` instruction. |
| **`even_Numbers_Sum.asm`** | Calculates the sum of all even numbers within a specified range or array. |
| **`factorial.asm`** | Computes the factorial of a given non-negative integer. |
| **`multiplication_8bit.asm`** | Performs multiplication of two 8-bit numbers. |
| **`palindrome.asm`** | Checks if a given string is a palindrome (reads the same forwards and backward). |
| **`string_count.asm`** | Counts the total number of words in a sentence. |

---

## 🛠️ Prerequisites

To assemble and run these programs, you'll need the following tools installed and accessible within your **DOSBox environment**:

* **DOS Emulator:** **DOSBox**.
* **Assembler:** **Turbo Assembler (TASM)** or **Microsoft Macro Assembler (MASM)** is typically used for DOS development.

---

## 🚀 Usage (Example for MASM in DOSBox)

Follow these general steps inside your mounted DOSBox directory to create and run the executables.

### 1. Assemble the Code

Use the assembler to generate an **Object file (.OBJ)**:

```bash
masm <filename>.asm
```
### 2. Link the Code
```bash
link <filename>.obj
```

### 3.Run the Executable
```bash
<filename>
```
### 🤝 Contribution
Feel free to fork this repository, submit issues, or propose pull requests for improvements, alternative implementations, or additional DOS assembly exercises

### This project is licensed under the MIT License - see the LICENSE file for details.
