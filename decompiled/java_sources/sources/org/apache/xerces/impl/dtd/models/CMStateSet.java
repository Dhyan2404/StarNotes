package org.apache.xerces.impl.dtd.models;

/* loaded from: classes13.dex */
public class CMStateSet {

    /* renamed from: a */
    public int f112238a;

    /* renamed from: b */
    public int f112239b;

    /* renamed from: c */
    public int f112240c;

    /* renamed from: d */
    public int f112241d;

    /* renamed from: e */
    public byte[] f112242e;

    public CMStateSet(int i) {
        this.f112238a = i;
        if (i < 0) {
            throw new RuntimeException("ImplementationMessages.VAL_CMSI");
        }
        if (i > 64) {
            int i2 = i / 8;
            this.f112239b = i2;
            if (i % 8 != 0) {
                this.f112239b = i2 + 1;
            }
            this.f112242e = new byte[this.f112239b];
        }
        zeroBits();
    }

    /* renamed from: a */
    public final boolean m69914a(CMStateSet cMStateSet) {
        int i = this.f112238a;
        if (i != cMStateSet.f112238a) {
            return false;
        }
        if (i < 65) {
            return this.f112240c == cMStateSet.f112240c && this.f112241d == cMStateSet.f112241d;
        }
        for (int i2 = this.f112239b - 1; i2 >= 0; i2--) {
            if (this.f112242e[i2] != cMStateSet.f112242e[i2]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CMStateSet) {
            return m69914a((CMStateSet) obj);
        }
        return false;
    }

    public final boolean getBit(int i) {
        int i2 = this.f112238a;
        if (i >= i2) {
            throw new RuntimeException("ImplementationMessages.VAL_CMSI");
        }
        if (i2 >= 65) {
            return (this.f112242e[i >> 3] & ((byte) (1 << (i % 8)))) != 0;
        }
        int i3 = 1 << (i % 32);
        return i < 32 ? (this.f112240c & i3) != 0 : (this.f112241d & i3) != 0;
    }

    public int hashCode() {
        if (this.f112238a < 65) {
            return this.f112240c + (this.f112241d * 31);
        }
        int i = 0;
        for (int i2 = this.f112239b - 1; i2 >= 0; i2--) {
            i = (i * 31) + this.f112242e[i2];
        }
        return i;
    }

    public final void intersection(CMStateSet cMStateSet) {
        if (this.f112238a < 65) {
            this.f112240c &= cMStateSet.f112240c;
            this.f112241d = cMStateSet.f112241d & this.f112241d;
        } else {
            for (int i = this.f112239b - 1; i >= 0; i--) {
                byte[] bArr = this.f112242e;
                bArr[i] = (byte) (bArr[i] & cMStateSet.f112242e[i]);
            }
        }
    }

    public final boolean isEmpty() {
        if (this.f112238a < 65) {
            return this.f112240c == 0 && this.f112241d == 0;
        }
        for (int i = this.f112239b - 1; i >= 0; i--) {
            if (this.f112242e[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public final void setBit(int i) {
        int i2 = this.f112238a;
        if (i >= i2) {
            throw new RuntimeException("ImplementationMessages.VAL_CMSI");
        }
        if (i2 < 65) {
            int i3 = 1 << (i % 32);
            if (i < 32) {
                this.f112240c = (this.f112240c & (~i3)) | i3;
                return;
            } else {
                this.f112241d = (this.f112241d & (~i3)) | i3;
                return;
            }
        }
        byte b = (byte) (1 << (i % 8));
        int i4 = i >> 3;
        byte[] bArr = this.f112242e;
        byte b2 = (byte) (bArr[i4] & (~b));
        bArr[i4] = b2;
        bArr[i4] = (byte) (b | b2);
    }

    public final void setTo(CMStateSet cMStateSet) {
        int i = this.f112238a;
        if (i != cMStateSet.f112238a) {
            throw new RuntimeException("ImplementationMessages.VAL_CMSI");
        }
        if (i < 65) {
            this.f112240c = cMStateSet.f112240c;
            this.f112241d = cMStateSet.f112241d;
        } else {
            for (int i2 = this.f112239b - 1; i2 >= 0; i2--) {
                this.f112242e[i2] = cMStateSet.f112242e[i2];
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append('{');
            for (int i = 0; i < this.f112238a; i++) {
                if (getBit(i)) {
                    stringBuffer.append(' ');
                    stringBuffer.append(i);
                }
            }
            stringBuffer.append(" }");
        } catch (RuntimeException unused) {
        }
        return stringBuffer.toString();
    }

    public final void union(CMStateSet cMStateSet) {
        if (this.f112238a < 65) {
            this.f112240c |= cMStateSet.f112240c;
            this.f112241d = cMStateSet.f112241d | this.f112241d;
        } else {
            for (int i = this.f112239b - 1; i >= 0; i--) {
                byte[] bArr = this.f112242e;
                bArr[i] = (byte) (bArr[i] | cMStateSet.f112242e[i]);
            }
        }
    }

    public final void zeroBits() {
        if (this.f112238a < 65) {
            this.f112240c = 0;
            this.f112241d = 0;
        } else {
            for (int i = this.f112239b - 1; i >= 0; i--) {
                this.f112242e[i] = 0;
            }
        }
    }
}
