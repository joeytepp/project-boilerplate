# frozen_string_literal: true

class ProjectBoilerplateSchema < GraphQL::Schema
  $PRODUCTS ||= []
  mutation(Objects::MutationType)
  query(Objects::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
