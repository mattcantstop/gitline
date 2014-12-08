DOMAIN="https://api.github.com"

# Assigning Arguments
whichMethod=$1
user=$2
label_state=$3

function fetchIssuesWhereIAmAssignedWithLabel {
  response=$(curl --silent ${DOMAIN}/search/issues?q=+label:${label_state}+assignee:${user}+state:open&sort=created&order=asc)
  echo "$response"
}

function fetchIssuesWhereIAmMentioned {
  response=$(curl --silent ${DOMAIN}/search/issues?q=${user})
  echo "$response"
}

# Determining Which Method To Call Based On Command Line Arguments
if [ $whichMethod == "assigned"  ]
  then fetchIssuesWhereIAmAssignedWithLabel
elif [ $whichMethod == "mentioned" ]
  then fetchIssuesWhereIAmMentioned
else
  echo invalid method name
fi
