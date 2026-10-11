package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.vm */
/* loaded from: classes4.dex */
public final class C14551vm {

    /* renamed from: a */
    public final byte[] f87682a;

    /* renamed from: b */
    public int f87683b = 0;

    public C14551vm(int i) {
        this.f87682a = new byte[i];
    }

    /* renamed from: a */
    public void m57845a(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f87683b;
            this.f87683b = i3 + 1;
            m57848d(i3, z);
        }
    }

    /* renamed from: b */
    public byte[] m57846b(int i) {
        int length = this.f87682a.length * i;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = this.f87682a[i2 / i];
        }
        return bArr;
    }

    /* renamed from: c */
    public void m57847c(int i, byte b) {
        this.f87682a[i] = b;
    }

    /* renamed from: d */
    public final void m57848d(int i, boolean z) {
        this.f87682a[i] = z ? (byte) 1 : (byte) 0;
    }
}
