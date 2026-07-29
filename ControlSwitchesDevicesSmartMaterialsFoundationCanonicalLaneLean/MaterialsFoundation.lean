import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure MaterialsFoundationPackage where
  crystallography : CrystallographyPackage
  phaseDiagrams : PhaseDiagramPackage
  elasticity : ∃ (E : ElasticityTensor), ElasticityPackage E
  fractureMechanics : FractureMechanicsPackage
  smartMaterials : SmartMaterialsControlPackage

structure MaterialsFoundationEvidence (M : MaterialsFoundationPackage) where
  crystallographyClosed : CrystallographyClosed M.crystallography
  phaseDiagramsClosed : PhaseDiagramClosed M.phaseDiagrams
  elasticityClosed : ∃ (E : ElasticityTensor) (P : ElasticityPackage E), ElasticityClosed P
  fractureMechanicsClosed : FractureMechanicsClosed M.fractureMechanics
  smartMaterialsClosed : SmartMaterialsControlClosed M.smartMaterials

def MaterialsFoundationClosed (M : MaterialsFoundationPackage) : Prop :=
  CrystallographyClosed M.crystallography ∧
  PhaseDiagramClosed M.phaseDiagrams ∧
  (∃ (E : ElasticityTensor) (P : ElasticityPackage E), ElasticityClosed P) ∧
  FractureMechanicsClosed M.fractureMechanics ∧
  SmartMaterialsControlClosed M.smartMaterials

theorem materials_foundation_closed_from_evidence (M : MaterialsFoundationPackage) (E : MaterialsFoundationEvidence M) :
    MaterialsFoundationClosed M := by
  exact And.intro E.crystallographyClosed
    (And.intro E.phaseDiagramsClosed
      (And.intro E.elasticityClosed
        (And.intro E.fractureMechanicsClosed E.smartMaterialsClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
