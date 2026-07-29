import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GateauxDifferentiability A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.differentiabilityProof

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse