t0 = Time.now

%x[imagesnap snap_big.jpg]
%x[convert -quality 80 snap_big.jpg snap_#{Time.now.to_i}.jpg]
%x[rm snap_big.jpg]

%x[git add .]
%x[git commit -m 'new snap']

puts %x[git status]