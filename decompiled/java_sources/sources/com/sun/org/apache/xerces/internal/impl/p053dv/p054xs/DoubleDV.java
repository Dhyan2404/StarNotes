package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDouble;
import net.p110sf.saxon.value.FloatingPointConverter;

/* loaded from: classes10.dex */
public class DoubleDV extends TypeValidator {

    /* loaded from: classes10.dex */
    public static final class XDouble implements XSDouble {
        private String canonical;
        private double value;

        public XDouble(String str) throws NumberFormatException {
            if (DoubleDV.isPossibleFP(str)) {
                this.value = Double.parseDouble(str);
                return;
            }
            if (str.equals(FloatingPointConverter.f102870b)) {
                this.value = Double.POSITIVE_INFINITY;
            } else if (str.equals(FloatingPointConverter.f102869a)) {
                this.value = Double.NEGATIVE_INFINITY;
            } else {
                if (!str.equals("NaN")) {
                    throw new NumberFormatException(str);
                }
                this.value = Double.NaN;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int compareTo(XDouble xDouble) {
            double d = xDouble.value;
            double d2 = this.value;
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

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof XDouble)) {
                return false;
            }
            double d = this.value;
            double d2 = ((XDouble) obj).value;
            if (d == d2) {
                return true;
            }
            return (d == d || d2 == d2) ? false : true;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDouble
        public double getValue() {
            return this.value;
        }

        public boolean isIdentical(XDouble xDouble) {
            if (xDouble == this) {
                return true;
            }
            double d = this.value;
            double d2 = xDouble.value;
            return d == d2 ? d != 0.0d || Double.doubleToLongBits(d) == Double.doubleToLongBits(xDouble.value) : (d == d || d2 == d2) ? false : true;
        }

        public synchronized String toString() {
            char c;
            int i;
            char c2;
            if (this.canonical == null) {
                double d = this.value;
                if (d == Double.POSITIVE_INFINITY) {
                    this.canonical = FloatingPointConverter.f102870b;
                } else if (d == Double.NEGATIVE_INFINITY) {
                    this.canonical = FloatingPointConverter.f102869a;
                } else if (d != d) {
                    this.canonical = "NaN";
                } else if (d == 0.0d) {
                    this.canonical = "0.0E1";
                } else {
                    String d2 = Double.toString(d);
                    this.canonical = d2;
                    if (d2.indexOf(69) == -1) {
                        int length = this.canonical.length();
                        char[] cArr = new char[length + 3];
                        this.canonical.getChars(0, length, cArr, 0);
                        int i2 = cArr[0] == '-' ? 2 : 1;
                        double d3 = this.value;
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
                            this.canonical = new String(cArr, 0, i);
                        }
                        int indexOf = this.canonical.indexOf(46);
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
                        this.canonical = new String(cArr, 0, i);
                    }
                }
            }
            return this.canonical;
        }
    }

    public static boolean isPossibleFP(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && charAt != '.' && charAt != '-' && charAt != '+' && charAt != 'E' && charAt != 'e') {
                return false;
            }
        }
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((XDouble) obj).compareTo((XDouble) obj2);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XDouble(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "double"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if (obj2 instanceof XDouble) {
            return ((XDouble) obj).isIdentical((XDouble) obj2);
        }
        return false;
    }
}
