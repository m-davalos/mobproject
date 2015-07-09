require 'thor/group'

module MobProject
  module Generators
    class Project < Thor::Group
      include Thor::Actions

      argument :name, :type => :string, :desc => 'The name of the project'
      desc "Generates a project structure for testing with Cucumber"

      def self.source_root
        File.dirname(__FILE__) + "/project"
      end

      def create_top_directory
        empty_directory(name)
      end

      def copy_cucumber_yml
        template "cucumber.yml.tt", "#{name}/cucumber.yml"
      end

      def copy_gemfile
        template "Gemfile.tt", "#{name}/Gemfile"
      end

      def copy_rakefile
        copy_file "Rakefile.tt", "#{name}/Rakefile"
      end

      def create_cucumber_directories
        empty_directory("#{name}/features")
        empty_directory("#{name}/features/support")
        empty_directory("#{name}/features/support/mobile")
        empty_directory("#{name}/features/support/pages")
        empty_directory("#{name}/features/support/pages/common")
        empty_directory("#{name}/features/step_definitions")
        empty_directory("#{name}/features/support/mobile/appium")
        empty_directory("#{name}/features/support/mobile/os")
        empty_directory("#{name}/features/support/mobile/platform")
        empty_directory("#{name}/features/support/mobile/platform/android")
        empty_directory("#{name}/features/support/mobile/platform/android/inventory")
        empty_directory("#{name}/features/support/mobile/platform/ios")
        empty_directory("#{name}/features/support/mobile/platform/ios/inventory")
      end

      def copy_env
        template "env.rb.tt", "#{name}/features/support/env.rb"
      end

      def copy_hooks
        template "hooks.rb.tt", "#{name}/features/support/hooks.rb"
      end

      def copy_global_settings
        template "global_settings.rb.tt", "#{name}/features/support/global_settings.rb"
      end

      def copy_utilities
        template "utilities.rb.tt", "#{name}/features/support/utilities.rb"
      end

      def copy_step_definitions
        template "step_definitions.rb.tt", "#{name}/features/step_definitions/step_definitions.rb"
      end

      def copy_test_feature
        template "test_feature.feature.tt", "#{name}/features/test_feature.feature"
      end

      def copy_platforms
        template "platforms.rb.tt", "#{name}/features/support/mobile/platform/platforms.rb"
      end

      def copy_inventory
        template 'android_devices.yml.tt', "#{name}/features/support/mobile/platform/android/inventory/devices.yml"
        template 'android_emulators.yml.tt', "#{name}/features/support/mobile/platform/android/inventory/emulators.yml"
        template 'android_sauce.yml.tt', "#{name}/features/support/mobile/platform/android/inventory/sauce.yml"
        template 'ios_devices.yml.tt', "#{name}/features/support/mobile/platform/ios/inventory/devices.yml"
        template 'ios_simulators.yml.tt', "#{name}/features/support/mobile/platform/ios/inventory/simulators.yml"
        template 'ios_sauce.yml.tt', "#{name}/features/support/mobile/platform/ios/inventory/sauce.yml"
      end
    end
  end
end