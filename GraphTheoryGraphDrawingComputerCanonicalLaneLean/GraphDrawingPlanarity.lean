import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingComplexity

/-!
# Graph Drawing Planarity Package
-/

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingPlanarityPackage {G : GraphDrawingGraphPackage} {D : GraphDrawingComplexityPackage G} where
  kuratowskiSubdivisionAbsent : Prop
  planarDrawingConstructed : Prop
  topologicalEmbeddingObtained : Prop

structure GraphDrawingPlanarityEvidence {G : GraphDrawingGraphPackage} {D : GraphDrawingComplexityPackage G} (P : GraphDrawingPlanarityPackage G D) where
  kuratowskiSubdivisionAbsentClosed : P.kuratowskiSubdivisionAbsent
  planarDrawingConstructedClosed : P.planarDrawingConstructed
  topologicalEmbeddingObtainedClosed : P.topologicalEmbeddingObtained

def GraphDrawingPlanarityClosed {G : GraphDrawingGraphPackage} {D : GraphDrawingComplexityPackage G} (P : GraphDrawingPlanarityPackage G D) : Prop :=
  P.kuratowskiSubdivisionAbsent ∧ P.planarDrawingConstructed ∧ P.topologicalEmbeddingObtained

theorem graph_drawing_planarity_closed_from_evidence {G : GraphDrawingGraphPackage} {D : GraphDrawingComplexityPackage G} (P : GraphDrawingPlanarityPackage G D) (E : GraphDrawingPlanarityEvidence P) : GraphDrawingPlanarityClosed P := by
  exact And.intro E.kuratowskiSubdivisionAbsentClosed (And.intro E.planarDrawingConstructedClosed E.topologicalEmbeddingObtainedClosed)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse