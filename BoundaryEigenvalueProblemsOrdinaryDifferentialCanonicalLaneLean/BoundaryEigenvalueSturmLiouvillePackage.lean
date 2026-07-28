import BoundaryEigenvalueAdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SturmLiouvillePackage where
  regularProblem : Prop
  selfAdjoint : Prop
  discreteSpectrum : Prop
  eigenfunctionOrthogonality : Prop

structure SturmLiouvilleEvidence (P : SturmLiouvillePackage) where
  regularProblemClosed : P.regularProblem
  selfAdjointClosed : P.selfAdjoint
  discreteSpectrumClosed : P.discreteSpectrum
  eigenfunctionOrthogonalityClosed : P.eigenfunctionOrthogonality

def SturmLiouvilleClosed (P : SturmLiouvillePackage) : Prop :=
  P.regularProblem ∧ P.selfAdjoint ∧ P.discreteSpectrum ∧ P.eigenfunctionOrthogonality

theorem sturm_liouville_closed_from_evidence (P : SturmLiouvillePackage) (E : SturmLiouvilleEvidence P) :
    SturmLiouvilleClosed P :=
  And.intro E.regularProblemClosed
    (And.intro E.selfAdjointClosed
      (And.intro E.discreteSpectrumClosed E.eigenfunctionOrthogonalityClosed))

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse