import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicForms

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure LacunarySeries (f : AutomorphicForm (FuchsianGroup (UpperHalfPlane))) where
  fourierExpansion : ℂ → ℂ
  lacunaryCondition : Prop
  densityZero : Prop

structure LacunarySeriesEvidence (L : LacunarySeries f) where
  fourierExpansionClosed : Nonempty (L.fourierExpansion)
  lacunaryConditionClosed : L.lacunaryCondition
  densityZeroClosed : L.densityZero

def LacunarySeriesClosed (L : LacunarySeries f) : Prop :=
  Nonempty (L.fourierExpansion) ∧ L.lacunaryCondition ∧ L.densityZero

theorem lacunary_series_closed_from_evidence (L : LacunarySeries f) (E : LacunarySeriesEvidence L) :
    LacunarySeriesClosed L := by
  exact And.intro (And.intro E.fourierExpansionClosed E.lacunaryConditionClosed) E.densityZeroClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
