import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure GateauxDifferentialPackage where
  directionalLimitExists : Prop
  linearInDirection : Prop
  boundedLinearMap : Prop

structure GateauxDifferentialEvidence (G : GateauxDifferentialPackage) where
  directionalLimitExistsClosed : G.directionalLimitExists
  linearInDirectionClosed : G.linearInDirection
  boundedLinearMapClosed : G.boundedLinearMap

def GateauxDifferentialClosed (G : GateauxDifferentialPackage) : Prop :=
  G.directionalLimitExists ∧ G.linearInDirection ∧ G.boundedLinearMap

theorem gateaux_differential_closed_from_evidence (G : GateauxDifferentialPackage)
    (E : GateauxDifferentialEvidence G) : GateauxDifferentialClosed G := by
  exact And.intro E.directionalLimitExistsClosed
    (And.intro E.linearInDirectionClosed E.boundedLinearMapClosed)

end HautevilleHouse.DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse
