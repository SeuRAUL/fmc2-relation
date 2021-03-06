class Relation
  def initialize(set, definition)
    @set = set
    @definition = definition
    @r = {}
  end
  
  attr_reader :r, :set, :definition
  attr_accessor :r
  
  def relateElements(e1, e2)
    @r[e1] = [] unless @r.has_key?(e1)
    @r[e1] << e2
  end
  
  ## Properties
  
  # checks if each element is related to himself
  def isReflexive?
    self.r.each do |k, v|
      return false unless v.include? k
    end
    true
  end
  
  def isSymmetric?
    self.r.each do |k, v|
      v.each do |vv|
        return false unless self.r.has_key?(vv) and self.r[vv].include? k
      end
    end
    true
  end
  
  def isAntiSymmetric?
    self.r.each do |k, v|
      v.each do |vv|
        return false unless self.r.has_key?(vv) and self.r[vv].include? k and vv == k
      end
    end
    true
  end
end