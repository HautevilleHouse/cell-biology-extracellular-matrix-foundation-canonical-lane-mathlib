import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixFoundationCanonicalLaneLean

structure EcmGrowthFactorRegulationPackage where
  gFSequestration : Prop
  proteoglycanBinding : Prop
  growthFactorRelease : Prop
  matrixMetalloproteinaseRegulation : Prop

structure EcmGrowthFactorRegulationEvidence (P : EcmGrowthFactorRegulationPackage) where
  gFSequestrationClosed : P.gFSequestration
  proteoglycanBindingClosed : P.proteoglycanBinding
  growthFactorReleaseClosed : P.growthFactorRelease
  matrixMetalloproteinaseRegulationClosed : P.matrixMetalloproteinaseRegulation

def EcmGrowthFactorRegulationClosed (P : EcmGrowthFactorRegulationPackage) : Prop :=
  P.gFSequestration ∧ P.proteoglycanBinding ∧ P.growthFactorRelease ∧ P.matrixMetalloproteinaseRegulation

theorem ecm_growth_factor_regulation_closed_from_evidence
    (P : EcmGrowthFactorRegulationPackage) (E : EcmGrowthFactorRegulationEvidence P) :
    EcmGrowthFactorRegulationClosed P := by
  exact And.intro E.gFSequestrationClosed
    (And.intro E.proteoglycanBindingClosed
      (And.intro E.growthFactorReleaseClosed E.matrixMetalloproteinaseRegulationClosed))

end CellBiologyExtracellularMatrixFoundationCanonicalLaneLean
end HautevilleHouse