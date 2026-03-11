*** Settings ***
Library     Collections
Library     SeleniumLibrary

*** Variables ***
${NAME}        Rion
${NUM1}        10
${NUM2}        20
${CITY}        Hyderabad

@{FRUITS}      Apple    Banana    Mango

&{USER}        username=admin    password=admin123


*** Test Cases ***

1. Print Scalar Variable
    Log To Console    ${NAME}

2. Print Sum Of Two Numbers
    ${sum}=    Evaluate    ${NUM1} + ${NUM2}
    Log To Console    Sum is ${sum}

3. Use Variable Inside Sentence
    Log To Console    I live in ${CITY}

4. Reassign Variable Inside Test Case
    ${CITY}=    Set Variable    Mumbai
    Log To Console    Updated City is ${CITY}

5. Print First Item From List
    Log To Console    ${FRUITS}[0]

6. Loop Through List
    FOR    ${item}    IN    @{FRUITS}
        Log To Console    ${item}
    END

7. Find Length Of List
    ${length}=    Get Length    ${FRUITS}
    Log To Console    Length of list is ${length}

8. Print Dictionary Value
    Log To Console    ${USER}[username]

9. Add New Key-Value Pair To Dictionary
    Set To Dictionary    ${USER}    email=admin@test.com
    Log To Console    ${USER}[email]

10. Loop Through Dictionary
    FOR    ${key}    ${value}    IN    &{USER}
        Log To Console    Key: ${key} Value: ${value}

    END
