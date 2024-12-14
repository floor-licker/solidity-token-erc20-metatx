// SPDX-License-Identifier: MIT

pragma experimental ABIEncoderV2;

import "../../src/Script.sol";

// The purpose of this contract is to benchmark compilation time to avoid accidentally introducing
// a change that results in very long compilation times with via-ir. See https://github.com/foundry-rs/forge-std/issues/207
contract CompilationScriptBase is ScriptBase {}
