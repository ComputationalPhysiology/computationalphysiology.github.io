# Department of Computational Physiology @ Simula Research Laboratory
This page contains information about the Computational Physiology department at Simula Research Laboratory

The resources for generating <https://scientificcomputing.github.io/>.

# Contribute to the webpage

To contribute, please make a fork of the repository and clone it to your local system, then make a new branch with

```bash
git checkout -b name_of_author/describe_feature
```

Then add the relevant text.
Next ensure that the webpage builds, this can be done with

```bash
python3 -m venv venv
. ./venv/bin/activate
python3 -m pip install -r requirements.txt
myst start
```

Inspect the webpage locally by running
```bash
python3 -m http.server -d  _build/html 8000
```
and opening a browser at `http://localhost:8000`.


Before you push the changes, ensure that the text is properly formatted, run

```bash
pre-commit run --all
```

Then, make corrections and commit any changes before re-running pre-commit.

Push the branch to your fork, and then make a pull request through the github web-interface.
