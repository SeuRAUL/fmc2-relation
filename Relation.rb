class Relation
  def initialize(set, definition)
    @set = set
    @definition = definition
    @r = {}
  end
  
  attr_reader :r, :set, :definition
  
  def relateElements(e1, e2)
    @r[e1] = [] unless @r.has_key?(e1)
    @r[e1] << e2
  end
end