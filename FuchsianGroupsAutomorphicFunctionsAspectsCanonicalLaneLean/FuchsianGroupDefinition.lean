import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure FuchsianGroup (M : Type u) [TopologicalSpace M] where
  actingOn : Type v
  groupStructure : Group actingOn
  discreteAction : Prop
  properlyDiscontinuous : Prop

structure FuchsianGroupEvidence (G : FuchsianGroup M) where
  discreteActionClosed : G.discreteAction
  properlyDiscontinuousClosed : G.properlyDiscontinuous

def FuchsianGroupClosed (G : FuchsianGroup M) : Prop :=
  G.discreteAction ∧ G.properlyDiscontinuous

theorem fuchsian_group_closed_from_evidence (G : FuchsianGroup M) (E : FuchsianGroupEvidence G) :
    FuchsianGroupClosed G := by
  exact And.intro E.discreteActionClosed E.properlyDiscontinuousClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
