import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.FuchsianGroupModels

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure UniformizationData {M : FuchsianGroupModel} where
  universalCover : Type u
  coveringMap : universalCover → M.carrier
  deckGroupIsFuchsian : Prop
  uniformizationConclusion : deckGroupIsFuchsian ∧ coveringMap

def UniformizationClosed {M : FuchsianGroupModel} (U : UniformizationData M) : Prop :=
  U.uniformizationConclusion

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
