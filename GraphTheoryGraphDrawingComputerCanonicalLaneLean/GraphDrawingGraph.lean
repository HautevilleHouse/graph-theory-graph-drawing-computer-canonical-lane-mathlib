import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingGraphPackage where
  vertices : Type u
  edges : vertices → vertices → Prop
  finiteVertexSet : Prop
  simpleGraph : Prop
  embeddingSpace : Type v
  embeddingTopology : TopologicalSpace embeddingSpace
  embeddingContinuous : Prop

structure GraphDrawingGraphEvidence (G : GraphDrawingGraphPackage) where
  finiteVertexSetClosed : G.finiteVertexSet
  simpleGraphClosed : G.simpleGraph
  embeddingContinuousClosed : G.embeddingContinuous

def GraphDrawingGraphClosed (G : GraphDrawingGraphPackage) : Prop :=
  G.finiteVertexSet ∧ G.simpleGraph ∧ G.embeddingContinuous

theorem graph_drawing_graph_closed_from_evidence (G : GraphDrawingGraphPackage) (E : GraphDrawingGraphEvidence G) : GraphDrawingGraphClosed G := by
  exact And.intro E.finiteVertexSetClosed (And.intro E.simpleGraphClosed E.embeddingContinuousClosed)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse