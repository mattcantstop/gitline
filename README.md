## What Needs My Attention?

A simple script that goes and fetches issues to which you are assigned
or in which you have mentioned. As these are the two things (for me)
that need immediate attention I thought it would be helpful to have them
as a command line option.  

This script can search for either you (with your username) or for
another GitHub user. The username value can be any valid username.  

## Motivations For Using This Repo

Most days I start my day on the command line and not in a GUI GitHub
tool nor on GitHub.com. This script lets me search for things that need
my attention where I usually am instead of having to go to do a
different tool to check things. 

#### Getting Started:

There are two different endpoints that you can make a request to. One
where issues are assigned to you (filtered by bug type) or where you are
mentioned. These are the ways to call either:

**Where You Are Mentioned**  
`sh execute.sh mentioned username` 

**Where You Are Assigned (based on label type):**  
`sh execute.sh assigned username label_name`

*Note: The "Assigned" type takes a third parameted (label_name) whereas
the "Mentioned" type does not*

This will dump out JSON into the terminal. Check [this
link](https://developer.github.com/v3/issues/) for sample output of an
issue. Here you can quickly scan
through issues to see where you should spend your time first.

For instance, if I wanted to get a detailed view of what issues were
assigned to me with the label of bug I could add this line to my `.bash_profile`:  

`alias=assigned_bugs'sh ~/path/to/file/execute.sh assigned mattcantstop bug`

By typing "assigned_bugs" after you have restarted your terminal or sourced your bash_profile
you would then received back in your terminal all issues that you are
assigned to with a label of bug.
