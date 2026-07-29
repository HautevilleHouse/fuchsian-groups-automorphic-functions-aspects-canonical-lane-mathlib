import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicFormSpaces

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure SpectralData where
  laplacianEigenvalues : List ℝ
  spectralGap : ℝ
  weylLawAsymptotic : Prop
  conclusion : weylLawAsymptotic ∧ spectralGap > 0

def SpectralClosed (S : SpectralData) : Prop :=
  S.conclusion

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
