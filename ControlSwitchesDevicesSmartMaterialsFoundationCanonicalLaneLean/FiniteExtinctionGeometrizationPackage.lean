import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure FiniteExtinctionGeometrizationPackage where
  finiteExtinctionTime : ℝ
  geometrizationDecomposition : Prop
  thickThinDecomposition : Prop
  finalStateClassification : Prop
  phaseTransitionModeled : Prop

def FiniteExtinctionGeometrizationClosed (F : FiniteExtinctionGeometrizationPackage) : Prop :=
  F.geometrizationDecomposition ∧ F.thickThinDecomposition ∧ F.finalStateClassification ∧ F.phaseTransitionModeled ∧ F.finiteExtinctionTime > 0

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse