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

def setPair(pair) #vector[2]
  
end

# takes a set of integers and
# returns a relation of division. 
def dividesRelation(set)
  rDiv = Relation.new(set, "division")
  for i in set
    for j in set
      if i%j==0
        rDiv.relateElements(j, i)
        # puts "[#{j}, #{i}]"
      end
    end
  end
  rDiv
end
rDiv = dividesRelation( [1, 2, 3, 4] )
p rDiv

# create the dual of the relation
def dualRelation(relation)
  dualRel = Relation.new(relation.set, "dual-"+relation.definition)
  relation.r.each do |k, v|
    v.each do |val|
      dualRel.relateElements(val, k)
    end
  end
  dualRel
  # p dualRel
end
dualRel = dualRelation( rDiv )
p dualRel

# def IsReflexive(relation)
#   is_reflexive = true
#   u; # index into Dom(R)
#   for u in DomainRelation(R) do
#     is_reflexive := is_reflexive and member([u,u], R);
#   od;
#   RETURN(is_reflexive);
# end