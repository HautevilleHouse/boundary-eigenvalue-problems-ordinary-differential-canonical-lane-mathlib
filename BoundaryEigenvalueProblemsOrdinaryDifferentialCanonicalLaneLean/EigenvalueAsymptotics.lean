import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure EigenvalueAsymptoticsPackage where
  weylLaw : Prop
  remainderEstimate : Prop
  eigenvalueCounting : Prop
  spectralFunction : Type u
  tauberianTheorem : Prop

structure EigenvalueAsymptoticsEvidence (E : EigenvalueAsymptoticsPackage) where
  weylLawClosed : E.weylLaw
  remainderEstimateClosed : E.remainderEstimate
  eigenvalueCountingClosed : E.eigenvalueCounting
  tauberianTheoremClosed : E.tauberianTheorem

def EigenvalueAsymptoticsClosed (E : EigenvalueAsymptoticsPackage) : Prop :=
  E.weylLaw ∧ E.remainderEstimate ∧ E.eigenvalueCounting ∧ E.tauberianTheorem

theorem eigenvalue_asymptotics_closed_from_evidence (E : EigenvalueAsymptoticsPackage) (Ev : EigenvalueAsymptoticsEvidence E) :
    EigenvalueAsymptoticsClosed E := by
  exact And.intro Ev.weylLawClosed (And.intro Ev.remainderEstimateClosed (And.intro Ev.eigenvalueCountingClosed Ev.tauberianTheoremClosed))

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse