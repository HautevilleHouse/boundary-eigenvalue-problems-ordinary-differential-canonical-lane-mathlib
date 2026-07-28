import BoundaryEigenvalueLemmas

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedBoundaryEigenvalueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_eigenvalue_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryEigenvalueClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse