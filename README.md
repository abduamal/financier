![Financier Logo](https://i.imgur.com/xME1FxM.jpg)
# Financier

1. [ Motivation. ](#moti)
2. [ Walkthrough. ](#video)
3. [ Frontend. ](#ref)
4. [ Code Style. ](#style)
5. [ Technology. ](#tech)
6. [ Features. ](#now)
7. [ Stretch Goals. ](#stretch)

<a name="moti"></a>
## 1. Motivation

Financier is directed towards people who want to monitor their credit card expenses. In this code rework, I convert a formerly fully Ruby on Rails application into a rails API.

<a name="video"></a>
## 2. Walkthrough

Here is a look at one of the app's features: protected and unprotected pages. For security reasons, user's must log in to view their dashboard. Anyone can see the homepage, however, because it is an unprotected page.


https://user-images.githubusercontent.com/61441606/140754203-9f972f9d-0436-4b4e-81c3-b43c5b8650f9.mp4


<a name="ref"></a>
## 3. Frontend

https://github.com/abduamal/financier_frontend_v2

<a name="style"></a>
## 4. Code Style

This follows the MVC pattern.

<a name="tech"></a>
## 5. Technology

1. Ruby
2. FastJSON Serializer
3. JSON Web Token
4. Devise
5. Rack-CORS
6. SQLite

<a name="now"></a>
## 6. Features

See all accounts and transactions for each account.

<a name="stretch"></a>
## 7. Stretch Goals
1. Add transactions + accounts
2. Remove accounts
3. View highlights, like the biggest purchase
