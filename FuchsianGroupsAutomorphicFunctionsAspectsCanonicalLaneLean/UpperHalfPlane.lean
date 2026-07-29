import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure UpperHalfPlaneModel where
  Point : Type u
  topology : TopologicalSpace Point
  complexStructure : Prop
  hyperbolicMetric : Type v
  metricComplete : Prop
  metricCompleteTerm : metricComplete

structure UpperHalfPlaneEvidence (H : UpperHalfPlaneModel) where
  complexStructureClosed : H.complexStructure
  metricCompleteClosed : H.metricComplete

def UpperHalfPlaneClosed (H : UpperHalfPlaneModel) : Prop :=
  H.complexStructure ∧ H.metricComplete

theorem upper_half_plane_closed_from_evidence (H : UpperHalfPlaneModel)
    (E : UpperHalfPlaneEvidence H) : UpperHalfPlaneClosed H := by
  exact And.intro E.complexStructureClosed E.metricCompleteClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse