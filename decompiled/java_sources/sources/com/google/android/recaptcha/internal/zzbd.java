package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzbd {

    @NotNull
    public static final zzbc zza = new zzbc(null);

    @NotNull
    private String zzb;

    @NotNull
    private String zzc;

    @Nullable
    private String zzd;

    private zzbd(String str, String str2) {
        this.zzb = str;
        this.zzc = str2;
    }

    @NotNull
    public final zzbb zza(@NotNull zzne zzneVar) {
        return new zzbb(zzneVar, this.zzb, this.zzc, this.zzd, null);
    }

    @NotNull
    public final zzbd zzb() {
        return new zzbd(this);
    }

    @NotNull
    public final zzbd zzc(@NotNull String str) {
        this.zzd = str;
        return this;
    }

    @NotNull
    public final String zzd() {
        return this.zzc;
    }

    public /* synthetic */ zzbd(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    private zzbd(zzbd zzbdVar) {
        this(zzbdVar.zzb, zzbdVar.zzc);
        this.zzd = zzbdVar.zzd;
    }
}
