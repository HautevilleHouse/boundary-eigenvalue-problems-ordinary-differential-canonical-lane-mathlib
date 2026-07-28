import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.SturmLiouvilleProblem

/-!
# Spectral Decomposition Package
-/

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SpectralDecompositionPackage {S : SturmLiouvillePackage} where
  operatorType : String
  spectralResolution : Prop
  eigenfunctionExpansion : Prop
  spectralResolutionClosed : spectralResolution
  eigenfunctionExpansionClosed : eigenfunctionExpansion

structure SpectralDecompositionEvidence {S : SturmLiouvillePackage} (D : SpectralDecompositionPackage S) where
  spectralResolutionClosed : D.spectralResolution
  eigenfunctionExpansionClosed : D.eigenfunctionExpansion

def SpectralDecompositionClosed {S : SturmLiouvillePackage} (D : SpectralDecompositionPackage S) : Prop :=
  D.spectralResolution ∧ D.eigenfunctionExpansion

theorem spectral_decomposition_closed_from_evidence {S : SturmLiouvillePackage} (D : SpectralDecompositionPackage S) (E : SpectralDecompositionEvidence D) : SpectralDecompositionClosed D :=
  And.intro E.spectralResolutionClosed E.eigenfunctionExpansionClosed

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse