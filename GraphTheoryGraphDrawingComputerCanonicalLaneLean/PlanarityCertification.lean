import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure PlanarityCertificationPackage (A : AdmissibleClass) where
  facialWalk : Prop
  rotationSystem : Prop
  combinatorialEmbedding : Prop

structure PlanarityCertificationEvidence {A : AdmissibleClass} (P : PlanarityCertificationPackage A) where
  facialWalkClosed : P.facialWalk
  rotationSystemClosed : P.rotationSystem
  combinatorialEmbeddingClosed : P.combinatorialEmbedding

def PlanarityCertificationClosed {A : AdmissibleClass} (P : PlanarityCertificationPackage A) : Prop :=
  P.facialWalk ∧ P.rotationSystem ∧ P.combinatorialEmbedding

theorem planarity_certification_closed_from_evidence {A : AdmissibleClass}
    (P : PlanarityCertificationPackage A) (E : PlanarityCertificationEvidence P) :
    PlanarityCertificationClosed P := by
  exact And.intro E.facialWalkClosed (And.intro E.rotationSystemClosed E.combinatorialEmbeddingClosed)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse
