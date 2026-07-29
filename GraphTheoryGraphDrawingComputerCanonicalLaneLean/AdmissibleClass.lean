import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure AdmissibleClass where
  object : GraphDrawingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphDrawingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse
