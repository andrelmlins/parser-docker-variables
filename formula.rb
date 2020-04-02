class ParserDockerVariables < Formula
    desc "Parser docker variables to javascript"
    homepage "https://github.com/andrelmlins/parser-docker-variables"
  
  
    url "https://github.com/andrelmlins/parser-docker-variables/archive/master.zip", :using => :curl
  
    def install
      bin.install "parser-docker-variables.sh"
    end
  end