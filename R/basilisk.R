
# necessary for python module control
bsklenv <- basilisk::BasiliskEnvironment(
  envname = "bsklenv", packages = "pandas==1.3.5",
  pkgname = "BiocSfaira", pip = c("tensorflow==2.8.0",
    "numpy==1.21.5", "sfaira==0.3.12", "protobuf==3.20.0",
    "scanpy==1.9.5"))


