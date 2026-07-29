import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure GeodesicFlow (G : FuchsianGroup (UpperHalfPlane)) where
  phaseSpace : Type u
  flowMap : ℝ → phaseSpace → phaseSpace
  invariantMeasure : Prop
  ergodicity : Prop

structure GeodesicFlowEvidence (F : GeodesicFlow G) where
  invariantMeasureClosed : F.invariantMeasure
  ergodicityClosed : F.ergodicity

def GeodesicFlowClosed (F : GeodesicFlow G) : Prop :=
  F.invariantMeasure ∧ F.ergodicity

theorem geodesic_flow_closed_from_evidence (F : GeodesicFlow G) (E : GeodesicFlowEvidence F) :
    GeodesicFlowClosed F := by
  exact And.intro E.invariantMeasureClosed E.ergodicityClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
