import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure PlanarityTestingPackage where
  planarityCriterion : Prop
  algorithmEfficient : Prop
  kuratowskiMinorDetection : Prop

structure PlanarityTestingEvidence (P : PlanarityTestingPackage) where
  planarityCriterionClosed : P.planarityCriterion
  algorithmEfficientClosed : P.algorithmEfficient
  kuratowskiMinorDetectionClosed : P.kuratowskiMinorDetection

def PlanarityTestingClosed (P : PlanarityTestingPackage) : Prop :=
  P.planarityCriterion ∧ P.algorithmEfficient ∧ P.kuratowskiMinorDetection

theorem planarity_testing_closed_from_evidence (P : PlanarityTestingPackage)
    (E : PlanarityTestingEvidence P) : PlanarityTestingClosed P :=
  And.intro E.planarityCriterionClosed (And.intro E.algorithmEfficientClosed E.kuratowskiMinorDetectionClosed)

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean