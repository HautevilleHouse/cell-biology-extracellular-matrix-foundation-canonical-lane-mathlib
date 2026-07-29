import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure CellMigrationInvasionPackage where
  focalAdhesionDynamics : Prop
  actinCytoskeletonRemodeling : Prop
  matrixMetalloproteinaseActivity : Prop
  migrationSpeedControl : Prop

structure CellMigrationInvasionEvidence (P : CellMigrationInvasionPackage) where
  focalAdhesionDynamicsClosed : P.focalAdhesionDynamics
  actinCytoskeletonRemodelingClosed : P.actinCytoskeletonRemodeling
  matrixMetalloproteinaseActivityClosed : P.matrixMetalloproteinaseActivity
  migrationSpeedControlClosed : P.migrationSpeedControl

def CellMigrationInvasionClosed (P : CellMigrationInvasionPackage) : Prop :=
  P.focalAdhesionDynamics ∧ P.actinCytoskeletonRemodeling ∧ P.matrixMetalloproteinaseActivity ∧ P.migrationSpeedControl

theorem cell_migration_invasion_closed_from_evidence
    (P : CellMigrationInvasionPackage) (E : CellMigrationInvasionEvidence P) :
    CellMigrationInvasionClosed P := by
  exact And.intro E.focalAdhesionDynamicsClosed
    (And.intro E.actinCytoskeletonRemodelingClosed
      (And.intro E.matrixMetalloproteinaseActivityClosed E.migrationSpeedControlClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse
