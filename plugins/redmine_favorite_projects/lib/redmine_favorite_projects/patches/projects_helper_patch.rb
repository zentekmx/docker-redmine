module RedmineFavoriteProjects
  module Patches

    module ProjectsHelperPatch

      def self.included(base) # :nodoc:
        base.send(:include, InstanceMethods)
      end

      module InstanceMethods
        include ::FavoriteProjectsHelper
      end

    end
  end
end

unless ProjectsHelper.included_modules.include?(RedmineFavoriteProjects::Patches::ProjectsHelperPatch)
  ProjectsHelper.send(:include, RedmineFavoriteProjects::Patches::ProjectsHelperPatch)
end