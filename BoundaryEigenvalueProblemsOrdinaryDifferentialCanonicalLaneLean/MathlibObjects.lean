import BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BoundaryEigenvalueSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BoundaryEigenvalueAdmittedObject where
  space : BoundaryEigenvalueSpace
  eigenvalueProblem : SturmLiouvilleProblem
  eigenvalueExists : Prop
  conclusion : eigenvalueExists

def BoundaryEigenvalueWitnessClosed (O : BoundaryEigenvalueAdmittedObject) : Prop :=
  O.eigenvalueExists

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse