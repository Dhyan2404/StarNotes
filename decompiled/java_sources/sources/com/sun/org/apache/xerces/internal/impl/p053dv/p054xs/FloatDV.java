package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.XSFloat;
import net.p110sf.saxon.value.FloatingPointConverter;

/* loaded from: classes10.dex */
public class FloatDV extends TypeValidator {

    /* loaded from: classes10.dex */
    public static final class XFloat implements XSFloat {
        private String canonical;
        private float value;

        public XFloat(String str) throws NumberFormatException {
            if (DoubleDV.isPossibleFP(str)) {
                this.value = Float.parseFloat(str);
                return;
            }
            if (str.equals(FloatingPointConverter.f102870b)) {
                this.value = Float.POSITIVE_INFINITY;
            } else if (str.equals(FloatingPointConverter.f102869a)) {
                this.value = Float.NEGATIVE_INFINITY;
            } else {
                if (!str.equals("NaN")) {
                    throw new NumberFormatException(str);
                }
                this.value = Float.NaN;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int compareTo(XFloat xFloat) {
            float f = xFloat.value;
            float f2 = this.value;
            if (f2 < f) {
                return -1;
            }
            if (f2 > f) {
                return 1;
            }
            if (f2 == f) {
                return 0;
            }
            return (f2 == f2 || f == f) ? 2 : 0;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof XFloat)) {
                return false;
            }
            float f = this.value;
            float f2 = ((XFloat) obj).value;
            if (f == f2) {
                return true;
            }
            return (f == f || f2 == f2) ? false : true;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSFloat
        public float getValue() {
            return this.value;
        }

        public boolean isIdentical(XFloat xFloat) {
            if (xFloat == this) {
                return true;
            }
            float f = this.value;
            float f2 = xFloat.value;
            return f == f2 ? f != 0.0f || Float.floatToIntBits(f) == Float.floatToIntBits(xFloat.value) : (f == f || f2 == f2) ? false : true;
        }

        public synchronized String toString() {
            char c;
            int i;
            char c2;
            if (this.canonical == null) {
                float f = this.value;
                if (f == Float.POSITIVE_INFINITY) {
                    this.canonical = FloatingPointConverter.f102870b;
                } else if (f == Float.NEGATIVE_INFINITY) {
                    this.canonical = FloatingPointConverter.f102869a;
                } else if (f != f) {
                    this.canonical = "NaN";
                } else if (f == 0.0f) {
                    this.canonical = "0.0E1";
                } else {
                    String f2 = Float.toString(f);
                    this.canonical = f2;
                    if (f2.indexOf(69) == -1) {
                        int length = this.canonical.length();
                        char[] cArr = new char[length + 3];
                        this.canonical.getChars(0, length, cArr, 0);
                        int i2 = cArr[0] == '-' ? 2 : 1;
                        float f3 = this.value;
                        if (f3 < 1.0f && f3 > -1.0f) {
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

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((XFloat) obj).compareTo((XFloat) obj2);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new XFloat(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "float"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if (obj2 instanceof XFloat) {
            return ((XFloat) obj).isIdentical((XFloat) obj2);
        }
        return false;
    }
}
