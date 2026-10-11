package org.apache.xerces.impl.p115dv.p116xs;

import net.p110sf.saxon.value.FloatingPointConverter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.p118xs.datatypes.XSFloat;

/* loaded from: classes13.dex */
public class FloatDV extends TypeValidator {

    /* renamed from: org.apache.xerces.impl.dv.xs.FloatDV$a */
    /* loaded from: classes13.dex */
    public static final class C20015a implements XSFloat {

        /* renamed from: a */
        public final float f112338a;

        /* renamed from: b */
        public String f112339b;

        public C20015a(String str) throws NumberFormatException {
            float f;
            if (DoubleDV.m69941b(str)) {
                f = Float.parseFloat(str);
            } else if (str.equals(FloatingPointConverter.f102870b)) {
                f = Float.POSITIVE_INFINITY;
            } else if (str.equals(FloatingPointConverter.f102869a)) {
                f = Float.NEGATIVE_INFINITY;
            } else {
                if (!str.equals("NaN")) {
                    throw new NumberFormatException(str);
                }
                f = Float.NaN;
            }
            this.f112338a = f;
        }

        /* renamed from: b */
        public final int m69949b(C20015a c20015a) {
            float f = c20015a.f112338a;
            float f2 = this.f112338a;
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

        /* renamed from: c */
        public boolean m69950c(C20015a c20015a) {
            if (c20015a == this) {
                return true;
            }
            float f = this.f112338a;
            float f2 = c20015a.f112338a;
            return f == f2 ? f != 0.0f || Float.floatToIntBits(f) == Float.floatToIntBits(c20015a.f112338a) : (f == f || f2 == f2) ? false : true;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C20015a)) {
                return false;
            }
            float f = this.f112338a;
            float f2 = ((C20015a) obj).f112338a;
            if (f == f2) {
                return true;
            }
            return (f == f || f2 == f2) ? false : true;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSFloat
        public float getValue() {
            return this.f112338a;
        }

        public int hashCode() {
            float f = this.f112338a;
            if (f == 0.0f) {
                return 0;
            }
            return Float.floatToIntBits(f);
        }

        public synchronized String toString() {
            char c;
            int i;
            String str;
            char c2;
            if (this.f112339b == null) {
                float f = this.f112338a;
                if (f == Float.POSITIVE_INFINITY) {
                    str = FloatingPointConverter.f102870b;
                } else if (f == Float.NEGATIVE_INFINITY) {
                    str = FloatingPointConverter.f102869a;
                } else if (f != f) {
                    str = "NaN";
                } else if (f == 0.0f) {
                    str = "0.0E1";
                } else {
                    String f2 = Float.toString(f);
                    this.f112339b = f2;
                    if (f2.indexOf(69) == -1) {
                        int length = this.f112339b.length();
                        char[] cArr = new char[length + 3];
                        this.f112339b.getChars(0, length, cArr, 0);
                        int i2 = cArr[0] == '-' ? 2 : 1;
                        float f3 = this.f112338a;
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
                            str = new String(cArr, 0, i);
                        }
                        int indexOf = this.f112339b.indexOf(46);
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
                this.f112339b = str;
            }
            return this.f112339b;
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((C20015a) obj).m69949b((C20015a) obj2);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new C20015a(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "float"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if (obj2 instanceof C20015a) {
            return ((C20015a) obj).m69950c((C20015a) obj2);
        }
        return false;
    }
}
