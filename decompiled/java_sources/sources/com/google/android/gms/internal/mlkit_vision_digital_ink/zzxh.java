package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import java.io.File;
import java.util.Arrays;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzxh {
    static final zzxf zza = new zzwz(true);
    static final zzxf zzb = new zzwz(false);
    final boolean zzd;
    final boolean zze;
    private final String zzh;
    private final File zzi;
    private final String zzj;
    private final zzxs zzk;
    private final zzxu zzl;
    private zzxg zzn;
    private final zzbpt zzp;
    final zzakm zzc = zzaig.zzz();
    int zzf = 0;
    private boolean zzm = false;

    @Nullable
    zzbqy zzg = null;
    private int zzo = -1;

    public zzxh(zzxs zzxsVar, String str, File file, String str2, zzbpt zzbptVar, zzxu zzxuVar, byte[] bArr) {
        this.zzn = zzxg.WIFI_ONLY;
        this.zzh = str;
        this.zzi = file;
        this.zzj = str2;
        this.zzp = zzbptVar;
        this.zzk = zzxsVar;
        this.zzl = zzxuVar;
        boolean zzb2 = zzxc.zzb(str);
        this.zzd = zzb2;
        boolean startsWith = str.startsWith("file:");
        this.zze = startsWith;
        if (startsWith || zzb2) {
            this.zzn = zzxg.NONE;
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzxh)) {
            return false;
        }
        zzxh zzxhVar = (zzxh) obj;
        return zzaga.zza(this.zzh, zzxhVar.zzh) && zzaga.zza(this.zzi, zzxhVar.zzi) && zzaga.zza(this.zzj, zzxhVar.zzj) && zzaga.zza(this.zzn, zzxhVar.zzn) && this.zzm == zzxhVar.zzm;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzh, this.zzi, this.zzj, this.zzn, Boolean.valueOf(this.zzm)});
    }

    public final String toString() {
        zzafy zza2 = zzafz.zza(zzxh.class);
        zza2.zza("", this.zzh);
        zza2.zza("targetDirectory", this.zzi);
        zza2.zza(HuaweiYunQueryArgs.FILE_NAME, this.zzj);
        zza2.zza("requiredConnectivity", this.zzn);
        zza2.zzb("canceled", this.zzm);
        return zza2.toString();
    }

    public final int zza() {
        return this.zzo;
    }

    public final synchronized zzxg zzb() {
        return this.zzn;
    }

    public final zzxh zzc(String str, String str2) {
        this.zzc.zzs(str, str2);
        return this;
    }

    public final zzxh zzd(zzxg zzxgVar) {
        if (!this.zze && !this.zzd) {
            this.zzn = zzxgVar;
        }
        return this;
    }

    public final zzxh zze(int i) {
        this.zzo = i;
        return this;
    }

    public final zzxu zzf() {
        return this.zzl;
    }

    public final File zzg() {
        return this.zzi;
    }

    public final String zzh() {
        return this.zzj;
    }

    public final String zzi() {
        return this.zzh;
    }

    public final synchronized void zzj() {
    }

    public final synchronized void zzk() {
    }

    public final synchronized void zzl() {
        this.zzm = true;
    }

    public final boolean zzm() {
        return this.zzk.zze(this);
    }

    public final synchronized boolean zzn() {
        return this.zzm;
    }

    public final zzbpt zzo() {
        return this.zzp;
    }

    public final zzxh zzp(@Nullable zzbqy zzbqyVar) {
        this.zzg = null;
        return this;
    }
}
