import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure FPTAlgorithmPackage where
  parameter : ℕ
  algorithmDescription : Prop
  runtimeBound : Prop
  crossingNumberApproximation : Prop

structure FPTAlgorithmEvidence (F : FPTAlgorithmPackage) where
  algorithmDescriptionClosed : F.algorithmDescription
  runtimeBoundClosed : F.runtimeBound
  crossingNumberApproximationClosed : F.crossingNumberApproximation

def FPTAlgorithmClosed (F : FPTAlgorithmPackage) : Prop :=
  F.algorithmDescription ∧ F.runtimeBound ∧ F.crossingNumberApproximation

theorem fpt_algorithm_closed_from_evidence (F : FPTAlgorithmPackage)
    (E : FPTAlgorithmEvidence F) : FPTAlgorithmClosed F :=
  And.intro E.algorithmDescriptionClosed (And.intro E.runtimeBoundClosed E.crossingNumberApproximationClosed)

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean