require "dotenv_export/version"
require 'dotenv'
require 'shellwords'

module DotenvExport

  module_function

  def export(*paths)
    env = Dotenv.parse(*paths)
    env.each do |name, value|
      puts "export #{name}=#{Shellwords.shellescape(value)}"
    end
  end
end
