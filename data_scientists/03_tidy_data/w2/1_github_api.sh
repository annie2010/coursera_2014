echo '1. curl https://api.github.com/zen' 
curl https://api.github.com/zen

echo $'\n2.  get user jtleek'
curl https://api.github.com/users/jtleek

echo $'\n3.  get user jtleek'
curl -i https://api.github.com/users/jtleek 

echo $'\n4.  get user annie2010'
curl -i -u annie2010 https://api.github.com/users/ 

echo "Completed successfully" 
# https://developer.github.com/guides/getting-started/
