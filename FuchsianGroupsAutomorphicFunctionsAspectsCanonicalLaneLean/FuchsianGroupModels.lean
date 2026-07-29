import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure FuchsianGroupModel where
  carrier : Type u
  discreteSubgroup : carrier → Prop
  hyperbolicPlaneAction : Prop
  cofiniteVolume : Prop
  finiteGenerators : Prop
  conclusion : discreteSubgroup hyperbolicPlaneAction ∧ cofiniteVolume ∧ finiteGenerators

structure AdmissibleFuchsianObject where
  model : FuchsianGroupModel
  constrained : Prop
  constrainedTerm : constrained

def FuchsianWitnessClosed (O : AdmissibleFuchsianObject) : Prop :=
  O.constrained

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
