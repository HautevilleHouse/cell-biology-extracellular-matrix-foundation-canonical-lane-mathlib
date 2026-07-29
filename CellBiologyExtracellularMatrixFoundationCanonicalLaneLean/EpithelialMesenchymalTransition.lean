import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure EMTProgramPackage where
  eCadherinDownregulation : Prop
  mesenchymalMarkerUpregulation : Prop
  cellMigrationActivated : Prop

structure EMTProgramEvidence (E : EMTProgramPackage) where
  eCadherinDownregulationClosed : E.eCadherinDownregulation
  mesenchymalMarkerUpregulationClosed : E.mesenchymalMarkerUpregulation
  cellMigrationActivatedClosed : E.cellMigrationActivated

def EMTProgramClosed (E : EMTProgramPackage) : Prop :=
  E.eCadherinDownregulation ∧ E.mesenchymalMarkerUpregulation ∧ E.cellMigrationActivated

theorem emt_program_closed_from_evidence (E : EMTProgramPackage) (Ev : EMTProgramEvidence E) :
    EMTProgramClosed E := by
  exact And.intro Ev.eCadherinDownregulationClosed
    (And.intro Ev.mesenchymalMarkerUpregulationClosed Ev.cellMigrationActivatedClosed)

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse