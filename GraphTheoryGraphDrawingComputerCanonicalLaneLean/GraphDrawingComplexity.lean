import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingComplexity where
  graphFamily : String
  drawingStyle : String  -- e.g., "planar", "straight-line"
  complexityClass : String
  isComplete : Prop
  hardnessProof : Prop
  membershipProof : Prop

structure GraphDrawingComplexityEvidence (G : GraphDrawingComplexity) where
  isCompleteClosed : G.isComplete
  hardnessProofClosed : G.hardnessProof
  membershipProofClosed : G.membershipProof

def GraphDrawingComplexityClosed (G : GraphDrawingComplexity) : Prop :=
  G.isComplete ∧ G.hardnessProof ∧ G.membershipProof

theorem graph_drawing_complexity_closed_from_evidence (G : GraphDrawingComplexity) (E : GraphDrawingComplexityEvidence G) :
    GraphDrawingComplexityClosed G := by
  exact And.intro E.isCompleteClosed (And.intro E.hardnessProofClosed E.membershipProofClosed)

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean