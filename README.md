# Captain Swiftknife's Plank API

Hey all you swashbucklers! This is the back-end portion of Captain Swiftknife's Plank - the pirate-themed version of hangman. This API connects to LinkedIn's Word API endpoint to pull in the puzzle word and houses the user data.

*Used in conjunction with [hangman](https://github.com/zacharyehren/hangman) on the front-end.*

### Configuration

Install the project gems by running:

```
$ bundle install
```

Build project table:

```
$ rake db:migrate
```

### Run the Application

Run the rails server:

```
$ rails s
```

The server will start up. To stop the server, press `ctrl + c`.
