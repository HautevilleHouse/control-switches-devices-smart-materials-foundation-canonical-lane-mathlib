import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure SmartMaterialsPackage where
  shapeMemoryEffect : Prop
  piezoelectricResponse : Prop
  magnetostriction : Prop
  phaseTransitionTemperature : Prop
  actuationStrain : Prop

structure SmartMaterialsEvidence (S : SmartMaterialsPackage) where
  shapeMemoryEffectClosed : S.shapeMemoryEffect
  piezoelectricResponseClosed : S.piezoelectricResponse
  magnetostrictionClosed : S.magnetostriction
  phaseTransitionTemperatureClosed : S.phaseTransitionTemperature
  actuationStrainClosed : S.actuationStrain

def SmartMaterialsClosed (S : SmartMaterialsPackage) : Prop :=
  S.shapeMemoryEffect ∧ S.piezoelectricResponse ∧ S.magnetostriction ∧ S.phaseTransitionTemperature ∧ S.actuationStrain

theorem smart_materials_closed_from_evidence (S : SmartMaterialsPackage) (E : SmartMaterialsEvidence S) : SmartMaterialsClosed S :=
  by
    exact And.intro E.shapeMemoryEffectClosed
      (And.intro E.piezoelectricResponseClosed
        (And.intro E.magnetostrictionClosed
          (And.intro E.phaseTransitionTemperatureClosed E.actuationStrainClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse