
class Rm
  def self.main params
    #user passes the name of the file to be removed 
    remove_file = params[0]

    # does the file exist here? 
    if File.file?(remove_file)
      # since .file? only returns true for a file and not a dir
      FileUtils.rm(remove_file)
    else
      puts "rm: cannot remove \'#{remove_file}\': No such file or directory"
    end
  end


end
