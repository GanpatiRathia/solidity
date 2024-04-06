int8 y = -3;
uint x = uint(y);
//Now x = 0xfffff..fd == two complement representation of -3 in 256 bit format.

uint32 a = 0x12345678;
uint16 b = uint16(a); // b = 0x5678
Conversion to higher type adds padding bits to the left.

uint16 a = 0x1234;
uint32 b = uint32(a); // b = 0x00001234 
Conversion to smaller byte costs higher order data.

bytes2 a = 0x1234;
bytes1 b = bytes1(a); // b = 0x12
Conversion to larger byte add padding bits to the right.

bytes2 a = 0x1234;
bytes4 b = bytes4(a); // b = 0x12340000
Conversion between fixed size bytes and int is only possible when both are of same size.

bytes2 a = 0x1234;
uint32 b = uint16(a); // b = 0x00001234
uint32 c = uint32(bytes4(a)); // c = 0x12340000
uint8 d = uint8(uint16(a)); // d = 0x34
uint8 e = uint8(bytes1(a)); // e = 0x12
Hexadecimal numbers can be assigned to any integer type if no truncation is needed.

uint8 a = 12; // no error
uint32 b = 1234; // no error
uint16 c = 0x123456; // error, as truncation required to 0x3456

