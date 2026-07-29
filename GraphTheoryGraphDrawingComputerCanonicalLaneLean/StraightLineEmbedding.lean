import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure StraightLineEmbeddingPackage where
  vertexPositions : Type u
  edgeStraightness : Prop
  noCrossings : Prop

structure StraightLineEmbeddingEvidence (S : StraightLineEmbeddingPackage) where
  edgeStraightnessClosed : S.edgeStraightness
  noCrossingsClosed : S.noCrossings

def StraightLineEmbeddingClosed (S : StraightLineEmbeddingPackage) : Prop :=
  S.edgeStraightness ∧ S.noCrossings

theorem straight_line_embedding_closed_from_evidence (S : StraightLineEmbeddingPackage)
    (E : StraightLineEmbeddingEvidence S) : StraightLineEmbeddingClosed S :=
  And.intro E.edgeStraightnessClosed E.noCrossingsClosed

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean