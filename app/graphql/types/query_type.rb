module Types
  class QueryType < Types::BaseObject

    field :users, resolver: Queries::Users
    
    field :user, resolver: Queries::User

    field :matchlist, resolver: Queries::Matchlist

    field :login, resolver: Queries::Login

    field :schools, resolver: Queries::Schools
    
    field :school, resolver: Queries::School

    field :courses, resolver: Queries::Courses
    
    field :course, resolver: Queries::Course

    field :find_matches, resolver: Queries::FindMatches

    field :find_common_matches, resolver: Queries::FindCommonMatches

  end
end
