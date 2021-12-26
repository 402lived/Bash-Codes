start=$(date +%s.%N)
echo "Bubble Sort"
arr=(23 74 9 39 56)
  
echo "Array in original order"
echo ${arr[*]}
  
# Performing Bubble sort
for ((i = 0; i<n; i++))
do
      
    for((j = 0; j<n-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}

duration=$(echo "$(date +%s.%N) - $start" | bc)
execution_time=`printf "%.2f seconds" $duration`

echo "Script Execution Time: $execution_time"
