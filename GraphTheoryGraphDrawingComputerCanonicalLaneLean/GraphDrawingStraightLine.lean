import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingAdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputer

structure StraightLineEmbeddingPackage where
  graph : Type
  vertexCoords : Type
  edgesNonCrossing : Prop
  planarityEquivalent : Prop

structure StraightLineEvidence (S : StraightLineEmbeddingPackage) where
  edgesNonCrossingClosed : S.edgesNonCrossing
  planarityEquivalentClosed : S.planarityEquivalent

def StraightLineClosed (S : StraightLineEmbeddingPackage) : Prop :=
  S.edgesNonCrossing ∧ S.planarityEquivalent

theorem straight_line_closed_from_evidence
    (S : StraightLineEmbeddingPackage) (E : StraightLineEvidence S) :
    StraightLineClosed S := by
  exact And.intro E.edgesNonCrossingClosed E.planarityEquivalentClosed

end GraphTheoryGraphDrawingComputer
end HautevilleHouse