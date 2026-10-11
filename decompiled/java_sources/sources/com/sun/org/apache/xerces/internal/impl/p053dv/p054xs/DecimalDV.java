package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes10.dex */
public class DecimalDV extends TypeValidator {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public final int compare(Object obj, Object obj2) {
        return ((XDecimal) obj).compareTo((XDecimal) obj2);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XDecimal(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "decimal"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public final short getAllowedFacets() {
        return (short) 4088;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public final int getFractionDigits(Object obj) {
        return ((XDecimal) obj).fracDigits;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public final int getTotalDigits(Object obj) {
        return ((XDecimal) obj).totalDigits;
    }

    /* loaded from: classes10.dex */
    public static class XDecimal implements XSDecimal {
        private String canonical;
        int sign = 1;
        int totalDigits = 0;
        int intDigits = 0;
        int fracDigits = 0;
        String ivalue = "";
        String fvalue = "";
        boolean integer = false;

        public XDecimal(String str) throws NumberFormatException {
            initD(str);
        }

        private int intComp(XDecimal xDecimal) {
            int i = this.intDigits;
            int i2 = xDecimal.intDigits;
            if (i != i2) {
                return i > i2 ? 1 : -1;
            }
            int compareTo = this.ivalue.compareTo(xDecimal.ivalue);
            if (compareTo != 0) {
                return compareTo > 0 ? 1 : -1;
            }
            int compareTo2 = this.fvalue.compareTo(xDecimal.fvalue);
            if (compareTo2 == 0) {
                return 0;
            }
            return compareTo2 > 0 ? 1 : -1;
        }

        private void makeCanonical() {
            int i = this.sign;
            if (i == 0) {
                if (this.integer) {
                    this.canonical = "0";
                    return;
                } else {
                    this.canonical = "0.0";
                    return;
                }
            }
            if (this.integer && i > 0) {
                this.canonical = this.ivalue;
                return;
            }
            StringBuffer stringBuffer = new StringBuffer(this.totalDigits + 3);
            if (this.sign == -1) {
                stringBuffer.append('-');
            }
            if (this.intDigits != 0) {
                stringBuffer.append(this.ivalue);
            } else {
                stringBuffer.append('0');
            }
            if (!this.integer) {
                stringBuffer.append('.');
                if (this.fracDigits != 0) {
                    stringBuffer.append(this.fvalue);
                } else {
                    stringBuffer.append('0');
                }
            }
            this.canonical = stringBuffer.toString();
        }

        public int compareTo(XDecimal xDecimal) {
            int i = this.sign;
            int i2 = xDecimal.sign;
            if (i != i2) {
                return i > i2 ? 1 : -1;
            }
            if (i == 0) {
                return 0;
            }
            return i * intComp(xDecimal);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof XDecimal)) {
                return false;
            }
            XDecimal xDecimal = (XDecimal) obj;
            int i = this.sign;
            if (i != xDecimal.sign) {
                return false;
            }
            if (i == 0) {
                return true;
            }
            return this.intDigits == xDecimal.intDigits && this.fracDigits == xDecimal.fracDigits && this.ivalue.equals(xDecimal.ivalue) && this.fvalue.equals(xDecimal.fvalue);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public BigDecimal getBigDecimal() {
            return this.sign == 0 ? new BigDecimal(BigInteger.ZERO) : new BigDecimal(toString());
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public BigInteger getBigInteger() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            int i = this.sign;
            if (i == 0) {
                return BigInteger.ZERO;
            }
            if (i == 1) {
                return new BigInteger(this.ivalue);
            }
            return new BigInteger("-" + this.ivalue);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public byte getByte() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            int i = this.sign;
            if (i == 0) {
                return (byte) 0;
            }
            if (i == 1) {
                return Byte.parseByte(this.ivalue);
            }
            return Byte.parseByte("-" + this.ivalue);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public int getInt() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            int i = this.sign;
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                return Integer.parseInt(this.ivalue);
            }
            return Integer.parseInt("-" + this.ivalue);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public long getLong() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            int i = this.sign;
            if (i == 0) {
                return 0L;
            }
            if (i == 1) {
                return Long.parseLong(this.ivalue);
            }
            return Long.parseLong("-" + this.ivalue);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDecimal
        public short getShort() throws NumberFormatException {
            if (this.fracDigits != 0) {
                throw new NumberFormatException();
            }
            int i = this.sign;
            if (i == 0) {
                return (short) 0;
            }
            if (i == 1) {
                return Short.parseShort(this.ivalue);
            }
            return Short.parseShort("-" + this.ivalue);
        }

        public void initD(String str) throws NumberFormatException {
            int i;
            int length = str.length();
            if (length == 0) {
                throw new NumberFormatException();
            }
            int i2 = 1;
            if (str.charAt(0) != '+') {
                if (str.charAt(0) == '-') {
                    this.sign = -1;
                } else {
                    i2 = 0;
                }
            }
            int i3 = i2;
            while (i3 < length && str.charAt(i3) == '0') {
                i3++;
            }
            int i4 = i3;
            while (i4 < length && TypeValidator.isDigit(str.charAt(i4))) {
                i4++;
            }
            if (i4 >= length) {
                length = 0;
                i = 0;
            } else {
                if (str.charAt(i4) != '.') {
                    throw new NumberFormatException();
                }
                i = i4 + 1;
            }
            if (i2 == i4 && i == length) {
                throw new NumberFormatException();
            }
            while (length > i && str.charAt(length - 1) == '0') {
                length--;
            }
            for (int i5 = i; i5 < length; i5++) {
                if (!TypeValidator.isDigit(str.charAt(i5))) {
                    throw new NumberFormatException();
                }
            }
            int i6 = i4 - i3;
            this.intDigits = i6;
            int i7 = length - i;
            this.fracDigits = i7;
            this.totalDigits = i6 + i7;
            if (i6 > 0) {
                this.ivalue = str.substring(i3, i4);
                if (this.fracDigits > 0) {
                    this.fvalue = str.substring(i, length);
                    return;
                }
                return;
            }
            if (i7 > 0) {
                this.fvalue = str.substring(i, length);
            } else {
                this.sign = 0;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void initI(java.lang.String r8) throws java.lang.NumberFormatException {
            /*
                r7 = this;
                int r0 = r8.length()
                if (r0 == 0) goto L63
                r1 = 0
                char r2 = r8.charAt(r1)
                r3 = 43
                r4 = 1
                if (r2 != r3) goto L12
            L10:
                r2 = r4
                goto L1f
            L12:
                char r2 = r8.charAt(r1)
                r3 = 45
                if (r2 != r3) goto L1e
                r2 = -1
                r7.sign = r2
                goto L10
            L1e:
                r2 = r1
            L1f:
                r3 = r2
            L20:
                if (r3 >= r0) goto L2d
                char r5 = r8.charAt(r3)
                r6 = 48
                if (r5 != r6) goto L2d
                int r3 = r3 + 1
                goto L20
            L2d:
                r5 = r3
            L2e:
                if (r5 >= r0) goto L3d
                char r6 = r8.charAt(r5)
                boolean r6 = com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator.isDigit(r6)
                if (r6 == 0) goto L3d
                int r5 = r5 + 1
                goto L2e
            L3d:
                if (r5 < r0) goto L5d
                if (r2 == r5) goto L57
                int r0 = r5 - r3
                r7.intDigits = r0
                r7.fracDigits = r1
                r7.totalDigits = r0
                if (r0 <= 0) goto L52
                java.lang.String r8 = r8.substring(r3, r5)
                r7.ivalue = r8
                goto L54
            L52:
                r7.sign = r1
            L54:
                r7.integer = r4
                return
            L57:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            L5d:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            L63:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.dv.xs.DecimalDV.XDecimal.initI(java.lang.String):void");
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                makeCanonical();
            }
            return this.canonical;
        }

        public XDecimal(String str, boolean z) throws NumberFormatException {
            if (z) {
                initI(str);
            } else {
                initD(str);
            }
        }
    }
}
