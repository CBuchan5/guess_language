# GitHub Favourite Language Guess

*We would like you to build an application that allows users to enter an arbitrary Github username and be presented with a best guess of the Github user's favourite programming language.* 

This is my attempt at the tech test given to me by MVF. The idea of the app is to allow a viewer to enter a random Github username and have the program return a guess at said user's favourite programing language.  

## Tech

- Ruby
- Sinatra
- HTTParty
- [Github API] (https://developer.github.com/v3/) 
- rspec
- rubocop


## User Stories

```
As a user,
So I can search GitHub,
I'd like to be able to enter a GitHub username

As a user,
For a little bit of fun,
I'd like to see a guess of said user's favourite programing language
```
## Potential Edge Cases
- If the user types in a username that has capital letters
- Username doesn't exist
- Add privite repos to the mix
- If there are two languages with the same count. Ie two repos with Ruby and two with JavaScript

## Setting the program up

- Fork and then clone this repositry
- Install any gems by running the following code: 
 ```
 bundle 
```
## To use the program
- Make sure gems are installs (follow steps above)
- Run the following command:
```
rackup
```
Open browser and type in 
```
http://localhost:9292/
```




