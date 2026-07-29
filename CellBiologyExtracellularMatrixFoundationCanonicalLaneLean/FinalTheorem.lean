import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

def ConstrainedEcmClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecm_endgame (A : AdmissibleClass) :
    ConstrainedEcmClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse