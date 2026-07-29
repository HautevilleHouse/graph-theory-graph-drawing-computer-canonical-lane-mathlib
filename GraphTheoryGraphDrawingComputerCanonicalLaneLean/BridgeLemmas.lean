import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryGraphDrawingComputerCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphDrawingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphTheoryGraphDrawingComputerCanonicalLaneLean
end HautevilleHouse
