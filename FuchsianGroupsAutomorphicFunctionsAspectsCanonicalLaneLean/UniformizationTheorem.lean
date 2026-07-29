import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure UniformizationData (G : FuchsianGroup) where
  riemannSurface : Type u
  surfaceTopology : TopologicalSpace riemannSurface
  complexStructure : riemannSurface → ℂ
  universalCoverIsUpperHalfPlane : Prop
  groupIsDeckTransformationGroup : Prop
  uniformizingFunction : riemannSurface → ℂ
  uniformizingFunctionIsAutomorphic : Prop

structure UniformizationEvidence {G : FuchsianGroup} (U : UniformizationData G) where
  universalCoverIsUpperHalfPlaneClosed : U.universalCoverIsUpperHalfPlane
  groupIsDeckTransformationGroupClosed : U.groupIsDeckTransformationGroup
  uniformizingFunctionIsAutomorphicClosed : U.uniformizingFunctionIsAutomorphic

def UniformizationClosed {G : FuchsianGroup} (U : UniformizationData G) : Prop :=
  U.universalCoverIsUpperHalfPlane ∧ U.groupIsDeckTransformationGroup ∧ U.uniformizingFunctionIsAutomorphic

theorem uniformization_closed_from_evidence {G : FuchsianGroup} (U : UniformizationData G) (E : UniformizationEvidence U) : UniformizationClosed U := by
  exact And.intro E.universalCoverIsUpperHalfPlaneClosed (And.intro E.groupIsDeckTransformationGroupClosed E.uniformizingFunctionIsAutomorphicClosed)

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse