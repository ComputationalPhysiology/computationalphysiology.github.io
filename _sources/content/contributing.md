# Contributing to the GitHub space

If you wish to contribute to this Github space please check
out the guidlines below.

## I have an existing repository that I want to add to this GitHub space

If you allready host your repository in another repository and want
to add this repository to this GitHub space you can do as follows:

1.  Create a new repository in the Computational Physiology
    profile. You can give this that same name as your old repository or
    a different name. Once created, you will get a url to the newly
    created repository, e.g
    `https://github.com/ComputationalPhysiology/new_repo.git`.

2.  Now you can add this remote url to your existing repository.
    On your local machine, go to the folder where you hace your
    repository and type

        	```
        	git remote add comphy https://github.com/ComputationalPhysiology/new_repo.git
        	```
        	Remember to change the url to the correct one. You can also use a
        	different name than comphy if you prefer that.

3.  To push your repository to this newly created url do

    ```
    git push -u comphy master
    ```

Note that you can `pull` and `fetch` with the same commands.

# I want to start a new repository

Just create a new repository in Computational Physiology
profile and follow the instructions on GitHub (click on the green
button called `New` in the upper right corner.

## Documentation

Documentation is important because this is the only source of
information (except the code itself), that the user has. You should
write enough documentation so that any person could install and run
your code.

Your documentation should contain at least the following

- Installation instructions

      	- How to install the code

      	- Installation requirementes

      	- Put this in your README file

- Documentation of code

      	- In your code you should put docstrings that explains what the
      different functions are doing. You don't need to do this on
      every functions, but the most core functions / objects should
      have some docstrings.

      	- Put this inside the code


- Demos

      	- You don't need to to have demo's but it is recommendend that you
      have some kind of demonstration of how to run your code.

      	- You can either put this in the README file or in a seprate
      file.


- License

      	- You should have a licenense in your repository so that other
      people that use your code know what they are allowed to
      do. Check out [choosealicense.com](https://choosealicense.com)
      for more info about which license to choose.

      	- Put you license in a separate file called LICENCE

### Generating documentation

There are several way of writing dociumentation. The most imporatant
this is that you write some documentation, not how you do it.
The easiest thing to do is probably to write everything in a README
file, and that is fine.

If you want a little more structe and style on your docmentation you
can have a look at [Sphinx](http://www.sphinx-doc.org/en/master/)
which is a tools for building documentation for code written in
different programming languages (not only python). Check out my
[sphinx-tutorial](https://github.com/finsberg/sphinx-tutorial) for a
simple introduction to sphinx. Otherwise there is a lot of good online
tutorials. The nice thing about sphinx is that you can use it to
generate documentation in many different formats (html, pdf, latex,
man pages, etc.)

There are also many other static site generators such as
[Hugo](https://gohugo.io) and
[Pelican](http://docs.getpelican.com/en/stable/) which can be used to
write documentation. Note that this site is written using Hugo.

#### Hosting documentation online

Once you have written your documentation you might want to put it
somewere that people can easily access it. Again, it is possible to
only make a README file, in case your repository will host your
documentation. However that are other ways of doing this

- [Read the docs](https://readthedocs.org)

  - "Read the docs" are probably the most popular alternative,
    because here you can make sure that everytime you push code
    to you repoisitory the documentaions is built and your site is
    updated.
  - Your site will then typically be called
    `you_project_name.readthedocs.io` or
    `readthedocs.io/projects/your_project_name`.

- [Githubpages](https://pages.github.com)
  - "Githupages" are probably the easiest way to deploy your
    documentation if your repository is hosted in
    [github](https://github.com).
  - Yor site will then be called
    `username.github.io/your_project_name`.
- [Aerobatic](https://www.aerobatic.com)
  - "Aerobatic" is yet another simple static stite generator
  - Your site will then be called `your_project.aerobaticapp.com`

For more alternatives to deploy your documentation, have a look at
[how to deploy your Hugo
site](https://gohugo.io/hosting-and-deployment/).
