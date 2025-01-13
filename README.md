# WiFi Show Key

**WiFi Show Key** is a powerful and easy-to-use tool that allows you to view the saved Wi-Fi passwords on your Windows machine. Whether you need to recover a forgotten password or simply want to check your Wi-Fi credentials, this tool has got you covered.

---

## Features

- **View Saved Wi-Fi Passwords**: Display all Wi-Fi passwords that are saved in your Windows network settings.
- **Administrator Privileges Check**: The script will check for administrator privileges and request them if necessary.
- **Simple User Interface**: Choose the Wi-Fi network from a list and instantly view the password.
- **Portable**: No installation needed. Just download and run the script!
- **Add to PATH for Easy Access**: The tool can be added to the system PATH so that you can easily run it from the command line by typing `wsk`.

---

## Requirements

- **Windows OS**: Compatible with Windows 7, 8, 10, and 11.
- **Administrator Privileges**: The script requires admin rights to access saved Wi-Fi profiles and passwords.

---

## How to Use

### Step 1: Download the Script

1. Download the `wsk.cmd` file from the [GitHub repository](https://github.com/ariphx/wifishowkey) or from the **Releases** section of this repository.

### Step 2: Add to PATH (Optional for Easy Access)

If you want to run the script from anywhere in the Command Prompt without needing to navigate to the script folder, you can add it to your system's PATH.

1. Download the `add_to_path.cmd` file from this repository.
2. **Run `add_to_path.cmd` as Administrator**:
   - Right-click on `add_to_path.cmd` and select **Run as Administrator**.
   - This will automatically add the folder containing `WiFiShowKey.cmd` to the system's PATH.
3. Once added, you can run the script from any Command Prompt window by typing `wsk` and hitting **Enter**.

### Step 3: Run the Script

1. If you prefer not to add it to PATH, you can also run the script directly:
   - Right-click on the `WiFiShowKey.cmd` file.
   - Select **Run as Administrator** to ensure the script has the necessary permissions.
2. The script will check if it's running with administrator privileges. If not, it will automatically restart with elevated rights.
3. Once the script runs, it will display a list of all saved Wi-Fi networks.
4. Choose the Wi-Fi network you want to see the password for by typing the number next to the network name.
5. The password will be displayed in the terminal window.
6. After the process is complete, press any key to exit the script.

### Step 4: Exit the Script

Once you have checked the password, simply press any key to close the script.

---

## Example Output

Here’s what the output will look like:

