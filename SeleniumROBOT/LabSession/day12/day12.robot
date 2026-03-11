#Create a scalar variable ${NAME} and print it.
#Assign two numbers to variables and print their sum.
#Create a variable ${CITY} and use it inside a sentence.
#Reassign a variable value inside a test case and log the updated value.
#Create a list variable @{FRUITS} and print the first item.
#Loop through a list variable and print each element.
#Find the length of a list variable.
#Create a dictionary variable &{USER} and print one key value.
#Add a new key-value pair to a dictionary variable.
#Access dictionary values inside a loop and print key and value.

*** Settings ***
Library    Collections

*** Variables ***
${NAME}    Alice
${CITY}    Paris
@{FRUITS}  Apple  Banana  Mango
&{USER}    name=John  age=30  role=Tester

*** Test Cases ***
Scalar Variable And Print
    Log    ${NAME}

Assign Two Numbers And Print Sum
    ${a}=    Set Variable    10
    ${b}=    Set Variable    20
    ${sum}=  Evaluate        ${a} + ${b}
    Log    Sum is ${sum}

Use Variable Inside Sentence
    Log    ${NAME} lives in ${CITY}

Reassign Variable And Log
    ${NAME}=    Set Variable    Bob
    Log    Updated name is ${NAME}

List Variable And Print First Item
    Log    First fruit is ${FRUITS}[0]

Loop Through List And Print Elements
    FOR    ${fruit}    IN    @{FRUITS}
        Log    Fruit: ${fruit}
    END

Find Length Of List
    ${length}=    Get Length    ${FRUITS}
    Log    Number of fruits: ${length}

Print Dictionary Key Value
    Log    User name is ${USER}[name]

Add New Key Value To Dictionary
    Set To Dictionary    ${USER}    city=London
    Log    User city is ${USER}[city]

Loop Through Dictionary And Print Key Value
    FOR    ${key}    ${value}    IN    &{USER}
        Log    ${key} : ${value}
    END
