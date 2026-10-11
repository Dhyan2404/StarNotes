package com.sunia.HTREnginev2;

import com.google.android.odml.image.ImageProperties;
import java.nio.ByteBuffer;

/* loaded from: classes6.dex */
public final class hkp implements pkp {

    /* renamed from: a */
    public final ByteBuffer f72293a;

    /* renamed from: b */
    public final ImageProperties f72294b;

    public hkp(ByteBuffer byteBuffer, int i) {
        this.f72293a = byteBuffer;
        ohp ohpVar = new ohp();
        ohpVar.mo54130b(2);
        ohpVar.mo54129a(i);
        this.f72294b = ohpVar.mo54131c();
    }

    /* renamed from: a */
    public final ByteBuffer m54566a() {
        return this.f72293a;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final ImageProperties zzb() {
        return this.f72294b;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final void zzc() {
    }
}
