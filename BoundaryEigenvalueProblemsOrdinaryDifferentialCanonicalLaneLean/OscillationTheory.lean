import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.SturmLiouvilleProblem

/-!
# Oscillation Theory Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure OscillationTheoryPackage {S : SturmLiouvillePackage} where
  eigenfunctionZeros : ℕ → Set ℝ
  sturmOscillationTheorem : Prop
  nodeCounting : Prop
  sturmOscillationTheoremClosed : sturmOscillationTheorem
  nodeCountingClosed : nodeCounting

structure OscillationTheoryEvidence {S : SturmLiouvillePackage} (O : OscillationTheoryPackage S) where
  sturmOscillationTheoremClosed : O.sturmOscillationTheorem
  nodeCountingClosed : O.nodeCounting

def OscillationTheoryClosed {S : SturmLiouvillePackage} (O : OscillationTheoryPackage S) : Prop :=
  O.sturmOscillationTheorem ∧ O.nodeCounting

theorem oscillation_theory_closed_from_evidence {S : SturmLiouvillePackage} (O : OscillationTheoryPackage S) (E : OscillationTheoryEvidence O) : OscillationTheoryClosed O :=
  And.intro E.sturmOscillationTheoremClosed E.nodeCountingClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse