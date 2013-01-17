
def files_by_type(ext)
  `git log --name-only -1 --format=format:|grep '.#{ext}'`.lines.map(&:strip).reject do |f|
    # filter deleted filed
    !File.exists?(f)
  end
end

def check_result(ext, output)
  if $?.to_i != 0
    puts "Looks like you intruduced syntax errors in #{ext} files"
    puts "======================================================="
    puts output
    exit $?
  end
end

def lint_files(ext, command)
  files_by_type(ext).each do |f|
    check_result(ext, `#{[command, f].join(' ')}`)
  end
end

def lint_files_combined(ext, command)
  files = files_by_type(ext)

  check_result(ext, `#{[command, files].flatten.join(' ')}`) if files.any?
end


lint_files('rb', 'ruby -c')
lint_files('coffee', 'coffee -l')
lint_files_combined('js', 'node ~/.githooks/help/jslint.js')

