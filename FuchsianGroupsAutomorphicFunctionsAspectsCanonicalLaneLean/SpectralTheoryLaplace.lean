import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean.AutomorphicFormDefinition

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure LaplaceOperator (G : FuchsianGroup) where
  operatorDefined : Prop
  actionOnAutomorphicForms : Prop
  selfAdjointExtension : Prop
  discreteSpectrum : Prop

structure SpectralDecomposition (G : FuchsianGroup) (Δ : LaplaceOperator G) where
  eigenfunctions : Set (AutomorphicForm G)
  eigenvalues : Set ℝ
  completeness : Prop
  eigenfunctionsClosed : completeness

def LaplaceOperatorClosed (G : FuchsianGroup) (Δ : LaplaceOperator G) : Prop :=
  Δ.operatorDefined ∧ Δ.actionOnAutomorphicForms ∧ Δ.selfAdjointExtension ∧ Δ.discreteSpectrum

theorem laplace_operator_closed_from_evidence (G : FuchsianGroup) (Δ : LaplaceOperator G) (E : (Δ.operatorDefined ∧ Δ.actionOnAutomorphicForms ∧ Δ.selfAdjointExtension ∧ Δ.discreteSpectrum)) : LaplaceOperatorClosed G Δ := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 E.2.2.2))

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse