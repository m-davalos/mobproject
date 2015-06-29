require 'thor/group'

module MobProject
  module Generators
    class Project < Thor::Group
      include Thor::Actions

      argument :name, :type => :string, :desc => 'The name of the project'
      # argument :name, :type => :string, :desc => 'The name of the project'
      # argument :pageobject_driver, :type => :string, :desc => 'Driver to use with PageObject'
      # argument :with_lib, :type => :string, :desc => 'Place all shared objects in the lib directory'
      # argument :with_gametel, :type => :string, :desc => 'Add support for the gametel gem'
      # argument :with_mohawk, :type => :string, :desc => 'Add support for the mohawk gem'
      desc "Generates a project structure for testing with Cucumber"

      def self.source_root
        File.dirname(__FILE__) + "/project"
      end

      # def create_top_directory
      #   empty_directory(name)
      # end
      #
      # def copy_cucumber_yml
      #   template "cucumber.yml.tt", "#{name}/cucumber.yml"
      # end

      def copy_gemfile
        template "Gemfile.tt", "#{name}/Gemfile"
      end

      # def copy_rakefile
      #   copy_file "Rakefile", "#{name}/Rakefile"
      # end

      def create_cucumber_directories
        empty_directory("#{name}/features")
        empty_directory("#{name}/features/support")
        empty_directory("#{name}/features/step_definitions")
      end

      def copy_env
        template "env.rb.tt", "#{name}/features/support/env.rb"
      end

      def copy_hooks
        template "hooks.rb.tt", "#{name}/features/support/hooks.rb"
      end
      #
      # def create_lib_directory
      #   empty_directory("#{name}/lib") if gen_lib
      # end
      #
      # def create_pages_directory
      #   if gen_lib
      #     empty_directory("#{name}/lib/pages") unless no_driver_selected
      #     empty_directory("#{name}/lib/screens") if with_gametel == 'true' or with_mohawk == 'true'
      #   else
      #     empty_directory("#{name}/features/support/pages") unless no_driver_selected
      #     empty_directory("#{name}/features/support/screens") if with_gametel == 'true' or with_mohawk == 'true'
      #   end
      # end

      # private
      #
      # def no_driver_selected
      #   pageobject_driver.downcase == 'none'
      # end
      #
      # def gen_lib
      #   with_lib == 'true'
      # end
    end
  end
end