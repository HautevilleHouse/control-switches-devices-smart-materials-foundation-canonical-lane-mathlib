import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type
  fractureToughness : Prop
  crackPropagation : Prop
  energyReleaseRate : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  energyReleaseRateClosed : F.energyReleaseRate
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagation ∧ F.energyReleaseRate ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F :=
  by
    exact And.intro Ev.stressIntensityFactorClosed
      (And.intro Ev.fractureToughnessClosed
        (And.intro Ev.crackPropagationClosed
          (And.intro Ev.energyReleaseRateClosed Ev.fatigueLifeClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse