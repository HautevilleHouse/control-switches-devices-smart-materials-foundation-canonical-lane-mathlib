import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundary : Prop
  criticalPoint : Prop
  gibbsFreeEnergyMinimized : Prop
  elasticResponseTensor : Type w
  elasticConstantsDefined : Prop
  youngModulus : Prop
  poissonRatio : Prop
  fractureToughness : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundaryClosed : P.phaseBoundary
  criticalPointClosed : P.criticalPoint
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  elasticConstantsDefinedClosed : P.elasticConstantsDefined

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundary ∧ P.criticalPoint ∧ P.gibbsFreeEnergyMinimized ∧ P.elasticConstantsDefined

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundaryClosed
    (And.intro E.criticalPointClosed
      (And.intro E.gibbsFreeEnergyMinimizedClosed E.elasticConstantsDefinedClosed))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse