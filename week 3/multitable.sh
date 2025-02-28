
#!/bin/bash
echo "Enter a number:"
read i
for((j=1;j<11;j++))
do
        echo " $j x $i = $((j*i))"
done

