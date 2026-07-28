import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure GreenFunctionPackage where
  kernel : Type u
  symmetry : Prop
  resolventRepresentation : Prop
  eigenfunctionExpansion : Prop
  integralOperator : Type v
  compactness : Prop

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  symmetryClosed : G.symmetry
  resolventRepresentationClosed : G.resolventRepresentation
  eigenfunctionExpansionClosed : G.eigenfunctionExpansion
  compactnessClosed : G.compactness

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.symmetry ∧ G.resolventRepresentation ∧ G.eigenfunctionExpansion ∧ G.compactness

theorem green_function_closed_from_evidence (G : GreenFunctionPackage) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.symmetryClosed (And.intro E.resolventRepresentationClosed (And.intro E.eigenfunctionExpansionClosed E.compactnessClosed))

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse