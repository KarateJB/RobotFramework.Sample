## Get started

### 1. (Optional) Create a virtual environment

```s
$ python -m venv venv/demo
$ source venv/demo/Scripts/activate
```


### 2. Install requirements

```s
$ pip install -r requirements.txt
```

### 3. Set environment variables

For bash user,

```s
$ cd env
$ . init_env_vars.sh
```


## Robot framework

### Common keywords

- Set a variable that can be accessed in keywords inside a `.robot` file.

```
My Test 1
    Set Test Variable    ${my_data_1}

My Test 2
    Set Test Variable    ${my_data_2}
    
My Teardown
    Log    data=${my_data_1}    console=${True}
    Log    data=${my_data_2}    console=${True}
```

Usage:

```
*** Test Cases ***
C0001 Test Something

    My Test 1
    My Test 2

    [Teardown]    My Teardown
```

