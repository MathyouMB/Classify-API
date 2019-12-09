module Types
  class MutationType < Types::BaseObject

    field :add_course_to_user, mutation: Mutations::AddCourseToUser

    field :add_school_to_user, mutation: Mutations::AddSchoolToUser

    field :add_user_to_blacklist, mutation: Mutations::AddUserToBlacklist

    field :add_user_to_matchlist, mutation: Mutations::AddUserToMatchlist

    field :remove_user_from_matchlist, mutation: Mutations::RemoveUserFromMatchlist

  end
end
