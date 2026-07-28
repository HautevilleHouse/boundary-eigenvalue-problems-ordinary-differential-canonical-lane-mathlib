import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.SturmLiouvilleProblem

/-!
# Non-Self-Adjoint Problems Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure NonSelfAdjointPackage {S : SturmLiouvillePackage} where
  indefiniteMetric : Type
  kreinSpaceStructure : Prop
  spectralFunction : Prop
  kreinSpaceStructureClosed : kreinSpaceStructure
  spectralFunctionClosed : spectralFunction

structure NonSelfAdjointEvidence {S : SturmLiouvillePackage} (N : NonSelfAdjointPackage S) where
  kreinSpaceStructureClosed : N.kreinSpaceStructure
  spectralFunctionClosed : N.spectralFunction

def NonSelfAdjointClosed {S : SturmLiouvillePackage} (N : NonSelfAdjointPackage S) : Prop :=
  N.kreinSpaceStructure ∧ N.spectralFunction

theorem non_self_adjoint_closed_from_evidence {S : SturmLiouvillePackage} (N : NonSelfAdjointPackage S) (E : NonSelfAdjointEvidence N) : NonSelfAdjointClosed N :=
  And.intro E.kreinSpaceStructureClosed E.spectralFunctionClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse