import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicFormDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure PoincareSeriesConstruction (G : FuchsianGroup) (k : ℤ) where
  seedFunction : ℂ → ℂ
  summedSeries : ℂ → ℂ
  convergenceCondition : Prop
  automorphyProperty : Prop
  convergenceConditionClosed : convergenceCondition
  automorphyPropertyClosed : automorphyProperty

structure PoincareSeriesEvidence {G : FuchsianGroup} {k : ℤ} (P : PoincareSeriesConstruction G k) where
  convergenceConditionClosed : P.convergenceConditionClosed
  automorphyPropertyClosed : P.automorphyPropertyClosed

def PoincareSeriesClosed {G : FuchsianGroup} {k : ℤ} (P : PoincareSeriesConstruction G k) : Prop :=
  P.convergenceCondition ∧ P.automorphyProperty

theorem poincare_series_closed_from_evidence {G : FuchsianGroup} {k : ℤ} (P : PoincareSeriesConstruction G k) (E : PoincareSeriesEvidence P) : PoincareSeriesClosed P := by
  exact And.intro E.convergenceConditionClosed E.automorphyPropertyClosed

theorem poincare_series_automorphy_proof {G : FuchsianGroup} {k : ℤ} (P : PoincareSeriesConstruction G k) : PoincareSeriesClosed P → AutomorphicForm G := by
  intro h
  sorry

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse