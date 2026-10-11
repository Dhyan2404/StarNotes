package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import net.p110sf.saxon.value.FloatingPointConverter;

/* loaded from: classes10.dex */
class PrecisionDecimalDV extends TypeValidator {

    /* loaded from: classes10.dex */
    public static class XPrecisionDecimal {
        private String canonical;
        String ivalue;
        int sign;
        int totalDigits = 0;
        int intDigits = 0;
        int fracDigits = 0;
        String fvalue = "";
        int pvalue = 0;

        public XPrecisionDecimal(String str) throws NumberFormatException {
            this.sign = 1;
            this.ivalue = "";
            if (str.equals("NaN")) {
                this.ivalue = str;
                this.sign = 0;
            }
            if (str.equals("+INF") || str.equals(FloatingPointConverter.f102870b) || str.equals(FloatingPointConverter.f102869a)) {
                this.ivalue = str.charAt(0) == '+' ? str.substring(1) : str;
            } else {
                initD(str);
            }
        }

        private int compare(XPrecisionDecimal xPrecisionDecimal) {
            int i;
            int i2 = this.pvalue;
            if ((i2 != 0 || xPrecisionDecimal.pvalue != 0) && i2 != (i = xPrecisionDecimal.pvalue)) {
                int i3 = this.intDigits;
                int i4 = i3 + i2;
                int i5 = xPrecisionDecimal.intDigits;
                if (i4 != i5 + i) {
                    return i3 + i2 > i5 + i ? 1 : -1;
                }
                int i6 = 0;
                if (i2 > i) {
                    int i7 = i2 - i;
                    StringBuffer stringBuffer = new StringBuffer(this.ivalue);
                    StringBuffer stringBuffer2 = new StringBuffer(this.fvalue);
                    while (i6 < i7) {
                        if (i6 < this.fracDigits) {
                            stringBuffer.append(this.fvalue.charAt(i6));
                            stringBuffer2.deleteCharAt(i6);
                        } else {
                            stringBuffer.append('0');
                        }
                        i6++;
                    }
                    return compareDecimal(stringBuffer.toString(), xPrecisionDecimal.ivalue, stringBuffer2.toString(), xPrecisionDecimal.fvalue);
                }
                int i8 = i - i2;
                StringBuffer stringBuffer3 = new StringBuffer(xPrecisionDecimal.ivalue);
                StringBuffer stringBuffer4 = new StringBuffer(xPrecisionDecimal.fvalue);
                while (i6 < i8) {
                    if (i6 < xPrecisionDecimal.fracDigits) {
                        stringBuffer3.append(xPrecisionDecimal.fvalue.charAt(i6));
                        stringBuffer4.deleteCharAt(i6);
                    } else {
                        stringBuffer3.append('0');
                    }
                    i6++;
                }
                return compareDecimal(this.ivalue, stringBuffer3.toString(), this.fvalue, stringBuffer4.toString());
            }
            return intComp(xPrecisionDecimal);
        }

        private int compareDecimal(String str, String str2, String str3, String str4) {
            int compareTo = str.compareTo(str3);
            if (compareTo != 0) {
                return compareTo > 0 ? 1 : -1;
            }
            if (str2.equals(str4)) {
                return 0;
            }
            StringBuffer stringBuffer = new StringBuffer(str2);
            StringBuffer stringBuffer2 = new StringBuffer(str4);
            truncateTrailingZeros(stringBuffer, stringBuffer2);
            int compareTo2 = stringBuffer.toString().compareTo(stringBuffer2.toString());
            if (compareTo2 == 0) {
                return 0;
            }
            return compareTo2 > 0 ? 1 : -1;
        }

        private int compareFractionalPart(XPrecisionDecimal xPrecisionDecimal) {
            if (this.fvalue.equals(xPrecisionDecimal.fvalue)) {
                return 0;
            }
            StringBuffer stringBuffer = new StringBuffer(this.fvalue);
            StringBuffer stringBuffer2 = new StringBuffer(xPrecisionDecimal.fvalue);
            truncateTrailingZeros(stringBuffer, stringBuffer2);
            return stringBuffer.toString().compareTo(stringBuffer2.toString());
        }

        private int intComp(XPrecisionDecimal xPrecisionDecimal) {
            int i = this.intDigits;
            int i2 = xPrecisionDecimal.intDigits;
            return i != i2 ? i > i2 ? 1 : -1 : compareDecimal(this.ivalue, xPrecisionDecimal.ivalue, this.fvalue, xPrecisionDecimal.fvalue);
        }

        private void makeCanonical() {
            this.canonical = "TBD by Working Group";
        }

        private void truncateTrailingZeros(StringBuffer stringBuffer, StringBuffer stringBuffer2) {
            int length = stringBuffer.length();
            while (true) {
                length--;
                if (length < 0 || stringBuffer.charAt(length) != '0') {
                    break;
                } else {
                    stringBuffer.deleteCharAt(length);
                }
            }
            for (int length2 = stringBuffer2.length() - 1; length2 >= 0 && stringBuffer2.charAt(length2) == '0'; length2--) {
                stringBuffer2.deleteCharAt(length2);
            }
        }

        public int compareTo(XPrecisionDecimal xPrecisionDecimal) {
            if (this.sign == 0) {
                return 2;
            }
            if (this.ivalue.equals(FloatingPointConverter.f102870b) || xPrecisionDecimal.ivalue.equals(FloatingPointConverter.f102870b)) {
                if (this.ivalue.equals(xPrecisionDecimal.ivalue)) {
                    return 0;
                }
                return this.ivalue.equals(FloatingPointConverter.f102870b) ? 1 : -1;
            }
            if (this.ivalue.equals(FloatingPointConverter.f102869a) || xPrecisionDecimal.ivalue.equals(FloatingPointConverter.f102869a)) {
                if (this.ivalue.equals(xPrecisionDecimal.ivalue)) {
                    return 0;
                }
                return this.ivalue.equals(FloatingPointConverter.f102869a) ? -1 : 1;
            }
            int i = this.sign;
            int i2 = xPrecisionDecimal.sign;
            return i != i2 ? i > i2 ? 1 : -1 : i * compare(xPrecisionDecimal);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof XPrecisionDecimal) && compareTo((XPrecisionDecimal) obj) == 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00b8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void initD(java.lang.String r10) throws java.lang.NumberFormatException {
            /*
                r9 = this;
                int r0 = r10.length()
                if (r0 == 0) goto Ld3
                r1 = 0
                char r2 = r10.charAt(r1)
                r3 = 43
                r4 = 1
                if (r2 != r3) goto L12
            L10:
                r2 = r4
                goto L1f
            L12:
                char r2 = r10.charAt(r1)
                r3 = 45
                if (r2 != r3) goto L1e
                r2 = -1
                r9.sign = r2
                goto L10
            L1e:
                r2 = r1
            L1f:
                r3 = r2
            L20:
                if (r3 >= r0) goto L2d
                char r5 = r10.charAt(r3)
                r6 = 48
                if (r5 != r6) goto L2d
                int r3 = r3 + 1
                goto L20
            L2d:
                r5 = r3
            L2e:
                if (r5 >= r0) goto L3d
                char r6 = r10.charAt(r5)
                boolean r6 = com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator.isDigit(r6)
                if (r6 == 0) goto L3d
                int r5 = r5 + 1
                goto L2e
            L3d:
                if (r5 >= r0) goto L82
                char r6 = r10.charAt(r5)
                r7 = 46
                if (r6 == r7) goto L5e
                char r6 = r10.charAt(r5)
                r8 = 69
                if (r6 == r8) goto L5e
                char r6 = r10.charAt(r5)
                r8 = 101(0x65, float:1.42E-43)
                if (r6 != r8) goto L58
                goto L5e
            L58:
                java.lang.NumberFormatException r9 = new java.lang.NumberFormatException
                r9.<init>()
                throw r9
            L5e:
                char r6 = r10.charAt(r5)
                if (r6 != r7) goto L76
                int r1 = r5 + 1
                r6 = r1
            L67:
                if (r6 >= r0) goto L83
                char r7 = r10.charAt(r6)
                boolean r7 = com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator.isDigit(r7)
                if (r7 == 0) goto L83
                int r6 = r6 + 1
                goto L67
            L76:
                int r6 = r5 + 1
                java.lang.String r6 = r10.substring(r6, r0)
                int r6 = java.lang.Integer.parseInt(r6)
                r9.pvalue = r6
            L82:
                r6 = r1
            L83:
                if (r2 != r5) goto L8e
                if (r1 == r6) goto L88
                goto L8e
            L88:
                java.lang.NumberFormatException r9 = new java.lang.NumberFormatException
                r9.<init>()
                throw r9
            L8e:
                r2 = r1
            L8f:
                if (r2 >= r6) goto La4
                char r7 = r10.charAt(r2)
                boolean r7 = com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator.isDigit(r7)
                if (r7 == 0) goto L9e
                int r2 = r2 + 1
                goto L8f
            L9e:
                java.lang.NumberFormatException r9 = new java.lang.NumberFormatException
                r9.<init>()
                throw r9
            La4:
                int r2 = r5 - r3
                r9.intDigits = r2
                int r7 = r6 - r1
                r9.fracDigits = r7
                if (r2 <= 0) goto Lb4
                java.lang.String r2 = r10.substring(r3, r5)
                r9.ivalue = r2
            Lb4:
                int r2 = r9.fracDigits
                if (r2 <= 0) goto Lcb
                java.lang.String r1 = r10.substring(r1, r6)
                r9.fvalue = r1
                if (r6 >= r0) goto Lcb
                int r6 = r6 + r4
                java.lang.String r10 = r10.substring(r6, r0)
                int r10 = java.lang.Integer.parseInt(r10)
                r9.pvalue = r10
            Lcb:
                int r10 = r9.intDigits
                int r0 = r9.fracDigits
                int r10 = r10 + r0
                r9.totalDigits = r10
                return
            Ld3:
                java.lang.NumberFormatException r9 = new java.lang.NumberFormatException
                r9.<init>()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.dv.xs.PrecisionDecimalDV.XPrecisionDecimal.initD(java.lang.String):void");
        }

        public boolean isIdentical(XPrecisionDecimal xPrecisionDecimal) {
            if (this.ivalue.equals(xPrecisionDecimal.ivalue) && (this.ivalue.equals(FloatingPointConverter.f102870b) || this.ivalue.equals(FloatingPointConverter.f102869a) || this.ivalue.equals("NaN"))) {
                return true;
            }
            return this.sign == xPrecisionDecimal.sign && this.intDigits == xPrecisionDecimal.intDigits && this.fracDigits == xPrecisionDecimal.fracDigits && this.pvalue == xPrecisionDecimal.pvalue && this.ivalue.equals(xPrecisionDecimal.ivalue) && this.fvalue.equals(xPrecisionDecimal.fvalue);
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                makeCanonical();
            }
            return this.canonical;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((XPrecisionDecimal) obj).compareTo((XPrecisionDecimal) obj2);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XPrecisionDecimal(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "precisionDecimal"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 4088;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int getFractionDigits(Object obj) {
        return ((XPrecisionDecimal) obj).fracDigits;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int getTotalDigits(Object obj) {
        return ((XPrecisionDecimal) obj).totalDigits;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if ((obj2 instanceof XPrecisionDecimal) && (obj instanceof XPrecisionDecimal)) {
            return ((XPrecisionDecimal) obj).isIdentical((XPrecisionDecimal) obj2);
        }
        return false;
    }
}
