const Strings = artifacts.require("Strings");

contract("Strings", () => {
  let strings = null;
  before(async () => {
    strings = await Strings.deployed();
  });

  it("should return length of string", async () => {
    const length = await strings.length("cat");
    assert(length.toNumber() === 3);
  });

  it("should concatenate two strings", async () => {
    const concatenatedString = await strings.concatenate("work", "space");
    assert(concatenatedString === "workspace");
  });
});
