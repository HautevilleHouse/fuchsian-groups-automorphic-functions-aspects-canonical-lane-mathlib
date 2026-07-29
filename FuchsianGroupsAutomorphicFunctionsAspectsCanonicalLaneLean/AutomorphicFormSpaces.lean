import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupModels

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure AutomorphicFormSpace {M : FuchsianGroupModel} where
  weight : ℤ
  holomorphicCondition : Prop
  automorphyCondition : Prop
  growthCondition : Prop
  formSatisfiesConstraints : holomorphicCondition ∧ automorphyCondition ∧ growthCondition

def AutomorphicSpaceClosed {M : FuchsianGroupModel} (S : AutomorphicFormSpace M) : Prop :=
  S.formSatisfiesConstraints

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
