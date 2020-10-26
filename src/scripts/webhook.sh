# install curl if needed
if ! command -v curl &> /dev/null
then
  # alpine
  if command -v apk &> /dev/null
  then
    apk add curl
  fi
  # debian
  if command -v apt-get &> /dev/null
  then
    apt-get install curl
  fi
fi

# send webhook
# PMBOT_TOKEN is defined by our backend
curl \
  -H "Content-Type: application/json" \
  -H "Pmbot-Token: $PMBOT_TOKEN" \
  --request POST \
  --data "{\"build_num\":$CIRCLE_BUILD_NUM,\"build_url\":\"$CIRCLE_BUILD_URL\"}" \
  "$PMBOT_URL/api/v1/repos/$PMBOT_REPO_ID/pipelines"
