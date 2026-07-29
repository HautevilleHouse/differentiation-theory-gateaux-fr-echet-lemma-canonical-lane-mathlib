import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean

structure ChainRulePackage {X Y Z : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    (f : X → Y) (g : Y → Z) (x : X) where
  fDerivativeAtX : FrechetDerivativePackage f x
  gDerivativeAtFx : FrechetDerivativePackage g (f x)
  compositionDerivativeFormula : Prop

def ChainRuleClosed {X Y Z : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    {f : X → Y} {g : Y → Z} {x : X} (C : ChainRulePackage f g x) : Prop :=
  FrechetDerivativeClosed C.fDerivativeAtX ∧ FrechetDerivativeClosed C.gDerivativeAtFx ∧ C.compositionDerivativeFormula

structure ChainRuleEvidence {X Y Z : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    {f : X → Y} {g : Y → Z} {x : X} (C : ChainRulePackage f g x) where
  fDerivativeClosed : FrechetDerivativeClosed C.fDerivativeAtX
  gDerivativeClosed : FrechetDerivativeClosed C.gDerivativeAtFx
  compositionDerivativeFormulaClosed : C.compositionDerivativeFormula

theorem chain_rule_closed_from_evidence {X Y Z : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    {f : X → Y} {g : Y → Z} {x : X} (C : ChainRulePackage f g x) (E : ChainRuleEvidence C) : ChainRuleClosed C :=
  And.intro E.fDerivativeClosed (And.intro E.gDerivativeClosed E.compositionDerivativeFormulaClosed)

end HautevilleHouse
end DifferentiationTheoryGateauxFrEchetLemmaCanonicalLaneLean