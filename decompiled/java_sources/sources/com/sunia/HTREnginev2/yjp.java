package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import com.google.android.odml.image.ImageProperties;

/* loaded from: classes6.dex */
public final class yjp implements pkp {

    /* renamed from: a */
    public final Bitmap f90812a;

    /* renamed from: b */
    public final ImageProperties f90813b;

    public yjp(Bitmap bitmap) {
        this.f90812a = bitmap;
        ohp ohpVar = new ohp();
        int i = pjp.f80865a[bitmap.getConfig().ordinal()];
        ohpVar.mo54129a(i != 1 ? i != 2 ? 0 : 1 : 8);
        ohpVar.mo54130b(1);
        this.f90813b = ohpVar.mo54131c();
    }

    /* renamed from: a */
    public final Bitmap m58448a() {
        return this.f90812a;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final ImageProperties zzb() {
        return this.f90813b;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final void zzc() {
        this.f90812a.recycle();
    }
}
