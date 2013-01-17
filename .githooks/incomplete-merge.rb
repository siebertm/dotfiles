#!/usr/bin/env ruby
__END__
if `egrep -rls "^<<<<<<< |^>>>>>>> |^=======$" * | xargs file | egrep 'script|text'` != ""
  puts "Dang, looks like you screwed the merge!"
  puts `egrep -rls "^<<<<<<< |^>>>>>>> |^=======$" * | xargs file | egrep 'script|text' | awk -F: '{print $1}'`
  exit(1)
end

