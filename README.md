# Inmana

Inmana is a REST API to help manage restaurant supplies, sending weekly reports to registered restaurants with all supplies about to expire. The app was developed in Elixir for educational purposes during the **Next Level Week #5**, an event created by the [Rocketseat](https://rocketseat.com.br/) with the objective to teach several programming skills (in this case, Elixir) to accelerate your career.

## Getting Started

This project uses [Elixir](https://elixir-lang.org/install.html), [Phoenix](https://hexdocs.pm/phoenix/installation.html#phoenix) and [PostgreSQL](https://www.postgresql.org/download/), so make sure to have these three installed and well configured to continue (see referenced links for each one).

```bash
git clone https://github.com/alexserodio/inmana

cd inmana

# install all project dependencies
mix deps.get

# create and apply database migrations
mix ecto.setup

# finally, start server
mix phx.server
```

### The application allows you to:

- register restaurants and supplies;
- view supply information;
- automatically sends weekly reports to all registered restaurants with a list of supplies that will expire in the next seven days;

### REST API endpoints available:

Restaurants:

- `POST` /api/restaurants
  <pre>
  JSON body:
  {
    "name": "Sample Restaurant",
    "email": "restaurant@sample.com"
  }
  </pre>

Supplies:

- `POST` /api/supplies
  <pre>
  JSON body:
  {
    "restaurant_id": "9554b712-08db-46a1-8dbe-e11386d7cbdb",
    "description": "Nuggets",
    "expiration_date": "2021-04-26",
    "responsible": "John Doe"
  }
  </pre>
- `GET` /api/supplies/`:id`
  - where `:id` is a valid UUID such as: 5ed47c4e-38bc-4252-9888-263776fe2f4e
  <pre>
  JSON response:
  {
    "supply": {
      "description": "Nuggets",
      "expiration_date": "2021-04-26",
      "responsible": "John Doe"
      "restaurant_id": "9554b712-08db-46a1-8dbe-e11386d7cbdb",
      "id": "5ed47c4e-38bc-4252-9888-263776fe2f4e"
    }
  }
  </pre>

### Extra information:

- emails sent by the application in dev can be seen in http://localhost:4000/sent_emails;
  - the GenServer scheduler is configured to send emails each 60 seconds for demonstration but in reality would be once a week;
  - the emails are sent using the [Bamboo](https://github.com/thoughtbot/bamboo) dependency;
- the project uses the [ExCoveralls](https://github.com/parroty/excoveralls) dependency for test coverage analysis, so you can run:
  - `mix test` to just run the tests;
  - `mix test --cover` to see test coverage in terminal;
  - `mix coveralls.html` to generate html report file;
- you can run the server with `iex -S mix phx.server` to enter interactive mode;

### Some possibilities for improvement:

- improve code coverage adding more and better test cases;
- improve API adding more endpoints to, for example, update restaurant information, show all registered restaurants and all supplies from a restaurant.
