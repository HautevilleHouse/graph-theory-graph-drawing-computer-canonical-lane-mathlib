import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

def gateClosed (A : GraphDrawingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GraphDrawingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse