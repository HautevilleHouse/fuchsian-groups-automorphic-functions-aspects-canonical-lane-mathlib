import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicForms

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure SpectralDecomposition (G : FuchsianGroup (UpperHalfPlane)) where
  laplacianSpectrum : Set ℝ
  eigenfunctions : ℕ → AutomorphicForm G
  completeness : Prop
  discreteSpectrum : Prop

structure SpectralDecompositionEvidence (S : SpectralDecomposition G) where
  completenessClosed : S.completeness
  discreteSpectrumClosed : S.discreteSpectrum

def SpectralDecompositionClosed (S : SpectralDecomposition G) : Prop :=
  S.completeness ∧ S.discreteSpectrum

theorem spectral_decomposition_closed_from_evidence (S : SpectralDecomposition G) (E : SpectralDecompositionEvidence S) :
    SpectralDecompositionClosed S := by
  exact And.intro E.completenessClosed E.discreteSpectrumClosed

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse
