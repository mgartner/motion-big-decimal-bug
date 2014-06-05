motion-big-decimal-bug
======================

In RM v2.27 and prior, "0.0" in JSON is converted to a Float as it should be. In v2.28 and v2.29, it is converted to a BigDecimal which causes many problems.
