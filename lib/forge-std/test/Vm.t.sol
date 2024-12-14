// SPDX-License-Identifier: MIT

import {Test} from "../src/Test.sol";
import {Vm, VmSafe} from "../src/Vm.sol";

// These tests ensure that functions are never accidentally removed from a Vm interface, or
// inadvertently moved between Vm and VmSafe. These tests must be updated each time a function is
// added to or removed from Vm or VmSafe.
contract VmTest is Test {
    function test_VmInterfaceId() public pure {
        assertEq(type(Vm).interfaceId, bytes4(0x21af9696), "Vm");
    }

    function test_VmSafeInterfaceId() public pure {
        assertEq(type(VmSafe).interfaceId, bytes4(0x92fe99ad), "VmSafe");
    }
}
