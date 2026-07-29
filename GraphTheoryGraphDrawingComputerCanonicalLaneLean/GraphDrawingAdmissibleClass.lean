import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingAdmittedObject where
  graph : Type u
  embedding : graph → ℝ²
  crossingFree : Prop
  planar : Prop
  evidenceCrossingFree : crossingFree
  evidencePlanar : crossingFree → planar

structure GraphDrawingAdmissibleClass where
  object : GraphDrawingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse