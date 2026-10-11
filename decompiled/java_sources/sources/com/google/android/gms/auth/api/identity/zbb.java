package com.google.android.gms.auth.api.identity;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class zbb {

    /* renamed from: a */
    public String f28938a;

    public zbb() {
    }

    public static final zbb zbc(zbc zbcVar) {
        String zbb = zbcVar.zbb();
        zbb zbbVar = new zbb();
        if (zbb != null) {
            zbbVar.f28938a = Preconditions.checkNotEmpty(zbb);
        }
        return zbbVar;
    }

    public final zbb zba(@NonNull String str) {
        this.f28938a = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zbc zbb() {
        return new zbc(this.f28938a);
    }

    public /* synthetic */ zbb(zba zbaVar) {
    }
}
