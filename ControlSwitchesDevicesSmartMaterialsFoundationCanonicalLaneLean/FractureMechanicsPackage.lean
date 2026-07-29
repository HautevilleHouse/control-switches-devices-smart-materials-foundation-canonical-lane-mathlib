import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressTensor : Type u
  strainEnergyReleaseRate : ℝ
  crackPropagationLaw : Prop
  toughnessParameter : ℝ
  fatigueCriteria : Prop

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationLaw ∧ F.fatigueCriteria ∧ F.toughnessParameter > 0

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse