import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic
import Mathlib.Combinatorics.Graph.Basic

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

structure GraphDrawingAdmittedObject where
  graph : SimpleGraph (Fin 1)
  embedding : Prop
  crossingFree : Prop
  conclusion : crossingFree

def GraphDrawingWitnessClosed (O : GraphDrawingAdmittedObject) : Prop :=
  O.crossingFree

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse
