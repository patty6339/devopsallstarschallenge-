# Creating and Activating a Virtual Environment in Linux

Follow these steps to create and activate a virtual environment in Linux:

1. **Install `virtualenv` package** (if not already installed):
    ```bash
    pip install virtualenv
    ```

2. **Navigate to your project directory**:
    ```bash
    cd /path/to/your/project
    ```

3. **Create a virtual environment**:
    ```bash
    virtualenv venv
    ```
    This will create a directory named `venv` in your project directory.

4. **Activate the virtual environment**:
    ```bash
    source venv/bin/activate
    ```

5. **Verify the virtual environment is activated**:
    You should see the name of your virtual environment in the terminal prompt, e.g., `(venv) user@hostname:~/path/to/project$`.

6. **Deactivate the virtual environment** (when done):
    ```bash
    deactivate
    ```
