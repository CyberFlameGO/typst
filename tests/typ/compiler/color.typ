// Test color modification methods.

---
// Test gray color modification.
#test(luma(20%).lighten(50%), luma(60%))
#test(luma(80%).darken(20%), luma(63.9%))
#test(luma(80%).negate(), luma(20%))

---
// Test CMYK color conversion.
// Ref: true
#let c = cmyk(50%, 64%, 16%, 17%)
#rect(width: 1cm, fill: cmyk(69%, 11%, 69%, 41%))
#rect(width: 1cm, fill: c)
#rect(width: 1cm, fill: c.negate())

#for x in range(0, 11) {
  square(size: 9pt, fill: c.lighten(x * 10%))
}
#for x in range(0, 11) {
  square(size: 9pt, fill: c.darken(x * 10%))
}