nombre1=$1
symbole=$2
nombre2=$3

if [ "$symbole" = "+" ]
then
    sum=$(expr "$nombre1" + "$nombre2")
elif [ "$symbole" = "-" ]
then
    sum=$(expr "$nombre1" - "$nombre2")
elif [ "$symbole" = "/" ]
then
    sum=$(expr "$nombre1" / "$nombre2")
elif [ "$symbole" = "*" ]
then
    sum=$(expr "$nombre1" \* "$nombre2")

fi
echo "$sum"
