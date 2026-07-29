import GraphTheoryGraphDrawingComputerCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GraphDrawingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphDrawingAdmittedObject where
  graph : GraphDrawingSpace
  finiteEmbedding : Prop
  planarEmbedding : Prop
  embeddingModel : Type
  embeddingTopology : TopologicalSpace embeddingModel
  embeddedInPlane : Prop
  conclusion : embeddedInPlane

structure GraphDrawingEndgameState where
  object : GraphDrawingAdmittedObject

def GraphDrawingWitnessClosed (O : GraphDrawingAdmittedObject) : Prop :=
  O.embeddedInPlane

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse