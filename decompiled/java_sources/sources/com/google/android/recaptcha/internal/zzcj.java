package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzcj {
    public zzz zza;

    @NotNull
    private final zzcl zzb;
    private int zzd;

    @NotNull
    private final zzck zze;

    @NotNull
    private final zzaa zzf;

    @NotNull
    private final zzcd zzh;

    @NotNull
    private final zzag zzi;

    @NotNull
    private String zzc = "recaptcha.m.Main.rge";

    @NotNull
    private final zzz zzg = new zzz();

    public zzcj(@NotNull zzcl zzclVar) {
        this.zzb = zzclVar;
        this.zze = zzclVar.zzb();
        this.zzh = zzclVar.zze();
        this.zzf = zzclVar.zza();
        this.zzi = zzclVar.zzd();
    }

    public final int zza() {
        return this.zzd;
    }

    @NotNull
    public final zzz zzb() {
        return this.zzg;
    }

    @NotNull
    public final zzck zzc() {
        return this.zze;
    }

    @NotNull
    public final String zzd() {
        return this.zzc;
    }

    public final void zze() {
        this.zzb.zzc();
    }

    public final void zzf(@NotNull String str) {
        this.zzc = str;
    }

    public final void zzg(int i) {
        this.zzd = i;
    }

    @NotNull
    public final zzag zzh() {
        return this.zzi;
    }

    @NotNull
    public final zzcd zzi() {
        return this.zzh;
    }
}
