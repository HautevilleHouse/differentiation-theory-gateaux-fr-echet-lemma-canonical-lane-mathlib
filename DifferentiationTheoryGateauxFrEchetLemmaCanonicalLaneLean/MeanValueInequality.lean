import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure MeanValueInequalityPackage where
  functionDefined : Prop
  derivativeBounded : Prop
  inequalityHolds : Prop
  functionDefinedClosed : functionDefined
  derivativeBoundedClosed : derivativeBounded
  inequalityHoldsClosed : inequalityHolds

structure MeanValueInequalityEvidence (M : MeanValueInequalityPackage) where
  functionDefinedClosed : M.functionDefined
  derivativeBoundedClosed : M.derivativeBounded
  inequalityHoldsClosed : M.inequalityHolds

def MeanValueInequalityClosed (M : MeanValueInequalityPackage) : Prop :=
  M.functionDefined ∧ M.derivativeBounded ∧ M.inequalityHolds

theorem mean_value_inequality_closed_from_evidence
    (M : MeanValueInequalityPackage) (E : MeanValueInequalityEvidence M) :
    MeanValueInequalityClosed M := by
  exact And.intro E.functionDefinedClosed (And.intro E.derivativeBoundedClosed E.inequalityHoldsClosed)

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean