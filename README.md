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
rails s
```
