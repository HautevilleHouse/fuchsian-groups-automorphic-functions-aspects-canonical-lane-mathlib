import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure GeometryPackage where
  hyperbolicMetric : Type u
  geodesicFlow : Prop
  laplaceBeltramiOperator : Prop
  spectralTheory : Prop
  selbergTraceFormula : Prop
  hyperbolicMetricClosed : hyperbolicMetric
  geodesicFlowClosed : geodesicFlow
  laplaceClosed : laplaceBeltramiOperator
  spectralClosed : spectralTheory
  selbergClosed : selbergTraceFormula

def GeometryClosed (G : GeometryPackage) : Prop :=
  G.hyperbolicMetric ∧ G.geodesicFlow ∧ G.laplaceBeltramiOperator ∧ G.spectralTheory ∧ G.selbergTraceFormula

theorem geometry_closed_from_evidence (G : GeometryPackage) :
    GeometryClosed G := by
  exact And.intro G.hyperbolicMetricClosed (And.intro G.geodesicFlowClosed (And.intro G.laplaceClosed (And.intro G.spectralClosed G.selbergClosed)))

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse