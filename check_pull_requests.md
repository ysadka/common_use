##Checking out Pull Requests locally

Let's say someone's made a pull request from their fork into your repository. Here's how you can check out her changes on your machine and verify that everything is a-okay.

###Modifying your git configuration

Locate the section for your GitHub remote in your ```.git/config``` file. It looks like this:

```
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
  url = git@github.com:<USERNAME>/<REPO_NAME>.git
```
Now, add the line ```fetch = +refs/pull/*/head:refs/remotes/origin/pr/* ``` to this section.

```
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
  url = git@github.com:<USERNAME>/<REPO_NAME>.git
  fetch = +refs/pull/*/head:refs/remotes/origin/pr/*
```

Now, fetch all the pull requests:

```sh
$ git fetch origin
# From github.com:joyent/node
# * [new ref]         refs/pull/1000/head -> origin/pr/1000
# * [new ref]         refs/pull/1002/head -> origin/pr/1002
# * [new ref]         refs/pull/1004/head -> origin/pr/1004
# * [new ref]         refs/pull/1009/head -> origin/pr/1009
```
###Checking out a particular pull request

You can check out a pull request in your repository with the special ```pr/<:id>``` syntax, where ```<:id>``` is the number of the pull request you're interested in. For example, to check out pull request #999:

```sh
$ git checkout pr/999
# Branch pr/999 set up to track remote branch pr/999 from origin.
# Switched to a new branch 'pr/999'
```
