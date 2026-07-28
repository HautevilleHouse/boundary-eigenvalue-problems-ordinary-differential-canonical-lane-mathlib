import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure SpectralTheoremPackage where
  eigenvalueSequence : Type u
  eigenfunctionBasis : Type v
  spectralResolution : Type w
  parsevalIdentity : Prop
  minMaxPrinciple : Prop
  weylAsymptotic : Prop

structure SpectralTheoremEvidence (S : SpectralTheoremPackage) where
  parsevalIdentityClosed : S.parsevalIdentity
  minMaxPrincipleClosed : S.minMaxPrinciple
  weylAsymptoticClosed : S.weylAsymptotic

def SpectralTheoremClosed (S : SpectralTheoremPackage) : Prop :=
  S.parsevalIdentity ∧ S.minMaxPrinciple ∧ S.weylAsymptotic

theorem spectral_theorem_closed_from_evidence (S : SpectralTheoremPackage) (E : SpectralTheoremEvidence S) :
    SpectralTheoremClosed S := by
  exact And.intro E.parsevalIdentityClosed (And.intro E.minMaxPrincipleClosed E.weylAsymptoticClosed)

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse