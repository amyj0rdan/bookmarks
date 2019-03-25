# Bookmark Challenge

This is a week 4 Makers Academy challenge.

## Getting started

`git clone https://github.com/amyj0rdan/bookmarks`     
`gem install bundle`    
`bundle`    

## Usage

- Set up psql, if not already
- Create a psql database using `CREATE DATABASE bookmark_manager;`
- Connect to the database using the pqsl command `\c bookmark_manager;`
- Run the queries saved in /db/migrations

## Tests

`rspec`

## Requirements

The website will have the following specification:

- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users manage their bookmarks

## User story 1

- Show a list of bookmarks

```
As a user of the web,
So I can see what bookmarks I have,
I want to be able to see a list of my bookmarks
```

### Domain model

![userstory1](https://user-images.githubusercontent.com/45539085/54928186-7359a480-4f0b-11e9-9785-bdf71c4ba9e5.png)
