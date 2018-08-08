# A sample commands.sh file
# Add ample notes for easy searching..

# You can take notes in Ruby too :-) !!
irb
def wish
  (rand(2) == 0) ? puts("I wish there was syntax highlighting.") : puts("I wish there was auto indentaion.")
end

10.times do
  wish
end

# Check if internet is working
ping -c 5 -s 1 198.41.0.4


## Important Queries
  # Find all users signed up in usw
  mysql -h 127.0.0.1 -u root mysql -e "select Host from user;"

  # Find all users signed up in euw
  mysql -h localhost -u root mysql -e "select Host from user;"
