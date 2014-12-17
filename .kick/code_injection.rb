recipe :code_injection do

  process do |potential_files|
    files = potential_files.take_and_map do |file|
        if file =~ %r{^.*\.(m|xib|strings|storyboard)$}
          execute("/usr/bin/python #{File.expand_path("~/.dyci/scripts/dyci-recompile.py")} #{File.expand_path(file)}")
          puts "DYCI: Recompiled #{file}"
          file
        end
      end
  end

  process do |remaining_files|
    remaining_files.take_and_map do |file|
        puts "DYCI: Ignored #{file}"
      file
    end
  end

  startup do
    log "DYCI: Kicker watching for file changes to recompile!"
  end

end
