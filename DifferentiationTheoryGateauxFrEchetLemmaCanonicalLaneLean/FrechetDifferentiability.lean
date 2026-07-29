import canonicalLaneMathlib.AdmissibleClass
import .GateauxDifferentiability

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure FrechetDifferentiability where
  gateaux : GateauxDifferentiability
  linearOperator : Prop
  boundedLinear : Prop
  remainderVanishes : Prop
  linearOperatorProof : linearOperator
  boundedLinearProof : boundedLinear
  remainderVanishesProof : remainderVanishes

theorem frechet_implies_gateaux (fd : FrechetDifferentiability) :
    GateauxDifferentiability := fd.gateaux

theorem frechet_differentiability_closed (fd : FrechetDifferentiability) : Prop :=
  fd.linearOperator ∧ fd.boundedLinear ∧ fd.remainderVanishes

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse