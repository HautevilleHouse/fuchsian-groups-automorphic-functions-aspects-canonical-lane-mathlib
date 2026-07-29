import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure AutomorphicFormPackage {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H} where
  weight : ℤ
  formType : Type u
  holomorphic : Prop
  automorphyCondition : Prop
  growthCondition : Prop

structure AutomorphicFormEvidence {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    (A : AutomorphicFormPackage F) where
  holomorphicClosed : A.holomorphic
  automorphyConditionClosed : A.automorphyCondition
  growthConditionClosed : A.growthCondition

def AutomorphicFormClosed {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    (A : AutomorphicFormPackage F) : Prop :=
  A.holomorphic ∧ A.automorphyCondition ∧ A.growthCondition

theorem automorphic_form_closed_from_evidence {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    (A : AutomorphicFormPackage F) (E : AutomorphicFormEvidence A) : AutomorphicFormClosed A := by
  exact And.intro E.holomorphicClosed (And.intro E.automorphyConditionClosed E.growthConditionClosed)

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse