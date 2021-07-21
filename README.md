# PoC/test with Spina CMS

PoC avec le CMS Spina

## Dependencies

- ruby 2.7.4
- postgresql >= 13

## Install

```sh
psql -f db/postgresql_setup.sql
bundle install
rails db:schema:load
```

## Development

```sh
foreman start -f  Procfile.dev
```

=> [http://localhost:5000/](http://localhost:5000/)

## Admin for CMS

Development: [http://localhost:5000/admin](http://localhost:5000/admin)

## Demo

Run:

```sh
DUMMY=true rails db:seed
```

Visit `/admin` with following credentials:

- email: loic.delmaire@beta.gouv.fr
- password: password

Visit `Documentation` tab, and create/edit pages.
