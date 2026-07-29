import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure FuchsianSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FuchsianAdmittedObject where
  space : FuchsianSpace
  discreteSubgroup : Prop
  finiteVolume : Prop
  conclusion : discreteSubgroup ∧ finiteVolume

def FuchsianWitnessClosed (O : FuchsianAdmittedObject) : Prop :=
  O.conclusion

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse