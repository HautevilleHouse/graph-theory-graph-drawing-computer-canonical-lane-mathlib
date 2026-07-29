import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

def bridgeClosed (A : GraphDrawingAdmissibleClass) : Prop :=
  A.object.planar

theorem bridge_from_admissible_class (A : GraphDrawingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evidencePlanar A.object.evidenceCrossingFree

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse