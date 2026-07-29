import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicFormSpaces

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure PoincareSeriesRepresentation {M : FuchsianGroupModel} where
  weight : ℤ
  convergenceCondition : Prop
  automorphyCondition : Prop
  seriesDefinesAutomorphicForm : convergenceCondition ∧ automorphyCondition

def PoincareSeriesClosed {M : FuchsianGroupModel} (P : PoincareSeriesRepresentation M) : Prop :=
  P.seriesDefinesAutomorphicForm

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
