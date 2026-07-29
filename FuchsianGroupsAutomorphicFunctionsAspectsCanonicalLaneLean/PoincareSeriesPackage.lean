import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure PoincareSeriesPackage {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    (A : AutomorphicFormPackage F) where
  weight : ℤ
  seriesDefined : Prop
  absoluteConvergence : Prop
  automorphyPreserved : Prop
  expansionFormula : Prop

structure PoincareSeriesEvidence {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    {A : AutomorphicFormPackage F} (P : PoincareSeriesPackage A) where
  seriesDefinedClosed : P.seriesDefined
  absoluteConvergenceClosed : P.absoluteConvergence
  automorphyPreservedClosed : P.automorphyPreserved
  expansionFormulaClosed : P.expansionFormula

def PoincareSeriesClosed {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    {A : AutomorphicFormPackage F} (P : PoincareSeriesPackage A) : Prop :=
  P.seriesDefined ∧ P.absoluteConvergence ∧ P.automorphyPreserved ∧ P.expansionFormula

theorem poincare_series_closed_from_evidence {H : UpperHalfPlaneModel} {F : FuchsianGroupPackage H}
    {A : AutomorphicFormPackage F} (P : PoincareSeriesPackage A)
    (E : PoincareSeriesEvidence P) : PoincareSeriesClosed P := by
  exact And.intro E.seriesDefinedClosed (And.intro E.absoluteConvergenceClosed
    (And.intro E.automorphyPreservedClosed E.expansionFormulaClosed))

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse