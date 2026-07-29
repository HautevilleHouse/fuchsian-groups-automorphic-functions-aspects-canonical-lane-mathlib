import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure FuchsianGroup where
  group : Type u
  discreteSubgroup : Prop
  actsOnUpperHalfPlane : Prop
  existsFundamentalDomain : Prop

structure AutomorphicForm where
  fuchsianGroup : FuchsianGroup
  weight : Nat
  automorphyFactor : Prop
  holomorphicAtCusps : Prop
  meromorphicAtCusps : Prop
  automorphyFactorClosed : automorphyFactor
  holomorphicAtCuspsClosed : holomorphicAtCusps
  meromorphicAtCuspsClosed : meromorphicAtCusps

structure AutomorphicFormsEvidence (A : AutomorphicForm) where
  automorphyFactorClosed : A.automorphyFactor
  holomorphicAtCuspsClosed : A.holomorphicAtCusps
  meromorphicAtCuspsClosed : A.meromorphicAtCusps

def AutomorphicFormsClosed (A : AutomorphicForm) : Prop :=
  A.automorphyFactor ∧ A.holomorphicAtCusps ∧ A.meromorphicAtCusps

theorem automorphic_forms_closed_from_evidence (A : AutomorphicForm) (E : AutomorphicFormsEvidence A) : AutomorphicFormsClosed A := by
  exact And.intro E.automorphyFactorClosed (And.intro E.holomorphicAtCuspsClosed E.meromorphicAtCuspsClosed)

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse