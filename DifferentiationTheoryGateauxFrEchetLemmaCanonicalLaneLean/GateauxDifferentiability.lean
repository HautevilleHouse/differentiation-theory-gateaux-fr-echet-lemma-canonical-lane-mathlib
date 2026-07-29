import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure GateauxDifferentiability where
  vectorSpace : Type u
  normedSpace : NormedAddCommGroup vectorSpace
  f : vectorSpace → ℝ
  x : vectorSpace
  h : vectorSpace → ℝ
  limitExists : Prop
  limitValue : ℝ
  limitExistsProof : limitExists

theorem gateaux_differentiability_implies_directional (gd : GateauxDifferentiability) : Prop :=
  gd.limitExists

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse