import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingComputationPackage where
  inputGraph : Type u
  embeddingFunction : Type v
  crossingNumber : ℕ
  planarEmbedding : Prop
  crossingMinimization : Prop

structure GraphDrawingComputationEvidence (G : GraphDrawingComputationPackage) where
  planarEmbeddingClosed : G.planarEmbedding
  crossingMinimizationClosed : G.crossingMinimization

def GraphDrawingComputationClosed (G : GraphDrawingComputationPackage) : Prop :=
  G.planarEmbedding ∧ G.crossingMinimization

theorem graph_drawing_computation_closed_from_evidence (G : GraphDrawingComputationPackage)
    (E : GraphDrawingComputationEvidence G) : GraphDrawingComputationClosed G :=
  And.intro E.planarEmbeddingClosed E.crossingMinimizationClosed

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean