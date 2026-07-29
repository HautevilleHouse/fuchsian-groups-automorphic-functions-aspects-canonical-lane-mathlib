import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure AutomorphicForm (G : FuchsianGroup) where
  weight : ℤ
  holomorphicFunction : ℂ → ℂ
  automorphyCondition : Prop
  holomorphicOnUpperHalfPlane : Prop
  growthCondition : Prop

def automorphyCondition (G : FuchsianGroup) (f : ℂ → ℂ) (k : ℤ) : Prop :=
  ∀ γ : G, ∀ z : ℂ, f ((γ : ℂ → ℂ) z) = ((γ : ℂ → ℂ) z).im ^ k * f z / z.im ^ k

structure AutomorphicFormEvidence {G : FuchsianGroup} (f : AutomorphicForm G) where
  automorphyConditionClosed : f.automorphyCondition
  holomorphicOnUpperHalfPlaneClosed : f.holomorphicOnUpperHalfPlane
  growthConditionClosed : f.growthCondition

def AutomorphicFormClosed {G : FuchsianGroup} (f : AutomorphicForm G) : Prop :=
  f.automorphyCondition ∧ f.holomorphicOnUpperHalfPlane ∧ f.growthCondition

theorem automorphic_form_closed_from_evidence {G : FuchsianGroup} (f : AutomorphicForm G) (E : AutomorphicFormEvidence f) : AutomorphicFormClosed f := by
  exact And.intro E.automorphyConditionClosed (And.intro E.holomorphicOnUpperHalfPlaneClosed E.growthConditionClosed)

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse