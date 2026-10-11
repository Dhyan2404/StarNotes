package com.sunia.HTREnginev2;

import android.media.Image;
import androidx.annotation.RequiresApi;
import com.google.android.odml.image.ImageProperties;

@RequiresApi(19)
/* loaded from: classes6.dex */
public final class ulp implements pkp {

    /* renamed from: a */
    public final Image f86623a;

    /* renamed from: b */
    public final ImageProperties f86624b;

    public ulp(Image image) {
        this.f86623a = image;
        ohp ohpVar = new ohp();
        ohpVar.mo54130b(3);
        int format = image.getFormat();
        ohpVar.mo54129a(format == 42 ? 1 : format == 41 ? 2 : format != 35 ? format != 256 ? 0 : 9 : 7);
        this.f86624b = ohpVar.mo54131c();
    }

    /* renamed from: a */
    public final Image m57640a() {
        return this.f86623a;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final ImageProperties zzb() {
        return this.f86624b;
    }

    @Override // com.sunia.HTREnginev2.pkp
    public final void zzc() {
        this.f86623a.close();
    }
}
