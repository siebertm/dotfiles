#!/usr/bin/env ruby
__END__
if `grep -rls "require 'ruby-debug'; debugger" *` != ""
  puts "You twit, you've left a debugger in!"
  exit(1)
end

