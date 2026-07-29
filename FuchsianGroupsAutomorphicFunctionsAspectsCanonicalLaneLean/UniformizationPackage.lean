import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure UniformizationPackage (G : FuchsianGroup (UpperHalfPlane)) where
  universalCover : Type u
  coveringMap : universalCover → UpperHalfPlane
  groupActionOnCover : G.actingOn → universalCover → universalCover
  uniformizationTheorem : Prop

structure UniformizationEvidence (U : UniformizationPackage G) where
  coveringMapClosed : Nonempty (U.coveringMap)
  groupActionClosed : Nonempty (U.groupActionOnCover)
  uniformizationTheoremClosed : U.uniformizationTheorem

def UniformizationClosed (U : UniformizationPackage G) : Prop :=
  Nonempty (U.coveringMap) ∧ Nonempty (U.groupActionOnCover) ∧ U.uniformizationTheorem

theorem uniformization_closed_from_evidence (U : UniformizationPackage G) (E : UniformizationEvidence U) :
    UniformizationClosed U := by
  exact And.intro (And.intro E.coveringMapClosed E.groupActionClosed) E.uniformizationTheoremClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
