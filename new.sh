NEW_NEXUS_URL="https://your.new.nexus.url/repository/npm/"
# Update url in .npmrc

if grep -q "registry=" .npmrc; then

  #  registry line exists, replace it

  sed -i "s|registry=.*|registry=$NEW_NEXUS_URL|" .npmrc

  echo "Updated Nexus URL in .npmrc."

else

  #  registry line exists, add one

  echo "registry=$NEW_NEXUS_URL" >> .npmrc

  echo "Added Nexus URL to .npmrc."

fi
if grep -q "registry=" package.json; then

  #  registry line exists, replace it

  sed -i "s|registry=.*|registry=$NEW_NEXUS_URL|" package.json

  echo "Updated Nexus URL in package.json"

else

  #  registry line exists, add one

  echo "registry=$NEW_NEXUS_URL" >> package.json

  echo "Added Nexus URL to package.json"

fi
