# coding_twitter
## A social media platform where users tweet about coding challenges!
> This is a social media application where users can sign up, create tweets about coding challenges and how to solve them, like other users' tweets, follow and unfollow other users and vice versa.
It is my RoR Capstone Project of the Microverse Curriculum.

## Live Demo

[Coding Twitter](https://tranquil-plateau-08421.herokuapp.com/)

## Preview

### Login Page

![Login-page](https://user-images.githubusercontent.com/57812000/90254458-61cab280-de08-11ea-8eb5-a5f7376a7d0b.png)

### Index Page

![image](https://user-images.githubusercontent.com/57812000/90253649-18c62e80-de07-11ea-9c73-90dec5a30a25.png)

### Show Page

![Coding-show](https://user-images.githubusercontent.com/57812000/90254038-bb7ead00-de07-11ea-9fe3-798d36ca805e.png)

### Sign Up Page

![Sign-up-page1](https://user-images.githubusercontent.com/57812000/90254353-35af3180-de08-11ea-9cf8-ae66e6b46195.png)


## Video Presentation

  [Video Presentation](https://www.loom.com/share/c80fb6371c5444129da6138714200a87)
  [![Coding Twitter Video](![RoR-Video-Presentation](https://user-images.githubusercontent.com/57812000/90254616-aa826b80-de08-11ea-96d8-64c800404acf.png)](https://www.loom.com/share/c80fb6371c5444129da6138714200a87)

## Built With

- Ruby 2.6.5 and Rails 5.2.4.3
- Bootstrap 4
- Deployed on Heroku

To get a local copy up and running follow these steps:

### Prerequisites

- Ruby: 2.7
- Rails: 6.0.3
- SQLite
- Git

### Usage

- Fork/Clone this project to your local machine and checkout to required branch:

```Bash
    git clone git@github.com:jamezjaz/coding_twitter.git
    cd coding_twitter
```

```Ruby
    bundle install
```

Setup database with:

```Ruby
    yarn install --check-files
    rails db:create
    rails db:migrate
```

Start server with:

```Ruby
    rails server
        or
    rails s
```
### Running tests

```Ruby
    bundle exec rspec --format documentation
```
(Note that to run the test, you will need to have chrome browser installed on your computer)

### Deployment
The project was depolyed to heroku. If you set up AWS S3 for active storage and want to deploy your own copy to heroku, then you will need to allow heroku access the encrypted API keys by running

```Ruby
    heroku config:set RAILS_MASTER_KEY= <master.key>
```

(The master key can be found in the `/config/master.key` file)

## Author

👤 **James Chigozie Odufu**

- Github: [@githubhandle](https://github.com/jamezjaz)
- Twitter: [@twitterhandle](https://twitter.com/jamezjaz90)
- Linkedin: [@linkedin](https://linkedin.com/in/james-odufu-ba2a4a125)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jamezjaz/coding_twitter/issues)

Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name.`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description of the development(or master if not available) branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org)
- [Gregoire Vella](https://www.behance.net/gregoirevella) for the design.

## 📝 License

This project is [MIT](LICENSE) licensed with the exception of the design, which is under the [Creative Commons License](https://creativecommons.org/licenses/by-nc-nd/4.0/) and attributed to [Gregoire Vella](https://www.behance.net/gregoirevella).
