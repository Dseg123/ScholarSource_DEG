WALLETADDRESS="aleo150spl5m27wzx4pnh8dp4t62jreg3dperf6lh6gv4taj2w59gh5qqsef5s5"
PRIVATEKEY="APrivateKey1zkpFHaVjeJk2jawXqXt1QXNTSftiHi1T5E5rCE5RNTGKMXh"

APPNAME="leo_token"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
  owner: aleo150spl5m27wzx4pnh8dp4t62jreg3dperf6lh6gv4taj2w59gh5qqsef5s5.private,
  microcredits: 50000000u64.private,
  _nonce: 7983024521049903167306372159959122273439253376153741602147965761092497705431group.public
}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``
