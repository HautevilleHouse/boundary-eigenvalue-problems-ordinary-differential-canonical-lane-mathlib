import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.SturmLiouvilleProblem

/-!
# Singular Boundary Problems Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SingularBoundaryPackage {S : SturmLiouvillePackage} where
  endpointClassification : Set String
  weylTheory : Prop
  limitPointCircleClassification : Prop
  weylTheoryClosed : weylTheory
  limitPointCircleClassificationClosed : limitPointCircleClassification

structure SingularBoundaryEvidence {S : SturmLiouvillePackage} (P : SingularBoundaryPackage S) where
  weylTheoryClosed : P.weylTheory
  limitPointCircleClassificationClosed : P.limitPointCircleClassification

def SingularBoundaryClosed {S : SturmLiouvillePackage} (P : SingularBoundaryPackage S) : Prop :=
  P.weylTheory ∧ P.limitPointCircleClassification

theorem singular_boundary_closed_from_evidence {S : SturmLiouvillePackage} (P : SingularBoundaryPackage S) (E : SingularBoundaryEvidence P) : SingularBoundaryClosed P :=
  And.intro E.weylTheoryClosed E.limitPointCircleClassificationClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse