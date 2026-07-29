import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure SwitchingCrystalPackage where
  lattice : Type u
  polarizationField : lattice → ℝ
  switchingThreshold : ℝ
  responseTime : ℝ
  hysteresis : Prop

def SwitchingCrystalClosed (S : SwitchingCrystalPackage) : Prop :=
  S.hysteresis ∧ S.switchingThreshold > 0

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse