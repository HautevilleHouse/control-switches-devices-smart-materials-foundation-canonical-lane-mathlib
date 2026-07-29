import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeSymmetry : Type u
  bravaisLatticeClassified : Prop
  unitCellSymmetries : Prop
  xrayDiffractionPattern : Prop
  crystallographicConstraintSatisfied : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  unitCellSymmetriesClosed : C.unitCellSymmetries
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern
  crystallographicConstraintSatisfiedClosed : C.crystallographicConstraintSatisfied

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.unitCellSymmetries ∧ C.xrayDiffractionPattern ∧ C.crystallographicConstraintSatisfied

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.unitCellSymmetriesClosed
      (And.intro E.xrayDiffractionPatternClosed E.crystallographicConstraintSatisfiedClosed))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse