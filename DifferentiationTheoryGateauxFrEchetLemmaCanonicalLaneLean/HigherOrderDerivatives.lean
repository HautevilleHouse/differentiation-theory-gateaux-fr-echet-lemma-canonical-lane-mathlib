import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure HigherOrderDerivativePackage {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] (f : X → Y) (x : X) (n : ℕ) where
  nthDerivative : X → Y
  symmetricMultilinear : Prop
  taylorExpansion : Prop

def HigherOrderDerivativeClosed {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X} {n : ℕ}
    (H : HigherOrderDerivativePackage f x n) : Prop :=
  H.symmetricMultilinear ∧ H.taylorExpansion

structure HigherOrderDerivativeEvidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X} {n : ℕ}
    (H : HigherOrderDerivativePackage f x n) where
  symmetricMultilinearClosed : H.symmetricMultilinear
  taylorExpansionClosed : H.taylorExpansion

theorem higher_order_derivative_closed_from_evidence {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] {f : X → Y} {x : X} {n : ℕ}
    (H : HigherOrderDerivativePackage f x n) (E : HigherOrderDerivativeEvidence H) : HigherOrderDerivativeClosed H :=
  And.intro E.symmetricMultilinearClosed E.taylorExpansionClosed

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean