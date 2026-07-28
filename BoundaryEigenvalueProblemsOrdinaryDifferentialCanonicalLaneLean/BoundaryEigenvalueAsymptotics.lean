import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.SturmLiouvilleProblem

/-!
# Boundary Eigenvalue Asymptotics Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure EigenvalueAsymptoticsPackage {S : SturmLiouvillePackage} where
  countingFunction : ℝ → ℕ
  weylAsymptotic : Prop
  remainderEstimate : Prop
  weylAsymptoticClosed : weylAsymptotic
  remainderEstimateClosed : remainderEstimate

structure EigenvalueAsymptoticsEvidence {S : SturmLiouvillePackage} (A : EigenvalueAsymptoticsPackage S) where
  weylAsymptoticClosed : A.weylAsymptotic
  remainderEstimateClosed : A.remainderEstimate

def EigenvalueAsymptoticsClosed {S : SturmLiouvillePackage} (A : EigenvalueAsymptoticsPackage S) : Prop :=
  A.weylAsymptotic ∧ A.remainderEstimate

theorem eigenvalue_asymptotics_closed_from_evidence {S : SturmLiouvillePackage} (A : EigenvalueAsymptoticsPackage S) (E : EigenvalueAsymptoticsEvidence A) : EigenvalueAsymptoticsClosed A :=
  And.intro E.weylAsymptoticClosed E.remainderEstimateClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse