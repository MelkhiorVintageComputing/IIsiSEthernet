# SEthernet for the Macintosh IIsi

This is a design for a PDS Ethernet device for the Macintosh IIsi & other macintoshes with a similar PDS slot. This is not my own design, but a redesign in a different form factor of [the SEthernet/30 for the Macintosh SE/30](https://github.com/rhalkyard/SEthernet). It's meant to be gateware- (for the CPLD), firmware- (the declaration ROM) and software-compatible (the Ethernet driver) with the original.

Known issues:
* The silkscreen for the slotid is backward between '0' and '1' (the slotid are negative logic)
* The Flash ROM is wired bit-reversed. While it has no impact on data or any regular software, it does cause an issue with the 'command bytes' from the ROM programmer - the 'command bytes' need to be bit-reversed to work, so this design is not compatible with the standard programRom.

License is the same as the original:

The hardware components of this project (board designs and programmable logic) are licensed under the Strongly-Reciprocal CERN Open Hardware License, version 2.

Please see also [the comments on licensing of the original design](https://github.com/rhalkyard/SEthernet?tab=readme-ov-file#license).
