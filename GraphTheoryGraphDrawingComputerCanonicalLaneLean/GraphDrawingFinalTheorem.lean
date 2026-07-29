import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

def ConstrainedGraphDrawingClosure (A : GraphDrawingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_drawing_endgame (A : GraphDrawingAdmissibleClass) :
    ConstrainedGraphDrawingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse