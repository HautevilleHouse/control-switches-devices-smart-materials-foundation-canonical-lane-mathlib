import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramsPackage where
  phaseBoundary : Type
  criticalPoints : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop
  phaseFractions : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseBoundaryClosed : P.phaseBoundary
  criticalPointsClosed : P.criticalPoints
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule
  phaseFractionsClosed : P.phaseFractions

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseBoundary ∧ P.criticalPoints ∧ P.gibbsFreeEnergy ∧ P.leverRule ∧ P.phaseFractions

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage) (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P :=
  by
    exact And.intro E.phaseBoundaryClosed
      (And.intro E.criticalPointsClosed
        (And.intro E.gibbsFreeEnergyClosed
          (And.intro E.leverRuleClosed E.phaseFractionsClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse