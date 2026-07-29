import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphReductionBridge where
  sourceProblem : String
  targetProblem : String
  reductionMapping : Type
  correctness : Prop
  polynomialTime : Prop
  bridgeEvidence : correctness ∧ polynomialTime

structure GraphReductionBridgeEvidence (B : GraphReductionBridge) where
  correctnessClosed : B.correctness
  polynomialTimeClosed : B.polynomialTime

def GraphReductionBridgeClosed (B : GraphReductionBridge) : Prop :=
  B.correctness ∧ B.polynomialTime

theorem graph_reduction_bridge_closed_from_evidence (B : GraphReductionBridge) (E : GraphReductionBridgeEvidence B) :
    GraphReductionBridgeClosed B := by
  exact And.intro E.correctnessClosed E.polynomialTimeClosed

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean