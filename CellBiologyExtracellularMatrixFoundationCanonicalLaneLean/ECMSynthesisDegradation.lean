import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure ECMSynthesisDegradationPackage where
  collagenSynthesis : Prop
  elastinSynthesis : Prop
  proteoglycanSynthesis : Prop
  mmpRegulation : Prop
  timpInhibition : Prop
  lysylOxidaseCrosslinking : Prop
  turnoverRate : Prop

structure ECMSynthesisDegradationEvidence (E : ECMSynthesisDegradationPackage) where
  collagenSynthesisClosed : E.collagenSynthesis
  elastinSynthesisClosed : E.elastinSynthesis
  proteoglycanSynthesisClosed : E.proteoglycanSynthesis
  mmpRegulationClosed : E.mmpRegulation
  timpInhibitionClosed : E.timpInhibition
  lysylOxidaseCrosslinkingClosed : E.lysylOxidaseCrosslinking
  turnoverRateClosed : E.turnoverRate

def ECMSynthesisDegradationClosed (E : ECMSynthesisDegradationPackage) : Prop :=
  E.collagenSynthesis ∧ E.elastinSynthesis ∧ E.proteoglycanSynthesis ∧
  E.mmpRegulation ∧ E.timpInhibition ∧ E.lysylOxidaseCrosslinking ∧ E.turnoverRate

theorem ecm_synthesis_degradation_closed_from_evidence (E : ECMSynthesisDegradationPackage)
    (Ev : ECMSynthesisDegradationEvidence E) : ECMSynthesisDegradationClosed E := by
  exact And.intro Ev.collagenSynthesisClosed
    (And.intro Ev.elastinSynthesisClosed
      (And.intro Ev.proteoglycanSynthesisClosed
        (And.intro Ev.mmpRegulationClosed
          (And.intro Ev.timpInhibitionClosed
            (And.intro Ev.lysylOxidaseCrosslinkingClosed Ev.turnoverRateClosed)))))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse