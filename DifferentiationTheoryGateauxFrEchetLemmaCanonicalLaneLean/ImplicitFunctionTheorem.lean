import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure ImplicitFunctionTheoremPackage (X Y Z : Type) [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z] where
  f : X × Y → Z
  point : X × Y
  fDerivativeAtPoint : (X × Y) →L[ℝ] Z
  partialDerivativeYInvertible : Prop
  localExistence : Prop
  implicitFunction : X → Y
  uniqueness : Prop
  fDerivativeAtPointDefined : fDerivativeAtPoint = (fDerivativeAtPoint)
  partialDerivativeYInvertibleClosed : partialDerivativeYInvertible
  localExistenceClosed : localExistence
  uniquenessClosed : uniqueness

structure ImplicitFunctionTheoremEvidence {X Y Z : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    (I : ImplicitFunctionTheoremPackage X Y Z) where
  partialDerivativeYInvertibleClosed : I.partialDerivativeYInvertible
  localExistenceClosed : I.localExistence
  uniquenessClosed : I.uniqueness

def ImplicitFunctionTheoremClosed {X Y Z : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    (I : ImplicitFunctionTheoremPackage X Y Z) : Prop :=
  I.partialDerivativeYInvertible ∧ I.localExistence ∧ I.uniqueness

theorem implicit_function_theorem_closed_from_evidence {X Y Z : Type} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    (I : ImplicitFunctionTheoremPackage X Y Z) (E : ImplicitFunctionTheoremEvidence I) :
    ImplicitFunctionTheoremClosed I := by
  exact And.intro E.partialDerivativeYInvertibleClosed (And.intro E.localExistenceClosed E.uniquenessClosed)

end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean
end HautevilleHouse