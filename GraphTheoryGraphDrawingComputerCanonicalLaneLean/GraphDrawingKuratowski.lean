import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingPlanarEmbedding

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputer

structure KuratowskiPackage {P : PlanarEmbeddingPackage} (K : Type) where
  subdivision : Type
  k33OrK5Subdivision : Prop
  obstructionToPlanarity : P.noCrossings → False

structure KuratowskiEvidence {P : PlanarEmbeddingPackage} {K : Type}
    (Kpkg : KuratowskiPackage P K) where
  obstructionClosed : ∀ (h : P.noCrossings), False

def KuratowskiClosed {P : PlanarEmbeddingPackage} {K : Type}
    (Kpkg : KuratowskiPackage P K) : Prop :=
  ∀ (h : P.noCrossings), False

theorem kuratowski_closed_from_evidence
    {P : PlanarEmbeddingPackage} {K : Type}
    (Kpkg : KuratowskiPackage P K) (E : KuratowskiEvidence Kpkg) :
    KuratowskiClosed Kpkg := by
  intro h
  exact E.obstructionClosed h

end GraphTheoryGraphDrawingComputer
end HautevilleHouse