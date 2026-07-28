import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean

structure BoundaryEigenvalueAdmittedObject where
  operator : Type
  boundaryConditions : Prop
  eigenfunctionSpace : Type
  endpointStatement : Prop
  conclusion : endpointStatement

def BoundaryEigenvalueWitnessClosed (O : BoundaryEigenvalueAdmittedObject) : Prop :=
  O.endpointStatement

end BoundaryEigenvalueProblemsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse