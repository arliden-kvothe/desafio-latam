a = [1,1,3,4,4,9,1,2,5,9]

b=(a.group_by { |n| n }).map {|k,v| [k,v.size]}.to_h

#c=b.map {|k,v| [k,v.size]}

#d=c.to_h #d=Hash[c]
#map, group_by (groupby)

print a
print "\n"
print b