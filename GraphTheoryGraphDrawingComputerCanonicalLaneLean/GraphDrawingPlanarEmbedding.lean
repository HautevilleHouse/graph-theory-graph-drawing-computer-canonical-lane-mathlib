import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingAdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputer

structure PlanarEmbeddingPackage where
  graph : Type
  planarDraw : Type
  noCrossings : Prop
  outerFaceExists : Prop

structure PlanarEmbeddingEvidence (P : PlanarEmbeddingPackage) where
  noCrossingsClosed : P.noCrossings
  outerFaceExistsClosed : P.outerFaceExists

def PlanarEmbeddingClosed (P : PlanarEmbeddingPackage) : Prop :=
  P.noCrossings ∧ P.outerFaceExists

theorem planar_embedding_closed_from_evidence
    (P : PlanarEmbeddingPackage) (E : PlanarEmbeddingEvidence P) :
    PlanarEmbeddingClosed P := by
  exact And.intro E.noCrossingsClosed E.outerFaceExistsClosed

end GraphTheoryGraphDrawingComputer
end HautevilleHouse