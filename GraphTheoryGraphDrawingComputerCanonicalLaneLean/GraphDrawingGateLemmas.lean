import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingBridgeLemmas

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputer

def gateClosed (A : GraphDrawingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GraphDrawingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphTheoryGraphDrawingComputer
end HautevilleHouse