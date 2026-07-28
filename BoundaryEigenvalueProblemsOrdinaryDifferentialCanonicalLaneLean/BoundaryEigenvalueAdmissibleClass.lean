import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SturmLiouvilleProblem where
  interval : Set ℝ
  p q : ℝ → ℝ
  pPositive : ∀ x, interval x → p x > 0
  boundaryConditions : Prop

structure BoundaryEigenvalueAdmittedObject where
  problem : SturmLiouvilleProblem
  eigenvalueExists : Prop
  eigenfunctionRegular : Prop
  conclusion : eigenvalueExists ∧ eigenfunctionRegular

structure AdmissibleClass where
  object : BoundaryEigenvalueAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse