import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure AutomorphicFunctionBridge (A : AdmissibleClass) where
  fuchsianGroup : FuchsianGroup
  automorphicForm : AutomorphicForm
  bridgeCondition : Prop
  bridgeConditionClosed : bridgeCondition

def BridgeClosed (B : AutomorphicFunctionBridge A) : Prop :=
  B.bridgeCondition ∧ AutomorphicFormsClosed B.automorphicForm

theorem bridge_closed_from_bridge (A : AdmissibleClass) (B : AutomorphicFunctionBridge A) : BridgeClosed B := by
  exact And.intro B.bridgeConditionClosed (automorphic_forms_closed_from_evidence B.automorphicForm
    { automorphyFactorClosed := B.automorphicForm.automorphyFactorClosed
      holomorphicAtCuspsClosed := B.automorphicForm.holomorphicAtCuspsClosed
      meromorphicAtCuspsClosed := B.automorphicForm.meromorphicAtCuspsClosed
    })

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse