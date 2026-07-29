import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMMechanicalPropertiesPackage where
  stiffness : Prop
  elasticity : Prop
  viscoelasticity : Prop
  porosity : Prop
  fiberOrientation : Prop
  crosslinkDensity : Prop
  non linearBehavior : Prop

structure ECMMechanicalPropertiesEvidence (E : ECMMechanicalPropertiesPackage) where
  stiffnessClosed : E.stiffness
  elasticityClosed : E.elasticity
  viscoelasticityClosed : E.viscoelasticity
  porosityClosed : E.porosity
  fiberOrientationClosed : E.fiberOrientation
  crosslinkDensityClosed : E.crosslinkDensity
  non linearBehaviorClosed : E.non linearBehavior

def ECMMechanicalPropertiesClosed (E : ECMMechanicalPropertiesPackage) : Prop :=
  E.stiffness ∧ E.elasticity ∧ E.viscoelasticity ∧
  E.porosity ∧ E.fiberOrientation ∧ E.crosslinkDensity ∧ E.non linearBehavior

theorem ecm_mechanical_properties_closed_from_evidence
    (E : ECMMechanicalPropertiesPackage)
    (Ev : ECMMechanicalPropertiesEvidence E) : ECMMechanicalPropertiesClosed E := by
  exact And.intro Ev.stiffnessClosed
    (And.intro Ev.elasticityClosed
      (And.intro Ev.viscoelasticityClosed
        (And.intro Ev.porosityClosed
          (And.intro Ev.fiberOrientationClosed
            (And.intro Ev.crosslinkDensityClosed Ev.non linearBehaviorClosed)))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse