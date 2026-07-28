import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure BoundaryConditionPackage where
  regularSeparated : Prop
  periodic : Prop
  selfAdjoint : Prop
  sturmLiouvilleCompat : Prop
  subspaceDimension : ℕ
  boundaryForms : Type u

structure BoundaryConditionEvidence (B : BoundaryConditionPackage) where
  regularSeparatedClosed : B.regularSeparated
  periodicClosed : B.periodic
  selfAdjointClosed : B.selfAdjoint
  sturmLiouvilleCompatClosed : B.sturmLiouvilleCompat

def BoundaryConditionClosed (B : BoundaryConditionPackage) : Prop :=
  B.regularSeparated ∧ B.periodic ∧ B.selfAdjoint ∧ B.sturmLiouvilleCompat

theorem boundary_condition_closed_from_evidence (B : BoundaryConditionPackage) (E : BoundaryConditionEvidence B) :
    BoundaryConditionClosed B := by
  exact And.intro E.regularSeparatedClosed (And.intro E.periodicClosed (And.intro E.selfAdjointClosed E.sturmLiouvilleCompatClosed))

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse