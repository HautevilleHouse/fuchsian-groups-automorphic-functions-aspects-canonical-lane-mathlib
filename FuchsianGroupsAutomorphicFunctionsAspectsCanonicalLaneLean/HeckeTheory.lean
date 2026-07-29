import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicFormSpaces

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure HeckeOperatorAction {M : FuchsianGroupModel} (S : AutomorphicFormSpace M) where
  heckeOperators : List (S.form → S.form)
  commutativityRelation : Prop
  eigenformBasis : Prop
  conclusion : commutativityRelation ∧ eigenformBasis

def HeckeTheoryClosed {M : FuchsianGroupModel} {S : AutomorphicFormSpace M} (H : HeckeOperatorAction M S) : Prop :=
  H.conclusion

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
