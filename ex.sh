#set -x

work=./getLatency
buffer_size=1
stride=8

for i in `seq 1 21`; do
    taskset -ac 2 $work -b $buffer_size -s $stride
    buffer_size=$(($buffer_size*2))
done
