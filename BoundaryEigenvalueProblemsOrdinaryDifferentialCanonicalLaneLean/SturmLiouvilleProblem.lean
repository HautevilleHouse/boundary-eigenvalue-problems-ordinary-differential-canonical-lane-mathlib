import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SturmLiouvillePackage where
  operator : Type u
  weightFunction : Type v
  boundaryConditions : Prop
  eigenvalue : Type w
  eigenfunction : Type x
  operatorSelfAdjoint : Prop
  eigenvalueReal : Prop
  eigenfunctionOrthonormal : Prop
  completeness : Prop

structure SturmLiouvilleEvidence (P : SturmLiouvillePackage) where
  operatorSelfAdjointClosed : P.operatorSelfAdjoint
  eigenvalueRealClosed : P.eigenvalueReal
  eigenfunctionOrthonormalClosed : P.eigenfunctionOrthonormal
  completenessClosed : P.completeness

def SturmLiouvilleClosed (P : SturmLiouvillePackage) : Prop :=
  P.operatorSelfAdjoint ∧ P.eigenvalueReal ∧ P.eigenfunctionOrthonormal ∧ P.completeness

theorem sturm_liouville_closed_from_evidence (P : SturmLiouvillePackage) (E : SturmLiouvilleEvidence P) :
    SturmLiouvilleClosed P := by
  exact And.intro E.operatorSelfAdjointClosed (And.intro E.eigenvalueRealClosed (And.intro E.eigenfunctionOrthonormalClosed E.completenessClosed))

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse