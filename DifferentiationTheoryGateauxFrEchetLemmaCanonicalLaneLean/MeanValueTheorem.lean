import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure MeanValueTheoremPackage {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace ℝ X] [NormedSpace ℝ Y]
    (f : X → Y) (a b : X) where
  segmentConnected : Prop
  derivativeBound : Prop
  inequality : Prop

def MeanValueTheoremClosed {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace ℝ X] [NormedSpace ℝ Y]
    {f : X → Y} {a b : X} (M : MeanValueTheoremPackage f a b) : Prop :=
  M.segmentConnected ∧ M.derivativeBound ∧ M.inequality

structure MeanValueTheoremEvidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace ℝ X] [NormedSpace ℝ Y]
    {f : X → Y} {a b : X} (M : MeanValueTheoremPackage f a b) where
  segmentConnectedClosed : M.segmentConnected
  derivativeBoundClosed : M.derivativeBound
  inequalityClosed : M.inequality

theorem mean_value_theorem_closed_from_evidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace ℝ X] [NormedSpace ℝ Y]
    {f : X → Y} {a b : X} (M : MeanValueTheoremPackage f a b) (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M :=
  And.intro E.segmentConnectedClosed (And.intro E.derivativeBoundClosed E.inequalityClosed)

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean