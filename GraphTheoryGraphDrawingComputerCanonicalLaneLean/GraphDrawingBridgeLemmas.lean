import GraphTheoryGraphDrawingComputerCanonicalLaneLean.GraphDrawingAdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputer

def bridgeClosed (A : GraphDrawingAdmissibleClass) : Prop :=
  GraphDrawingWitnessClosed A.object

theorem bridge_from_admissible_class (A : GraphDrawingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphTheoryGraphDrawingComputer
end HautevilleHouse