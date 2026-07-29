import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type
  strainTensor : Type
  elasticConstants : Prop
  hookesLaw : Prop
  equilibriumEquations : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  elasticConstantsClosed : E.elasticConstants
  hookesLawClosed : E.hookesLaw
  equilibriumEquationsClosed : E.equilibriumEquations

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.elasticConstants ∧ E.hookesLaw ∧ E.equilibriumEquations

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  by
    exact And.intro Ev.stressTensorClosed
      (And.intro Ev.strainTensorClosed
        (And.intro Ev.elasticConstantsClosed
          (And.intro Ev.hookesLawClosed Ev.equilibriumEquationsClosed)))

end ControlSwitchesDevicesSmartMaterialsFoundationCanonicalLaneLean
end HautevilleHouse