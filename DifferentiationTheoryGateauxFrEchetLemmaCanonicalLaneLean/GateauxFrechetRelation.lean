import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure GateauxFrechetRelationPackage {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] (f : X → Y) (x : X) where
  gateauxDerivative : GateauxDerivativePackage f x
  frechetDerivative : FrechetDerivativePackage f x
  gateauxImpliesFrechet : Prop
  frechetImpliesGateaux : Prop
  equivalenceCondition : Prop

def GateauxFrechetRelationClosed {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X}
    (R : GateauxFrechetRelationPackage f x) : Prop :=
  GateauxDerivativeClosed R.gateauxDerivative ∧ FrechetDerivativeClosed R.frechetDerivative ∧
  R.gateauxImpliesFrechet ∧ R.frechetImpliesGateaux ∧ R.equivalenceCondition

structure GateauxFrechetRelationEvidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X}
    (R : GateauxFrechetRelationPackage f x) where
  gateauxClosed : GateauxDerivativeClosed R.gateauxDerivative
  frechetClosed : FrechetDerivativeClosed R.frechetDerivative
  gateauxImpliesFrechetClosed : R.gateauxImpliesFrechet
  frechetImpliesGateauxClosed : R.frechetImpliesGateaux
  equivalenceConditionClosed : R.equivalenceCondition

theorem gateaux_frechet_relation_closed_from_evidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X}
    (R : GateauxFrechetRelationPackage f x) (E : GateauxFrechetRelationEvidence R) : GateauxFrechetRelationClosed R :=
  And.intro E.gateauxClosed (And.intro E.frechetClosed (And.intro E.gateauxImpliesFrechetClosed (And.intro E.frechetImpliesGateauxClosed E.equivalenceConditionClosed)))

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean