echo "Hello $1"
echo "Age : $2"
echo "City: $3"
echo "Total Arguments: $#"
echo "All arguments: $@"
for arg in "$*"
do echo "$arg"
done

