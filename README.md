# PLAYBOOK (BACK END)

![Playbook Opening Sequnece](https://media.giphy.com/media/2gVZiyyHbTsy6XLSh6/giphy.gif)

A virtual playbook for coaches, drill directors, and dancers to map and visualize synchronized movement in action. Users can log-in to create or view all of their saved plays, drag and drop to edit player's positions, set travel paths/routes for each player, and hit play to see all of the players move along their routes.

Built on a React-Redux front end and Ruby on Rails back end. Playbook uses JSON Web Tokens to verify authorization and BCrypt to protect user passwords.

## Getting Started

Front end repository can be found [here](https://github.com/myungbeans/playbook).

To run on a local server:

* Run PostgreSQL10
* Create a table, migrate, and seed
* Start server

```Rails
rails db:migrate:reset db:seed

rails s
```

## Enabling JWT

In order to enable JSON Web Token functionality, please be sure to create a `.env` file at the root folder holding your JWT Secret

```Rails
JWT_SECRET = enter_your_secret_here
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Model View Controller framework used to build a structured database.
* [JWT](https://jwt.io/) - JSON-based open standard for creating access tokens used to securely transmit encrypted information.

## Acknowledgments

* Assets created by Zaff Studio from the Noun Project
* Opening Logo font design by Ann Kim
* Custom player icons by Brie Sáez