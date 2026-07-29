import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean.GateauxDerivative
import HautevilleHouse.DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure GateauxFrechetComparisonPackage (G : GateauxDifferentialPackage) (F : FrechetDifferentialPackage) where
  frechetImpliesGateaux : Prop
  gateauxLinearImpliesFrechet : Prop
  equivalenceUnderBoundedLinear : Prop

structure GateauxFrechetComparisonEvidence {G : GateauxDifferentialPackage} {F : FrechetDifferentialPackage}
    (C : GateauxFrechetComparisonPackage G F) where
  frechetImpliesGateauxClosed : C.frechetImpliesGateaux
  gateauxLinearImpliesFrechetClosed : C.gateauxLinearImpliesFrechet
  equivalenceUnderBoundedLinearClosed : C.equivalenceUnderBoundedLinear

def GateauxFrechetComparisonClosed {G : GateauxDifferentialPackage} {F : FrechetDifferentialPackage}
    (C : GateauxFrechetComparisonPackage G F) : Prop :=
  C.frechetImpliesGateaux ∧ C.gateauxLinearImpliesFrechet ∧ C.equivalenceUnderBoundedLinear

theorem gateaux_frechet_comparison_closed_from_evidence {G : GateauxDifferentialPackage} {F : FrechetDifferentialPackage}
    (C : GateauxFrechetComparisonPackage G F) (E : GateauxFrechetComparisonEvidence C) :
    GateauxFrechetComparisonClosed C := by
  exact And.intro E.frechetImpliesGateauxClosed
    (And.intro E.gateauxLinearImpliesFrechetClosed E.equivalenceUnderBoundedLinearClosed)

end HautevilleHouse.DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse
