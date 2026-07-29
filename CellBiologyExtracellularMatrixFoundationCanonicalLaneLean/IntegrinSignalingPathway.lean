import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure IntegrinSignalingPathwayPackage where
  outsideInSignaling : Prop
  insideOutSignaling : Prop
  focalAdhesionAssembly : Prop
  fakActivation : Prop
  srcFamilyKinase : Prop
  pi3kAktPathway : Prop
  rhoGtpaseRegulation : Prop
  cellMigration : Prop

structure IntegrinSignalingPathwayEvidence (I : IntegrinSignalingPathwayPackage) where
  outsideInSignalingClosed : I.outsideInSignaling
  insideOutSignalingClosed : I.insideOutSignaling
  focalAdhesionAssemblyClosed : I.focalAdhesionAssembly
  fakActivationClosed : I.fakActivation
  srcFamilyKinaseClosed : I.srcFamilyKinase
  pi3kAktPathwayClosed : I.pi3kAktPathway
  rhoGtpaseRegulationClosed : I.rhoGtpaseRegulation
  cellMigrationClosed : I.cellMigration

def IntegrinSignalingPathwayClosed (I : IntegrinSignalingPathwayPackage) : Prop :=
  I.outsideInSignaling ∧ I.insideOutSignaling ∧ I.focalAdhesionAssembly ∧
  I.fakActivation ∧ I.srcFamilyKinase ∧ I.pi3kAktPathway ∧
  I.rhoGtpaseRegulation ∧ I.cellMigration

theorem integrin_signaling_pathway_closed_from_evidence
    (I : IntegrinSignalingPathwayPackage)
    (Ev : IntegrinSignalingPathwayEvidence I) : IntegrinSignalingPathwayClosed I := by
  exact And.intro Ev.outsideInSignalingClosed
    (And.intro Ev.insideOutSignalingClosed
      (And.intro Ev.focalAdhesionAssemblyClosed
        (And.intro Ev.fakActivationClosed
          (And.intro Ev.srcFamilyKinaseClosed
            (And.intro Ev.pi3kAktPathwayClosed
              (And.intro Ev.rhoGtpaseRegulationClosed Ev.cellMigrationClosed))))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse