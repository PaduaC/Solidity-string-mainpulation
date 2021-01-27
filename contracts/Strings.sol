pragma solidity ^0.5.0;

contract Strings {
    function length(string memory str) pure public returns(uint) {
        // Convert string into bytes
        bytes memory str_bytes = bytes(str);
        return str_bytes.length;
    }
    
    function concatenate(
        string memory str1, 
        string memory str2
        ) 
        pure 
        public
        returns(string memory)
        {
            // Input bytes
            bytes memory str1_bytes = bytes(str1);
            bytes memory str2_bytes = bytes(str2);
            string memory str = new string(str1_bytes.length + str2_bytes.length);
            // Output bytes
            bytes memory str_bytes = bytes(str);
            
            // Index the bytes output
            uint j = 0;
            for(uint i = 0; i < str1_bytes.length; i++) {
                str_bytes[j] = str1_bytes[i];
                j++;
            }
            
            for(uint i = 0; i < str2_bytes.length; i++) {
                str_bytes[j] = str2_bytes[i];
                j++;
            }
            
            // Convert the value back into a string
            return string(str_bytes);
        }
}