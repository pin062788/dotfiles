def read_git_modules f 
 File.open(f,'r') do |infile|
   while (line = infile.gets)
     name=line.split('=')[1].strip if line.include?('path')   
     url=line.split('=')[1].strip if line.include?('url')   
     system %{set -x;git rm --cached #{name};git submodule add #{url} #{name}} 
   end	   
 end	 
end


#`mv .gitmodules .gitmodules.backbackup`
read_git_modules '.gitmodules.backup'

