import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

/-!
# Sturm-Liouville Operator Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SturmLiouvilleOperator where
  interval : Set ℝ
  p : ℝ → ℝ
  q : ℝ → ℝ
  w : ℝ → ℝ
  boundaryConditionType : String
  pPositive : ∀ x ∈ interval, p x > 0
  wPositive : ∀ x ∈ interval, w x > 0
  pSmooth : ContDiffOn ℝ ∞ p interval
  qMeasurable : MeasurableOn q interval
  wSmooth : ContDiffOn ℝ ∞ w interval

structure SturmLiouvilleEvidence (S : SturmLiouvilleOperator) where
  pPositiveClosed : ∀ x ∈ S.interval, S.p x > 0
  wPositiveClosed : ∀ x ∈ S.interval, S.w x > 0

def SturmLiouvilleClosed (S : SturmLiouvilleOperator) : Prop :=
  (∀ x ∈ S.interval, S.p x > 0) ∧ (∀ x ∈ S.interval, S.w x > 0)

theorem sturm_liouville_closed_from_evidence (S : SturmLiouvilleOperator)
    (E : SturmLiouvilleEvidence S) : SturmLiouvilleClosed S := by
  exact And.intro E.pPositiveClosed E.wPositiveClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse