import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure InverseFunctionTheoremPackage (X Y : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  f : X → Y
  point : X
  fDerivativeAtPoint : X →L[ℝ] Y
  derivativeInvertible : Prop
  localInverseExists : Prop
  inverseDifferentiable : Prop
  derivativeInvertibleClosed : derivativeInvertible
  localInverseExistsClosed : localInverseExists
  inverseDifferentiableClosed : inverseDifferentiable

structure InverseFunctionTheoremEvidence {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (I : InverseFunctionTheoremPackage X Y) where
  derivativeInvertibleClosed : I.derivativeInvertible
  localInverseExistsClosed : I.localInverseExists
  inverseDifferentiableClosed : I.inverseDifferentiable

def InverseFunctionTheoremClosed {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (I : InverseFunctionTheoremPackage X Y) : Prop :=
  I.derivativeInvertible ∧ I.localInverseExists ∧ I.inverseDifferentiable

theorem inverse_function_theorem_closed_from_evidence {X Y : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (I : InverseFunctionTheoremPackage X Y) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeInvertibleClosed (And.intro E.localInverseExistsClosed E.inverseDifferentiableClosed)

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse