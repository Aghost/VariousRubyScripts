def loading_bar(loadingName)
    print "\n\e[32mLoading #{loadingName}\e[31m\t [49.4 MB]\e[0m\nDownloading #{loadingName.split.last + "'s"}...\n"; sleep(0.4)
    print "Reading package lists"; 3.times { print "."; sleep(1.2) }; puts " Done"; sleep(0.5);
    puts "Building dependency tree"; sleep(2.2)
    print "Reading state information"; 3.times { print "."; sleep(1.2) }; puts " Done"
    puts "The following NEW packages will be installed:\n  Windows xp (extra professional)"; sleep(2)
    puts "After this operation, 53,435,235 kB of additional disk space will be used"; sleep(2.5)
    0.step(100, 1) { |i| print " #{i}%"; printf("\rDownloading Windows [%-20s]", "=" * (i/5)); sleep(0.05) }
    puts
end

if ARGV[0]
  loading_bar ARGV[0]
else
  puts 'please provide file to load...'
end
