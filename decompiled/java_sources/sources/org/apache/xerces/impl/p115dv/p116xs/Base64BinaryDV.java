package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.util.Base64;
import org.apache.xerces.impl.p115dv.util.ByteListImpl;

/* loaded from: classes13.dex */
public class Base64BinaryDV extends TypeValidator {

    /* renamed from: org.apache.xerces.impl.dv.xs.Base64BinaryDV$a */
    /* loaded from: classes13.dex */
    public static final class C20012a extends ByteListImpl {
        public C20012a(byte[] bArr) {
            super(bArr);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (!(obj instanceof C20012a)) {
                return false;
            }
            byte[] bArr = ((C20012a) obj).data;
            int length = this.data.length;
            if (length != bArr.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (this.data[i] != bArr[i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 0;
            int i2 = 0;
            while (true) {
                byte[] bArr = this.data;
                if (i >= bArr.length) {
                    return i2;
                }
                i2 = (i2 * 37) + (bArr[i] & 255);
                i++;
            }
        }

        @Override // java.util.AbstractCollection
        public synchronized String toString() {
            if (this.canonical == null) {
                this.canonical = Base64.encode(this.data);
            }
            return this.canonical;
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        byte[] decode = Base64.decode(str);
        if (decode != null) {
            return new C20012a(decode);
        }
        throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "base64Binary"});
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((C20012a) obj).getLength();
    }
}
