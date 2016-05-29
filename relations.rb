require './Relation.rb'

# takes a set of integers and
# returns a Relation of division. 
def dividesRelation(set)
  rDiv = Relation.new(set, "division")
  for i in set
    for j in set
      if i%j==0
        rDiv.relateElements(j, i)
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
end
dualRel = dualRelation( rDiv )
p dualRel

# checks if each element is related to himself
p "Reflexive? #{rDiv.isReflexive?}"
p "Symmetric? #{rDiv.isSymmetric?}"

