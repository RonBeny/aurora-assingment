#!/bin/bash

# Get the Ngrok url Jq is required 
url=$(curl -s http://localhost:4040/api/tunnels | jq -r '.tunnels[].public_url | select(test("https.*"))')


# update the github webhook with the Ngrok url 
curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_SECRET}"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/${GITHUB_REPO_JOB_DSL}/hooks \
  -d "{\"name\":\"web\",\"active\":true,\"events\":[\"pull_request\"],\"config\":{\"url\":\"$url/github-webhook/\",\"content_type\":\"json\",\"insecure_ssl\":\"0\"}}"