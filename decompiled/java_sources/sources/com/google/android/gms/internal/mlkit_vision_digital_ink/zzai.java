package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzai extends zzfy {
    private String zza;
    private final zzagb zzb = zzagb.zzd();
    private final zzagb zzc = zzagb.zzd();
    private byte zzd;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfy
    public final zzfy zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null groupName");
        }
        this.zza = str;
        return this;
    }

    public final zzfy zzb(boolean z) {
        this.zzd = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzfy
    public final zzfz zzc() {
        String str;
        if (this.zzd == 1 && (str = this.zza) != null) {
            return new zzak(str, this.zzb, this.zzc, false, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" groupName");
        }
        if (this.zzd == 0) {
            sb.append(" pendingOnly");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
