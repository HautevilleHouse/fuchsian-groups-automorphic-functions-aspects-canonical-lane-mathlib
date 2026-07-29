import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean",
  theoremName := "FuchsianGroupsAutomorphicFunctionsAspects",
  theoremObject := "Fuchsian uniformization and automorphic functions via admissible class bridge",
  classicalBoundary := "unrestricted classical boundary carried by formalization certificate",
  manifoldConstrainedStatement := "admissible-class theorem certificate internalized through bridge and gate closure",
  certificateLane := "fuchsian_automorphic_constrained",
  carriedRemainder := "remainder of classical analysis outside admissible closure"
}

end FuchsianGroupsAutomorphicFunctionsAspectsCanonicalLaneLean
end HautevilleHouse