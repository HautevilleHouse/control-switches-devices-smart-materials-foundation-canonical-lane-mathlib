import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type
  primitiveCellVolume : Prop
  symmetryGroup : Type
  xrayStructureFactor : Prop
  basisAtomPositions : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  primitiveCellVolumeClosed : C.primitiveCellVolume
  symmetryGroupClosed : C.symmetryGroup
  xrayStructureFactorClosed : C.xrayStructureFactor
  basisAtomPositionsClosed : C.basisAtomPositions

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.primitiveCellVolume ∧ C.symmetryGroup ∧ C.xrayStructureFactor ∧ C.basisAtomPositions

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  by
    exact And.intro E.bravaisLatticeClosed
      (And.intro E.primitiveCellVolumeClosed
        (And.intro E.symmetryGroupClosed
          (And.intro E.xrayStructureFactorClosed E.basisAtomPositionsClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse