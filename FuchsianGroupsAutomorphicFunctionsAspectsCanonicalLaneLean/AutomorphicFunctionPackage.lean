import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure AutomorphicFunctionPackage {G : FuchsianGroupPackage} where
  weight : ℕ
  multiplierSystem : Type u
  automorphicLaw : Prop
  meromorphicOnUpperHalfPlane : Prop
  fourierExpansionAtCusps : Prop
  growthCondition : Prop
  automorphicLawClosed : automorphicLaw
  meromorphicClosed : meromorphicOnUpperHalfPlane
  fourierExpansionClosed : fourierExpansionAtCusps
  growthClosed : growthCondition

def AutomorphicFunctionClosed {G : FuchsianGroupPackage} (A : AutomorphicFunctionPackage G) : Prop :=
  A.automorphicLaw ∧ A.meromorphicOnUpperHalfPlane ∧ A.fourierExpansionAtCusps ∧ A.growthCondition

theorem automorphic_function_closed_from_evidence
    {G : FuchsianGroupPackage} (A : AutomorphicFunctionPackage G) :
    AutomorphicFunctionClosed A := by
  exact And.intro A.automorphicLawClosed (And.intro A.meromorphicClosed (And.intro A.fourierExpansionClosed A.growthClosed))

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse