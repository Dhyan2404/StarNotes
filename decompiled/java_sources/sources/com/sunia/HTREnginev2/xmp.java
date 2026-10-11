package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public final class xmp extends com.google.firebase.auth.internal.zzf {

    /* renamed from: a */
    public String f89862a;

    /* renamed from: b */
    public String f89863b;

    @Override // com.google.firebase.auth.internal.zzf
    public final com.google.firebase.auth.internal.zzf zza(@Nullable String str) {
        this.f89863b = str;
        return this;
    }

    @Override // com.google.firebase.auth.internal.zzf
    public final com.google.firebase.auth.internal.zzf zzb(@Nullable String str) {
        this.f89862a = str;
        return this;
    }

    @Override // com.google.firebase.auth.internal.zzf
    public final com.google.firebase.auth.internal.zzg zza() {
        return new hnp(this.f89862a, this.f89863b);
    }
}
