package com.sunia.HTREnginev2;

import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public abstract class fop extends rmp {

    /* renamed from: c */
    public static final WeakReference f70219c = new WeakReference(null);

    /* renamed from: b */
    public WeakReference f70220b;

    public fop(byte[] bArr) {
        super(bArr);
        this.f70220b = f70219c;
    }

    @Override // com.sunia.HTREnginev2.rmp
    /* renamed from: e */
    public final byte[] mo54151e() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f70220b.get();
            if (bArr == null) {
                bArr = mo53030j();
                this.f70220b = new WeakReference(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: j */
    public abstract byte[] mo53030j();
}
