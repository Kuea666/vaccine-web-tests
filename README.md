# vaccine-web-tests
# E2E Tests with Robot Framework Test Service Taker(Vaccine Haven) 
## Installation

```
pip install -r requirements.txt
```

## Running tests

```
robot ./test_reservation.robot
```

## Test case list
| ID | Name                                 | Description                                                                               | Status |
|----|--------------------------------------|-------------------------------------------------------------------------------------------|--------|
| 1  | Valid Browser                        | Visit the home page and verify Registration and Reservation on the home page.                                  | Pass   |
| 2  | Create a new Reservation            | Create a the Reservation test.  | Pass   |
| 3  | Verify The Created Reservation            | Test the Reservation that Created                                  | Pass   |
| 1  | Cancel the Reservation              | Cancel the reservation test.                                      | Pass   |
| 1  | Verify the Cancel                        | Test the cancel is collect.  | Pass   |


## Which do you think is a better framework for E2E testing of web applications or web services:  Robot Framework or Cucumber with Selenium/HTTP library and JUnit?

>I think Robot Framework is better than Cucumber because Robot Framework is easily extendable and Vast Scope more than Front End

## What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
>https://robocorp.com/docs/languages-and-frameworks/robot-framework/keywords