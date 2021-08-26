module.exports = {
  contracts_directory: "./build/flattened",
  compilers: {
    solc: {
      version: "^0.8.7",
      settings: {
        optimizer: {
          enabled: true,
          runs: 1000000000
        },
      }
    }
  },
  plugins: [
    'truffle-contract-size'
  ]
};
