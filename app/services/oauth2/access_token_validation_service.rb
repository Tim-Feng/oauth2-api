protected
def sufficent_scope?(token, scopes)
  if scopes.blank?
    # if no any scopes required, the scopes of token is sufficient.

    return true
  else
    # If there are scopes required, then check whether

    # the set of authorized scopes is a superset of the set of required scopes

    required_scopes = Set.new(scopes)
    authorized_scopes = Set.new(token.scopes)

    return authorized_scopes >= required_scopes
  end
end