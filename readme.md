joe und liz
===========

Wedding site for Joe &amp; Liz


## Initial Install

In your terminal, navigate to the folder you'd like to host the project in.
``` shell
$ cd ~/path/to/parent/folder
```

Download the project into a new folder
``` shell
$ git clone git@github.com:polymatt/joeandliz.git YourFolderName
```

Now the code should be downloaded and ready to run.
``` shell
$ cd YourFolderName
```

## Update & Run the Site

Everytime you'd like to make changes to the project, first make sure to pull down the newest code so as to not overwrite concurrent work. (*note: you need to be in the project folder to run the following commands*)
``` shell
$ git pull
```

Run the package complier.
``` shell
$ bundle install
```

After the compiler has run successfully, you can start up the middleman development server.
``` shell
$ bundle exec middleman
```

Point your browser to `http://localhost:4567`
At this point code should be live compliing from source and refreshing your browser window automattically as changes come in.

## Saving Changes

After you've made some chanegs, make sure to commit them to the GitHub repo.
``` shell
$ git commit -am "Leave a message about what you did..."
```
Pull down any changes that might have been loaded remotely in the meantime.
``` shell
$ git pul
```

And push your code up to GitHub.
``` shell
$ git push
```

## Publishing the Site

Once you have the site ready to puublish, you need to build and deploy it to GitHub pages.
``` shell
$ rake deploy
```

That's it! [Joe & Liz](http://polymatt.github.io/joeandliz)