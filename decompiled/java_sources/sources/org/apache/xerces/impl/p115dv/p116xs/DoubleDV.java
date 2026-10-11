package org.apache.xerces.impl.p115dv.p116xs;

import net.p110sf.saxon.value.FloatingPointConverter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.p118xs.datatypes.XSDouble;

/* loaded from: classes13.dex */
public class DoubleDV extends TypeValidator {

    /* renamed from: org.apache.xerces.impl.dv.xs.DoubleDV$a */
    /* loaded from: classes13.dex */
    public static final class C20014a implements XSDouble {

        /* renamed from: a */
        public final double f112334a;

        /* renamed from: b */
        public String f112335b;

        public C20014a(String str) throws NumberFormatException {
            double d;
            if (DoubleDV.m69941b(str)) {
                d = Double.parseDouble(str);
            } else if (str.equals(FloatingPointConverter.f102870b)) {
                d = Double.POSITIVE_INFINITY;
            } else if (str.equals(FloatingPointConverter.f102869a)) {
                d = Double.NEGATIVE_INFINITY;
            } else {
                if (!str.equals("NaN")) {
                    throw new NumberFormatException(str);
                }
                d = Double.NaN;
            }
            this.f112334a = d;
        }

        /* renamed from: b */
        public final int m69943b(C20014a c20014a) {
            double d = c20014a.f112334a;
            double d2 = this.f112334a;
            if (d2 < d) {
                return -1;
            }
            if (d2 > d) {
                return 1;
            }
            if (d2 == d) {
                return 0;
            }
            return (d2 == d2 || d == d) ? 2 : 0;
        }

        /* renamed from: c */
        public boolean m69944c(C20014a c20014a) {
            if (c20014a == this) {
                return true;
            }
            double d = this.f112334a;
            double d2 = c20014a.f112334a;
            return d == d2 ? d != 0.0d || Double.doubleToLongBits(d) == Double.doubleToLongBits(c20014a.f112334a) : (d == d || d2 == d2) ? false : true;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C20014a)) {
                return false;
            }
            double d = this.f112334a;
            double d2 = ((C20014a) obj).f112334a;
            if (d == d2) {
                return true;
            }
            return (d == d || d2 == d2) ? false : true;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDouble
        public double getValue() {
            return this.f112334a;
        }

        public int hashCode() {
            double d = this.f112334a;
            if (d == 0.0d) {
                return 0;
            }
            long doubleToLongBits = Double.doubleToLongBits(d);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }

        public synchronized String toString() {
            char c;
            int i;
            String str;
            char c2;
            if (this.f112335b == null) {
                double d = this.f112334a;
                if (d == Double.POSITIVE_INFINITY) {
                    str = FloatingPointConverter.f102870b;
                } else if (d == Double.NEGATIVE_INFINITY) {
                    str = FloatingPointConverter.f102869a;
                } else if (d != d) {
                    str = "NaN";
                } else if (d == 0.0d) {
                    str = "0.0E1";
                } else {
                    String d2 = Double.toString(d);
                    this.f112335b = d2;
                    if (d2.indexOf(69) == -1) {
                        int length = this.f112335b.length();
                        char[] cArr = new char[length + 3];
                        this.f112335b.getChars(0, length, cArr, 0);
                        int i2 = cArr[0] == '-' ? 2 : 1;
                        double d3 = this.f112334a;
                        if (d3 < 1.0d && d3 > -1.0d) {
                            int i3 = i2 + 1;
                            int i4 = i3;
                            while (true) {
                                c2 = cArr[i4];
                                if (c2 != '0') {
                                    break;
                                }
                                i4++;
                            }
                            cArr[i2 - 1] = c2;
                            cArr[i2] = '.';
                            int i5 = i4 + 1;
                            int i6 = i3;
                            while (i5 < length) {
                                cArr[i6] = cArr[i5];
                                i5++;
                                i6++;
                            }
                            int i7 = i4 - i2;
                            int i8 = length - i7;
                            if (i8 == i3) {
                                cArr[i8] = '0';
                                i8++;
                            }
                            int i9 = i8 + 1;
                            cArr[i8] = 'E';
                            int i10 = i9 + 1;
                            cArr[i9] = '-';
                            i = i10 + 1;
                            cArr[i10] = (char) (i7 + 48);
                            str = new String(cArr, 0, i);
                        }
                        int indexOf = this.f112335b.indexOf(46);
                        for (int i11 = indexOf; i11 > i2; i11--) {
                            cArr[i11] = cArr[i11 - 1];
                        }
                        cArr[i2] = '.';
                        while (true) {
                            c = cArr[length - 1];
                            if (c != '0') {
                                break;
                            }
                            length--;
                        }
                        if (c == '.') {
                            length++;
                        }
                        int i12 = length + 1;
                        cArr[length] = 'E';
                        i = i12 + 1;
                        cArr[i12] = (char) ((indexOf - i2) + 48);
                        str = new String(cArr, 0, i);
                    }
                }
                this.f112335b = str;
            }
            return this.f112335b;
        }
    }

    /* renamed from: b */
    public static boolean m69941b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && charAt != '.' && charAt != '-' && charAt != '+' && charAt != 'E' && charAt != 'e') {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((C20014a) obj).m69943b((C20014a) obj2);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new C20014a(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "double"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if (obj2 instanceof C20014a) {
            return ((C20014a) obj).m69944c((C20014a) obj2);
        }
        return false;
    }
}
