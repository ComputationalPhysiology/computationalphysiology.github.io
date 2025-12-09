# Contributing


## Step 1: Cloning the repository
If you are part of the Computational Physiology organization on GitHub, you can directly clone the repository using SSH.
- If you do not have a GitHub account, you can create one for free at [GitHub](https://github.com/signup)
- If you are not part of the Computational Physiology organization you can either request access to the organization by contacting Henrik Finsberg or you can fork the repository to your own GitHub account and clone

If you have trouble with cloning the repository using SSH, please checkout the GitHub documentation on [connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

You can clone the repository using the command
```bash
git clone git@github.com:ComputationalPhysiology/computationalphysiology.github.io.git
```
(Please do not download the repository as a zip-file, and upload files through the GitHub web-interface😊)

## Step 2: Make sure you can build the webpage locally

After cloning the repository, navigate to the root of the repository and make sure that you can build the webpage locally. This is done using `myst` which is a tool for building static webpages from markdown files. First create a python virtual environment and install the dependencies using

```bash
python3 -m venv venv
. ./venv/bin/activate
python3 -m pip install -r requirements.txt
```

Now you can type
```bash
myst start
```
to build the webpage locally. This will also start a local web server that you can use to inspect the webpage (usually the site will be available at `http://localhost:3000`). You can just keep the terminal with `myst start` running while you are making changes to the repository, and the webpage will automatically update when you save changes to the files.


## Step 3: Create a branch

If you have `myst` running in the terminal, then open a new terminal window, navigate to the root of the repository and create a new branch for your changes. You can create a new branch using the command

```bash
git checkout -b name_of_author/describe_feature
```

## Step 4: Make your changes

Make the changes you want to the repository. You can add new markdown files in the `site/` folder, and you can edit existing files. Make sure to update the Table of Contents in `myst.yml` if you are adding new pages.

## Step 5: Install the pre-commit hooks

Before you commit your changes, it is recommended to install the pre-commit hooks to make sure that your code is following the style guide of the repository. You can install the pre-commit hooks by first install `pre-commit`

```bash
python3 -m pip install pre-commit
```
and then install the pre-commit hooks using the command
```bash
pre-commit install
```
at the root of the repository. This will install all the hooks listed in the file called `.pre-commit-config.yaml` in the root of the repository.

## Step 6: Commit your changes
When you are done with your changes, you can commit them using git. First, add the changed files using

```bash
git add path/to/changed_file1 path/to/changed_file2
```

Then, commit the changes using

```bash
git commit -m "Describe the changes you have made"
```

Now, the pre-commit hooks will run automatically when you make the commit. If everything is fine, the commit will be made. If there are any issues with the style of your code, the pre-commit hooks will try to fix them automatically, so if the pre-commit hooks fail, just do a `git add` again for the changed files and then redo the `git commit`. If the pre-commit hooks are not able to fix all issues automatically, they will print out what issues are remaining, and you need to fix them manually.

## Step 7: Push your changes and make a pull request

Now you are ready to push your changes to GitHub, but before doing that it is a good idea to check the webpage locally again to make sure that everything looks fine and that all links are working. You can do this by executing

```bash
myst build --html --strict --check-links
```

To push your changes, use the command
```bash
git push origin name_of_author/describe_feature
```

Now navigate to the GitHub repository in your web browser, and you should see a button to create a pull request for your branch. Click on that button and fill in the necessary information about the changes you have made. Once you have created the pull request, you can request a review from one of the maintainers of the repository. Note that you can still make changes and push them to your branch, and the pull request will be updated automatically.

## General Resources

Below you find some general guidelines for contributing to the repository.

When contributing to this repository, please first [create an issue](https://github.com/computationalphysiology/computationalphysiology.github.io/issues/new/choose) containing information about the missing feature or the bug that you would like to fix. Here you can discuss the change you want to make with the maintainers of the repository.

Please note we have a code of conduct, please follow it in all your interactions with the project.

## New contributor guide

To get an overview of the project, read the [documentation](https://computationalphysiology.github.io). Here are some resources to help you get started with open source contributions:

- [Finding ways to contribute to open source on GitHub](https://docs.github.com/en/get-started/exploring-projects-on-github/finding-ways-to-contribute-to-open-source-on-github)
- [Set up Git](https://docs.github.com/en/get-started/quickstart/set-up-git)
- [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)
- [Collaborating with pull requests](https://docs.github.com/en/github/collaborating-with-pull-requests)

## Pull Request Process


### Pull Request

- When you're finished with the changes, create a pull request, also known as a PR. It is also OK to create a [draft pull request](https://github.blog/2019-02-14-introducing-draft-pull-requests/) from the very beginning. Once you are done you can click on the ["Ready for review"] button. You can also [request a review](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/requesting-a-pull-request-review) from one of the maintainers.
- Don't forget to [link PR to the issue that you opened ](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue).
- Enable the checkbox to [allow maintainer edits](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/allowing-changes-to-a-pull-request-branch-created-from-a-fork) so the branch can be updated for a merge.
Once you submit your PR, a team member will review your proposal. We may ask questions or request for additional information.
- We may ask for changes to be made before a PR can be merged, either using [suggested changes](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request) or pull request comments. You can apply suggested changes directly through the UI. You can make any other changes in your fork, then commit them to your branch.
- As you update your PR and apply changes, mark each conversation as [resolved](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#resolving-conversations).
- If you run into any merge issues, checkout this [git tutorial](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts) to help you resolve merge conflicts and other issues.
- Please make sure that all tests are passing, github pages renders nicely, and code coverage are are not lower than before your contribution. You see the different github action workflows by clicking the "Action" tab in the GitHub repository.


### Enforced style guide using pre-commit hooks

We want to have a consistent style on all the contributions to the repository. The way we enforce this is through pre-commit hooks and contributors are encouraged to install the pre-commit hooks locally when developing. You can install the pre commit hooks by first install `pre-commit`
```
python3 -m pip install pre-commit
```
and then install the pre-commit hooks using the command
```
pre-commit install
```
at the root of the repository. This will install all the hooks listed in the file called `.pre-commit-config.yaml` in the root of the repository.

Every time you make a commit to the repository a set of tests will run to make sure that the changes you made are following the style guide. Usually, the hooks will autoformat your code so that you only need to do a `git add` again and then redo the `git commit`.

Note that when you make a push to the repo, the pre-commit hooks will be run on all the files in the repository. You can also run the pre-commit hooks on all the files using the command
```
pre-commit run --all
```
To learn more about pre-commit you can check out https://pre-commit.com


## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

### Scope

This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community. Examples of
representing a project or community include using an official project e-mail
address, posting via an official social media account, or acting as an appointed
representative at an online or offline event. Representation of a project may be
further defined and clarified by project maintainers.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project team at henriknf@simula.no. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project team is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at [http://contributor-covenant.org/version/1/4][version]

[homepage]: http://contributor-covenant.org
[version]: http://contributor-covenant.org/version/1/4/
