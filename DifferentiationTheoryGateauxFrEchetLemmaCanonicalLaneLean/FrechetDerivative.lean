import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure FrechetDifferentialPackage where
  linearApproximationExists : Prop
  limitConditionHolds : Prop
  derivativeBounded : Prop

structure FrechetDifferentialEvidence (F : FrechetDifferentialPackage) where
  linearApproximationExistsClosed : F.linearApproximationExists
  limitConditionHoldsClosed : F.limitConditionHolds
  derivativeBoundedClosed : F.derivativeBounded

def FrechetDifferentialClosed (F : FrechetDifferentialPackage) : Prop :=
  F.linearApproximationExists ∧ F.limitConditionHolds ∧ F.derivativeBounded

theorem frechet_differential_closed_from_evidence (F : FrechetDifferentialPackage)
    (E : FrechetDifferentialEvidence F) : FrechetDifferentialClosed F := by
  exact And.intro E.linearApproximationExistsClosed
    (And.intro E.limitConditionHoldsClosed E.derivativeBoundedClosed)

end HautevilleHouse.DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse
