#!/bin/bash
response=$(curl -s https://chat.openai.com)
if [[ $response == *"Sorry, you have been blocked"* ]]; then
  echo -e "\033[31mChatGPT: 当前 IP 不可用\033[0m"
else
  echo -e "\033[32mChatGPT: 当前 IP 可用\033[0m"
fi
