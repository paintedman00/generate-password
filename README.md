# Password Generator Script

A simple bash script to generate a secure password by concatenating randomly selected words from the system dictionary with hyphens.

## Overview

This script creates a password by selecting a specified number of random words from the system dictionary and joining them with hyphens. It ensures the words are all lowercase and purely alphabetic.

## Usage

1. **Download the Script:**

    Save the script to a file, e.g., `generate-password.sh`.

2. **Make the Script Executable:**

    ```bash
    chmod +x generate-password.sh
    ```

3. **Run the Script:**

    ```bash
    ./generate-password.sh
    ```

## Script Details

### Variable `WORDS`

This variable sets the number of words to be included in the password. You can modify this value to generate a longer or shorter password.

```bash
WORDS=5
```

### Example Output

```
exciting-potato-parade-lazy-cat
```

### Explanation

1. **Set the Number of Words:**

    The script begins by setting the number of words to be included in the password:

    ```bash
    WORDS=5
    ```

2. **Select Random Words:**

    It then selects the specified number of random words from the system dictionary, ensuring they are lowercase alphabetic words:

    ```bash
    words=$(grep -x '[a-z]*' /usr/share/dict/words | shuf --random-source=/dev/urandom -n "${WORDS}")
    ```

3. **Join Words with Hyphens:**

    The selected words are concatenated with hyphens to form the password:

    ```bash
    password=$(echo "${words}" | paste -sd "-")
    ```

4. **Output the Password:**

    Finally, the generated password is printed to the terminal:

    ```bash
    echo "$password"
    ```

## Customizing the Script

- **Change the Number of Words:**

    To generate a password with a different number of words, modify the `WORDS` variable:

    ```bash
    WORDS=7
    ```

## Dependencies

- `grep`
- `shuf`
- `paste`

Ensure these utilities are installed and available on your system.
