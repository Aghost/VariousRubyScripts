def Hanoi(n, beg, aux, ending)

	$counter += 1

	if n == 1
#		puts beg + " --> " + ending
	else
		Hanoi(n-1, beg, ending, aux)
		Hanoi(1, beg, aux, ending)
		Hanoi(n-1, aux, beg, ending)
	end
end

$counter = 0
disks = 27
Hanoi(disks, 'a', 'b', 'c')
puts "disks = " + disks.to_s
puts "counter = " + $counter.to_s

