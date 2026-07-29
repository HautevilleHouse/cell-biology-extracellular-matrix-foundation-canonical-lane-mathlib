import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.integrinBinding ∧ A.object.growthFactorSequestration ∧ A.object.stiffnessResponse

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse