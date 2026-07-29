import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure ThermodynamicState where
  temperature : Type u
  pressure : Type v
  composition : Type w
  freeEnergy : Prop
  phaseBoundary : Prop
  freeEnergyTerm : freeEnergy
  phaseBoundaryTerm : phaseBoundary

structure PhaseDiagramPackage where
  state : ThermodynamicState
  phaseRegions : Type u
  transitionLines : Type v
  criticalPoints : Prop
  equilibriumConditions : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  criticalPointsClosed : P.criticalPoints
  equilibriumConditionsClosed : P.equilibriumConditions
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.criticalPoints ∧ P.equilibriumConditions ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.criticalPointsClosed
    (And.intro E.equilibriumConditionsClosed E.metastablePhasesClosed)

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse