import canonicalLaneMathlib.AdmissibleClass
import .FrechetDifferentiability

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

theorem frechet_differentiability_at_point_unique (f : FrechetDifferentiability) : Prop :=
  f.linearOperator

theorem continuous_linear_map_is_frechet (f : FrechetDifferentiability) : Prop :=
  f.boundedLinearProof

theorem frechet_lemma_for_remainder (f : FrechetDifferentiability) : Prop :=
  f.remainderVanishesProof

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse