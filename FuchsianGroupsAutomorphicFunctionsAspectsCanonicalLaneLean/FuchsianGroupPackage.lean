import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure FuchsianGroupPackage (H : UpperHalfPlaneModel) where
  group : Type u
  action : group → H.Point → H.Point
  discrete : Prop
  properDiscontinuity : Prop
  finiteCovolume : Prop

structure FuchsianGroupEvidence {H : UpperHalfPlaneModel} (F : FuchsianGroupPackage H) where
  discreteClosed : F.discrete
  properDiscontinuityClosed : F.properDiscontinuity
  finiteCovolumeClosed : F.finiteCovolume

def FuchsianGroupClosed {H : UpperHalfPlaneModel} (F : FuchsianGroupPackage H) : Prop :=
  F.discrete ∧ F.properDiscontinuity ∧ F.finiteCovolume

theorem fuchsian_group_closed_from_evidence {H : UpperHalfPlaneModel} (F : FuchsianGroupPackage H)
    (E : FuchsianGroupEvidence F) : FuchsianGroupClosed F := by
  exact And.intro E.discreteClosed (And.intro E.properDiscontinuityClosed E.finiteCovolumeClosed)

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse