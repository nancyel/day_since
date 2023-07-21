# Day Since

A simple script that counts the number of days between your Day 1 and today -- as a gentle reminder :)


### Try out

- Add `hello()` function to your zprofile and source it.

```
❯ source ~/zprofile
```

- To automatically reload the zprofile file every time you start a new terminal session, you can modify your shell's configuration file (e.g., .zshrc) to source zprofile.
- Open your .zshrc file for editing. Then add the following line at the end of the .zshrc file to source zprofile:

```
source $HOME/zprofile
```

- Open a new terminal and initialize the settings, if it's your first time running the command.

```
# initialize files                                                                                                                                         .3i
❯ hello init                                                                                                                                                   .3i
Initializing...

❯ hello                                                                                                                                                        .3i
Enter your company name:
MyCompany
Enter a date of your Day 1 at MyCompany, in the format 'YYYY-MM-DD':
2022-02-14
👟👟 You have been running with MyCompany for 522 days. Keep going! 👟👟

❯ hello                                                                                                                                                        .3i
👟👟 You have been running with 3i for 522 days. Keep going! 👟👟
```
