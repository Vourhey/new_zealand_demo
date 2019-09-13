{ stdenv
, mkRosPackage
, robonomics_comm
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "new_zealand";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm ];

  meta = with stdenv.lib; {
    description = "";
    homepage = http://github.com/;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
