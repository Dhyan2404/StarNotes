package com.google.android.gms.internal.p124firebaseauthapi;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class zznc extends zzci {
    private final zzot zza;

    public zznc(zzot zzotVar) {
        this.zza = zzotVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zznc)) {
            return false;
        }
        zzot zzotVar = ((zznc) obj).zza;
        return this.zza.zza().zzd().equals(zzotVar.zza().zzd()) && this.zza.zza().zzf().equals(zzotVar.zza().zzf()) && this.zza.zza().zze().equals(zzotVar.zza().zze());
    }

    public final int hashCode() {
        return Objects.hash(this.zza.zza(), this.zza.zzb());
    }

    public final String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = this.zza.zza().zzf();
        int i = zznb.zza[this.zza.zza().zzd().ordinal()];
        objArr[1] = i != 1 ? i != 2 ? i != 3 ? i != 4 ? HwrRecognizerConstant.RECOGNIZER_UNKNOWN : "CRUNCHY" : "RAW" : "LEGACY" : "TINK";
        return String.format("(typeUrl=%s, outputPrefixType=%s)", objArr);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzci
    public final boolean zza() {
        return this.zza.zza().zzd() != zzvs.RAW;
    }

    public final zzot zzb() {
        return this.zza;
    }
}
