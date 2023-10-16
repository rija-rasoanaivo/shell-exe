nombre=$1
symbole=$2
nombre=$3

if [ $2 = + ]
then
sum=$(expr $1 $2 $3)

elif [ $2 = - ]
then
sum=$(expr $1 $2 $3)

elif [ $2 = / ]
then
sum=$(expr $1 $2 $3)

elif [ $2 = * ]
then
sum=$(expr $1 \* $3)
fi
echo "$sum"
