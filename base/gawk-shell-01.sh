#! /usr/bin/zsh

# BEGIN{FS=","} {print $n}
# BEGIN{print "The starting value is",n; FS=","}
# {print $n}

BEGIN{
   var["a"] = 1 
   var["g"] = 2 
   var["m"] = 3 
   var["u"] = 4
   var["q"] = 5
   for (test in var) 
   {
       print "Index:",test,"-- Value:",var[test]
   }
   delete var["q"]
   print "------"
   for (test in var) 
   {
       print "Index:",test,"-- Value:",var[test]
   }
}