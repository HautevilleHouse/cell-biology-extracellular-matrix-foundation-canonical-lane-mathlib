import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMRemodelingDiseasesPackage where
  fibrosis : Prop
  cancerMetastasis : Prop
  osteoarthritis : Prop
  atherosclerosis : Prop
  marfanSyndrome : Prop
  ehlersDanlosSyndrome : Prop
  woundHealingDisorders : Prop

structure ECMRemodelingDiseasesEvidence (E : ECMRemodelingDiseasesPackage) where
  fibrosisClosed : E.fibrosis
  cancerMetastasisClosed : E.cancerMetastasis
  osteoarthritisClosed : E.osteoarthritis
  atherosclerosisClosed : E.atherosclerosis
  marfanSyndromeClosed : E.marfanSyndrome
  ehlersDanlosSyndromeClosed : E.ehlersDanlosSyndrome
  woundHealingDisordersClosed : E.woundHealingDisorders

def ECMRemodelingDiseasesClosed (E : ECMRemodelingDiseasesPackage) : Prop :=
  E.fibrosis ∧ E.cancerMetastasis ∧ E.osteoarthritis ∧
  E.atherosclerosis ∧ E.marfanSyndrome ∧ E.ehlersDanlosSyndrome ∧ E.woundHealingDisorders

theorem ecm_remodeling_diseases_closed_from_evidence (E : ECMRemodelingDiseasesPackage)
    (Ev : ECMRemodelingDiseasesEvidence E) : ECMRemodelingDiseasesClosed E := by
  exact And.intro Ev.fibrosisClosed
    (And.intro Ev.cancerMetastasisClosed
      (And.intro Ev.osteoarthritisClosed
        (And.intro Ev.atherosclerosisClosed
          (And.intro Ev.marfanSyndromeClosed
            (And.intro Ev.ehlersDanlosSyndromeClosed Ev.woundHealingDisordersClosed)))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse