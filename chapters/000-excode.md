# Syntax Highlighting for Various Languages

:::note
This is a note
:::

some text

:::good
This is good!
:::

:::bad
This is bad!
:::

## Code examples

### C

``` C
#include <math.h>
#include <stdio.h>
int checkPrimeNumber(int n);
int checkArmstrongNumber(int n);
int main() {
    int n, flag;
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    // check prime number
    flag = checkPrimeNumber(n);
    if (flag == 1)
        printf("%d is a prime number.\n", n);
    else
        printf("%d is not a prime number.\n", n);

    // check Armstrong number
    flag = checkArmstrongNumber(n);
    if (flag == 1)
        printf("%d is an Armstrong number.", n);
    else
        printf("%d is not an Armstrong number.", n);
    return 0;
}

int checkPrimeNumber(int n) {
    int i, flag = 1;
    for (i = 2; i <= n / 2; ++i) {
        // condition for non-prime number
        if (n % i == 0) {
            flag = 0;
            break;
        }
    }
    return flag;
}

int checkArmstrongNumber(int num) {
    int original, rem, n = 0, flag;
    double result = 0.0;
    original = num;
    while (original != 0) {
        original /= 10;
        ++n;
    }
    original = num;
    while (original != 0) {
        rem = original % 10;
        result += pow(rem, n);
        original /= 10;
    }
    // condition for Armstrong number
    if (round(result) == num)
        flag = 1;
    else
        flag = 0;
    return flag;
}
```
### Python

``` python
# Python rogram to find the SHA-1 message digest of a file

# importing the hashlib module
import hashlib

def hash_file(filename):
   """"This function returns the SHA-1 hash
   of the file passed into it"""

   # make a hash object
   h = hashlib.sha1()

   # open file for reading in binary mode
   with open(filename,'rb') as file:

       # loop till the end of the file
       chunk = 0
       while chunk != b'':
           # read only 1024 bytes at a time
           chunk = file.read(1024)
           h.update(chunk)

   # return the hex representation of digest
   return h.hexdigest()

message = hash_file("track1.mp3")
print(message)
```
### Java

``` java
public class DecimalOctal {

    public static void main(String[] args) {
        int decimal = 78;
        int octal = convertDecimalToOctal(decimal);
        System.out.printf("%d in decimal = %d in octal", decimal, octal);
    }

    public static int convertDecimalToOctal(int decimal)
    {
        int octalNumber = 0, i = 1;

        while (decimal != 0)
        {
            octalNumber += (decimal % 8) * i;
            decimal /= 8;
            i *= 10;
        }

        return octalNumber;
    }
}
```

### HTML

```html
<!DOCTYPE html>
<html>
<body>

<p>Click the button to display the date.</p>

<button onclick="displayDate()">The time is?</button>

<script>
function displayDate() {
  document.getElementById("demo").innerHTML = Date();
}
</script>

<p id="demo"></p>

</body>
</html> 
```
