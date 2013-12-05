```sh
$ git remote -v
# View existing remotes
# origin  https://github.com/user/repo.git (fetch)
# origin  https://github.com/user/repo.git (push)

$ git remote set-url origin https://github.com/user/repo2git
# Change the 'origin' remote's URL

$ git remote -v
# Verify new remote URL
# origin  https://github.com/user/repo2.git (fetch)
# origin  https://github.com/user/repo2.git (push)

$ git remote set-url --push origin https://github.com/user/repo3.git
#change origin push remote
# origin  https://github.com/user/repo2.git (fetch)
# origin  https://github.com/user/repo3.git (push)
```
