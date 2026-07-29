import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure SmartMaterialsAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  smartMaterialProperty : Prop
  conclusion : smartMaterialProperty

def SmartMaterialsWitnessClosed (O : SmartMaterialsAdmittedObject) : Prop :=
  O.smartMaterialProperty

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
