import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

def ConstrainedGraphDrawingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_drawing_endgame (A : AdmissibleClass) :
    ConstrainedGraphDrawingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse
