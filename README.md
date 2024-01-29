# Routh-Hurwitz special cases stability grapher #
Given the numerator and denominator of an $s$-domain function, this script builds a transfer function, builds the closed-loop transfer function, finds its poles, inputs a unitary step, and checks its stability; this is graphed, printed in the command window and done using built-in MATLAB functions.

## Features ##
- Graphs the poles of a closed-loop transfer function.
- Displays unitary step response.
- Determines the stability of the system.
- Comments on every line explaining their purpose.

## Requirements ##
- MATLAB.

## How to use ##
1. Open the `.m` file in MATLAB.
2. Modify the `numerator` and `denominator` variables depending on your $s$-domain function.
3. Run the script.

## Notes ##
- The Routh-Hurwitz theorem is used to find the stability of the system.
- The `numerator` and `denominator` are defined using only the coefficients of the $s$-variable.
- The `clear` function is used at the start of the program, make sure to save any previous variables before running the script.
- The following $T(s)$ functions are already included in the script:
  
  $$T(s)=\frac{20}{s^8+s^7+12s^6+22s^5+39s^4+59s^3+48s^2+38s+20}$$

  $$T(s)=\frac{s^3+7s^2-21s+10}{s^6+s^5-6s^4+0s^3-s^2-s+6}$$

## How it works ##
| Element       | Description                                     |
|:-------------:|-------------------------------------------------|
| `clear`       | Erases previous variables.                      |
| `numerator`   | The numerator of the $s$-domain function.          |
| `denominator` | The denominator of the $s$-domain function.        |
| `tf`          | Builds the transfer function.                    |
| `feedback`    | Computes the closed-loop transfer function.     |
| `pole`        | Returns the poles of the system.                |
| `figure`      | Creates a new figure window.                    |
| `plzplot`     | Plots poles.                                    |
| `step`        | Plots the step response of the system.          |
| `isstable`    | Checks if the system is stable.                 |


## Contributors ##
- Abdiel Alfonso Rincon Cantu

## Acknowledgments ##
Special thanks to Dr. Jorge Quishpe-Armas for providing the documentation that laid the groundwork for this script.

## **License** ##  
MIT License

Copyright (c) 2024 Abdiel Alfonso Rincon Cantu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
