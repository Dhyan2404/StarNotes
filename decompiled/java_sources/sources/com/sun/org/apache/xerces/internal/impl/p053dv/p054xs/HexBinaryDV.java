package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.util.ByteListImpl;
import com.sun.org.apache.xerces.internal.impl.p053dv.util.HexBin;

/* loaded from: classes10.dex */
public class HexBinaryDV extends TypeValidator {

    /* loaded from: classes10.dex */
    public static final class XHex extends ByteListImpl {
        public XHex(byte[] bArr) {
            super(bArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof XHex)) {
                return false;
            }
            byte[] bArr = ((XHex) obj).data;
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

        public synchronized String toString() {
            if (this.canonical == null) {
                this.canonical = HexBin.encode(this.data);
            }
            return this.canonical;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        byte[] decode = HexBin.decode(str);
        if (decode != null) {
            return new XHex(decode);
        }
        throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "hexBinary"});
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int getDataLength(Object obj) {
        return ((XHex) obj).getLength();
    }
}
