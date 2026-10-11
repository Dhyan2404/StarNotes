package com.sunia.HTREnginev2;

import net.p110sf.saxon.value.FloatingPointConverter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.TypeValidator;

/* loaded from: classes13.dex */
public class q5l extends TypeValidator {

    /* renamed from: com.sunia.HTREnginev2.q5l$a */
    /* loaded from: classes13.dex */
    public static class C14287a {

        /* renamed from: a */
        public int f81676a;

        /* renamed from: e */
        public String f81680e;

        /* renamed from: h */
        public String f81683h;

        /* renamed from: b */
        public int f81677b = 0;

        /* renamed from: c */
        public int f81678c = 0;

        /* renamed from: d */
        public int f81679d = 0;

        /* renamed from: f */
        public String f81681f = "";

        /* renamed from: g */
        public int f81682g = 0;

        public C14287a(String str) throws NumberFormatException {
            this.f81676a = 1;
            this.f81680e = "";
            if (str.equals("NaN")) {
                this.f81680e = str;
                this.f81676a = 0;
            }
            if (str.equals("+INF") || str.equals(FloatingPointConverter.f102870b) || str.equals(FloatingPointConverter.f102869a)) {
                this.f81680e = str.charAt(0) == '+' ? str.substring(1) : str;
            } else {
                m56643e(str);
            }
        }

        /* renamed from: a */
        public final int m56639a(C14287a c14287a) {
            int i;
            int i2 = this.f81682g;
            if ((i2 != 0 || c14287a.f81682g != 0) && i2 != (i = c14287a.f81682g)) {
                int i3 = this.f81678c;
                int i4 = i3 + i2;
                int i5 = c14287a.f81678c;
                if (i4 != i5 + i) {
                    return i3 + i2 > i5 + i ? 1 : -1;
                }
                int i6 = 0;
                if (i2 > i) {
                    int i7 = i2 - i;
                    StringBuffer stringBuffer = new StringBuffer(this.f81680e);
                    StringBuffer stringBuffer2 = new StringBuffer(this.f81681f);
                    while (i6 < i7) {
                        if (i6 < this.f81679d) {
                            stringBuffer.append(this.f81681f.charAt(i6));
                            stringBuffer2.deleteCharAt(i6);
                        } else {
                            stringBuffer.append('0');
                        }
                        i6++;
                    }
                    return m56640b(stringBuffer.toString(), c14287a.f81680e, stringBuffer2.toString(), c14287a.f81681f);
                }
                int i8 = i - i2;
                StringBuffer stringBuffer3 = new StringBuffer(c14287a.f81680e);
                StringBuffer stringBuffer4 = new StringBuffer(c14287a.f81681f);
                while (i6 < i8) {
                    if (i6 < c14287a.f81679d) {
                        stringBuffer3.append(c14287a.f81681f.charAt(i6));
                        stringBuffer4.deleteCharAt(i6);
                    } else {
                        stringBuffer3.append('0');
                    }
                    i6++;
                }
                return m56640b(this.f81680e, stringBuffer3.toString(), this.f81681f, stringBuffer4.toString());
            }
            return m56644f(c14287a);
        }

        /* renamed from: b */
        public final int m56640b(String str, String str2, String str3, String str4) {
            int compareTo = str.compareTo(str3);
            if (compareTo != 0) {
                return compareTo > 0 ? 1 : -1;
            }
            if (str2.equals(str4)) {
                return 0;
            }
            StringBuffer stringBuffer = new StringBuffer(str2);
            StringBuffer stringBuffer2 = new StringBuffer(str4);
            m56647i(stringBuffer, stringBuffer2);
            int compareTo2 = stringBuffer.toString().compareTo(stringBuffer2.toString());
            if (compareTo2 == 0) {
                return 0;
            }
            return compareTo2 > 0 ? 1 : -1;
        }

        /* renamed from: c */
        public final int m56641c(C14287a c14287a) {
            if (this.f81681f.equals(c14287a.f81681f)) {
                return 0;
            }
            StringBuffer stringBuffer = new StringBuffer(this.f81681f);
            StringBuffer stringBuffer2 = new StringBuffer(c14287a.f81681f);
            m56647i(stringBuffer, stringBuffer2);
            return stringBuffer.toString().compareTo(stringBuffer2.toString());
        }

        /* renamed from: d */
        public int m56642d(C14287a c14287a) {
            if (this.f81676a == 0) {
                return 2;
            }
            if (this.f81680e.equals(FloatingPointConverter.f102870b) || c14287a.f81680e.equals(FloatingPointConverter.f102870b)) {
                if (this.f81680e.equals(c14287a.f81680e)) {
                    return 0;
                }
                return this.f81680e.equals(FloatingPointConverter.f102870b) ? 1 : -1;
            }
            if (this.f81680e.equals(FloatingPointConverter.f102869a) || c14287a.f81680e.equals(FloatingPointConverter.f102869a)) {
                if (this.f81680e.equals(c14287a.f81680e)) {
                    return 0;
                }
                return this.f81680e.equals(FloatingPointConverter.f102869a) ? -1 : 1;
            }
            int i = this.f81676a;
            int i2 = c14287a.f81676a;
            return i != i2 ? i > i2 ? 1 : -1 : i * m56639a(c14287a);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0088 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00a8  */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m56643e(java.lang.String r10) throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.q5l.C14287a.m56643e(java.lang.String):void");
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof C14287a) && m56642d((C14287a) obj) == 0;
        }

        /* renamed from: f */
        public final int m56644f(C14287a c14287a) {
            int i = this.f81678c;
            int i2 = c14287a.f81678c;
            return i != i2 ? i > i2 ? 1 : -1 : m56640b(this.f81680e, c14287a.f81680e, this.f81681f, c14287a.f81681f);
        }

        /* renamed from: g */
        public boolean m56645g(C14287a c14287a) {
            if (this.f81680e.equals(c14287a.f81680e) && (this.f81680e.equals(FloatingPointConverter.f102870b) || this.f81680e.equals(FloatingPointConverter.f102869a) || this.f81680e.equals("NaN"))) {
                return true;
            }
            return this.f81676a == c14287a.f81676a && this.f81678c == c14287a.f81678c && this.f81679d == c14287a.f81679d && this.f81682g == c14287a.f81682g && this.f81680e.equals(c14287a.f81680e) && this.f81681f.equals(c14287a.f81681f);
        }

        /* renamed from: h */
        public final void m56646h() {
            this.f81683h = "TBD by Working Group";
        }

        /* renamed from: i */
        public final void m56647i(StringBuffer stringBuffer, StringBuffer stringBuffer2) {
            int length = stringBuffer.length();
            while (true) {
                length--;
                if (length >= 0 && stringBuffer.charAt(length) == '0') {
                    stringBuffer.deleteCharAt(length);
                }
            }
            for (int length2 = stringBuffer2.length() - 1; length2 >= 0 && stringBuffer2.charAt(length2) == '0'; length2--) {
                stringBuffer2.deleteCharAt(length2);
            }
        }

        public synchronized String toString() {
            if (this.f81683h == null) {
                m56646h();
            }
            return this.f81683h;
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return ((C14287a) obj).m56642d((C14287a) obj2);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new C14287a(str);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "precisionDecimal"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 4088;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int getFractionDigits(Object obj) {
        return ((C14287a) obj).f81679d;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int getTotalDigits(Object obj) {
        return ((C14287a) obj).f81677b;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if ((obj2 instanceof C14287a) && (obj instanceof C14287a)) {
            return ((C14287a) obj).m56645g((C14287a) obj2);
        }
        return false;
    }
}
