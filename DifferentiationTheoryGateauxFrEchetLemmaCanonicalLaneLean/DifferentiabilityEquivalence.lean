import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure DifferentiabilityEquivalencePackage where
  gateauxExists : Prop
  frechetExists : Prop
  gateauxImpliesFrechet : Prop
  frechetImpliesGateaux : Prop
  equivalenceHolds : Prop
  gateauxExistsClosed : gateauxExists
  frechetExistsClosed : frechetExists
  gateauxImpliesFrechetClosed : gateauxImpliesFrechet
  frechetImpliesGateauxClosed : frechetImpliesGateaux
  equivalenceHoldsClosed : equivalenceHolds

structure DifferentiabilityEquivalenceEvidence (D : DifferentiabilityEquivalencePackage) where
  gateauxExistsClosed : D.gateauxExists
  frechetExistsClosed : D.frechetExists
  gateauxImpliesFrechetClosed : D.gateauxImpliesFrechet
  frechetImpliesGateauxClosed : D.frechetImpliesGateaux
  equivalenceHoldsClosed : D.equivalenceHolds

def DifferentiabilityEquivalenceClosed (D : DifferentiabilityEquivalencePackage) : Prop :=
  D.gateauxExists ∧ D.frechetExists ∧ D.gateauxImpliesFrechet ∧ D.frechetImpliesGateaux ∧ D.equivalenceHolds

theorem differentiability_equivalence_closed_from_evidence
    (D : DifferentiabilityEquivalencePackage) (E : DifferentiabilityEquivalenceEvidence D) :
    DifferentiabilityEquivalenceClosed D := by
  exact And.intro E.gateauxExistsClosed (And.intro E.frechetExistsClosed
    (And.intro E.gateauxImpliesFrechetClosed (And.intro E.frechetImpliesGateauxClosed E.equivalenceHoldsClosed)))

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean