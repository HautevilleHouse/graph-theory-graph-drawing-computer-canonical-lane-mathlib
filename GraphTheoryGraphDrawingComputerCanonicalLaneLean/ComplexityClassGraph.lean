import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure ComplexityClassGraph where
  instanceKey : String
  classType : String  -- e.g., "P", "NP", "PSPACE"
  language : Type
  decidable : Prop
  reducibility : Prop
  completeProblem : Prop

structure ComplexityClassGraphEvidence (G : ComplexityClassGraph) where
  decidableClosed : G.decidable
  reducibilityClosed : G.reducibility
  completeProblemClosed : G.completeProblem

def ComplexityClassGraphClosed (G : ComplexityClassGraph) : Prop :=
  G.decidable ∧ G.reducibility ∧ G.completeProblem

theorem complexity_class_graph_closed_from_evidence (G : ComplexityClassGraph) (E : ComplexityClassGraphEvidence G) :
    ComplexityClassGraphClosed G := by
  exact And.intro E.decidableClosed (And.intro E.reducibilityClosed E.completeProblemClosed)

end HautevilleHouse
end GraphTheoryGraphDrawingComputerCanonicalLaneLean