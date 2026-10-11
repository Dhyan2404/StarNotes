package org.apache.xerces.impl.p115dv.p116xs;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.p118xs.datatypes.XSDecimal;

/* loaded from: classes13.dex */
public class DecimalDV extends TypeValidator {

    /* renamed from: org.apache.xerces.impl.dv.xs.DecimalDV$a */
    /* loaded from: classes13.dex */
    public static class C20013a implements XSDecimal {

        /* renamed from: a */
        public int f112326a = 1;

        /* renamed from: b */
        public int f112327b = 0;

        /* renamed from: c */
        public int f112328c = 0;

        /* renamed from: d */
        public int f112329d = 0;

        /* renamed from: e */
        public String f112330e = "";

        /* renamed from: f */
        public String f112331f = "";

        /* renamed from: g */
        public boolean f112332g = false;

        /* renamed from: h */
        public String f112333h;

        public C20013a(String str) throws NumberFormatException {
            m69937b(str);
        }

        /* renamed from: a */
        public int m69936a(C20013a c20013a) {
            int i = this.f112326a;
            int i2 = c20013a.f112326a;
            if (i != i2) {
                return i > i2 ? 1 : -1;
            }
            if (i == 0) {
                return 0;
            }
            return i * m69939d(c20013a);
        }

        /* renamed from: b */
        public void m69937b(String str) throws NumberFormatException {
            int i;
            int length = str.length();
            if (length == 0) {
                throw new NumberFormatException();
            }
            int i2 = 1;
            if (str.charAt(0) != '+') {
                if (str.charAt(0) == '-') {
                    this.f112326a = -1;
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
            this.f112328c = i6;
            int i7 = length - i;
            this.f112329d = i7;
            this.f112327b = i6 + i7;
            if (i6 > 0) {
                this.f112330e = str.substring(i3, i4);
                if (this.f112329d <= 0) {
                    return;
                }
            } else if (i7 <= 0) {
                this.f112326a = 0;
                return;
            }
            this.f112331f = str.substring(i, length);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m69938c(java.lang.String r8) throws java.lang.NumberFormatException {
            /*
                r7 = this;
                int r0 = r8.length()
                if (r0 == 0) goto L65
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
                r7.f112326a = r2
                goto L10
            L1e:
                r2 = r1
            L1f:
                r3 = r2
            L20:
                if (r3 >= r0) goto L2e
                char r5 = r8.charAt(r3)
                r6 = 48
                if (r5 == r6) goto L2b
                goto L2e
            L2b:
                int r3 = r3 + 1
                goto L20
            L2e:
                r5 = r3
            L2f:
                if (r5 >= r0) goto L3f
                char r6 = r8.charAt(r5)
                boolean r6 = org.apache.xerces.impl.p115dv.p116xs.TypeValidator.isDigit(r6)
                if (r6 != 0) goto L3c
                goto L3f
            L3c:
                int r5 = r5 + 1
                goto L2f
            L3f:
                if (r5 < r0) goto L5f
                if (r2 == r5) goto L59
                int r0 = r5 - r3
                r7.f112328c = r0
                r7.f112329d = r1
                r7.f112327b = r0
                if (r0 <= 0) goto L54
                java.lang.String r8 = r8.substring(r3, r5)
                r7.f112330e = r8
                goto L56
            L54:
                r7.f112326a = r1
            L56:
                r7.f112332g = r4
                return
            L59:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            L5f:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            L65:
                java.lang.NumberFormatException r7 = new java.lang.NumberFormatException
                r7.<init>()
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.DecimalDV.C20013a.m69938c(java.lang.String):void");
        }

        /* renamed from: d */
        public final int m69939d(C20013a c20013a) {
            int i = this.f112328c;
            int i2 = c20013a.f112328c;
            if (i != i2) {
                return i > i2 ? 1 : -1;
            }
            int compareTo = this.f112330e.compareTo(c20013a.f112330e);
            if (compareTo != 0) {
                return compareTo > 0 ? 1 : -1;
            }
            int compareTo2 = this.f112331f.compareTo(c20013a.f112331f);
            if (compareTo2 == 0) {
                return 0;
            }
            return compareTo2 > 0 ? 1 : -1;
        }

        /* renamed from: e */
        public final void m69940e() {
            String stringBuffer;
            int i = this.f112326a;
            if (i == 0) {
                this.f112333h = this.f112332g ? "0" : "0.0";
                return;
            }
            if (!this.f112332g || i <= 0) {
                StringBuffer stringBuffer2 = new StringBuffer(this.f112327b + 3);
                if (this.f112326a == -1) {
                    stringBuffer2.append('-');
                }
                if (this.f112328c != 0) {
                    stringBuffer2.append(this.f112330e);
                } else {
                    stringBuffer2.append('0');
                }
                if (!this.f112332g) {
                    stringBuffer2.append('.');
                    if (this.f112329d != 0) {
                        stringBuffer2.append(this.f112331f);
                    } else {
                        stringBuffer2.append('0');
                    }
                }
                stringBuffer = stringBuffer2.toString();
            } else {
                stringBuffer = this.f112330e;
            }
            this.f112333h = stringBuffer;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C20013a)) {
                return false;
            }
            C20013a c20013a = (C20013a) obj;
            int i = this.f112326a;
            if (i != c20013a.f112326a) {
                return false;
            }
            if (i == 0) {
                return true;
            }
            return this.f112328c == c20013a.f112328c && this.f112329d == c20013a.f112329d && this.f112330e.equals(c20013a.f112330e) && this.f112331f.equals(c20013a.f112331f);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public BigDecimal getBigDecimal() {
            return this.f112326a == 0 ? new BigDecimal(BigInteger.ZERO) : new BigDecimal(toString());
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public BigInteger getBigInteger() throws NumberFormatException {
            if (this.f112329d != 0) {
                throw new NumberFormatException();
            }
            int i = this.f112326a;
            if (i == 0) {
                return BigInteger.ZERO;
            }
            if (i == 1) {
                return new BigInteger(this.f112330e);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("-");
            stringBuffer.append(this.f112330e);
            return new BigInteger(stringBuffer.toString());
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public byte getByte() throws NumberFormatException {
            String stringBuffer;
            if (this.f112329d != 0) {
                throw new NumberFormatException();
            }
            int i = this.f112326a;
            if (i == 0) {
                return (byte) 0;
            }
            if (i == 1) {
                stringBuffer = this.f112330e;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-");
                stringBuffer2.append(this.f112330e);
                stringBuffer = stringBuffer2.toString();
            }
            return Byte.parseByte(stringBuffer);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public int getInt() throws NumberFormatException {
            String stringBuffer;
            if (this.f112329d != 0) {
                throw new NumberFormatException();
            }
            int i = this.f112326a;
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                stringBuffer = this.f112330e;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-");
                stringBuffer2.append(this.f112330e);
                stringBuffer = stringBuffer2.toString();
            }
            return Integer.parseInt(stringBuffer);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public long getLong() throws NumberFormatException {
            String stringBuffer;
            if (this.f112329d != 0) {
                throw new NumberFormatException();
            }
            int i = this.f112326a;
            if (i == 0) {
                return 0L;
            }
            if (i == 1) {
                stringBuffer = this.f112330e;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-");
                stringBuffer2.append(this.f112330e);
                stringBuffer = stringBuffer2.toString();
            }
            return Long.parseLong(stringBuffer);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDecimal
        public short getShort() throws NumberFormatException {
            String stringBuffer;
            if (this.f112329d != 0) {
                throw new NumberFormatException();
            }
            int i = this.f112326a;
            if (i == 0) {
                return (short) 0;
            }
            if (i == 1) {
                stringBuffer = this.f112330e;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-");
                stringBuffer2.append(this.f112330e);
                stringBuffer = stringBuffer2.toString();
            }
            return Short.parseShort(stringBuffer);
        }

        public synchronized String toString() {
            if (this.f112333h == null) {
                m69940e();
            }
            return this.f112333h;
        }

        public C20013a(String str, boolean z) throws NumberFormatException {
            if (z) {
                m69938c(str);
            } else {
                m69937b(str);
            }
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public final int compare(Object obj, Object obj2) {
        return ((C20013a) obj).m69936a((C20013a) obj2);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new C20013a(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "decimal"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public final short getAllowedFacets() {
        return (short) 4088;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public final int getFractionDigits(Object obj) {
        return ((C20013a) obj).f112329d;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public final int getTotalDigits(Object obj) {
        return ((C20013a) obj).f112327b;
    }
}
