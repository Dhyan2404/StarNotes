package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public enum zzds implements zzbuk {
    NONE(0),
    SUBSCRIBED(1),
    DOWNLOAD_IN_PROGRESS(2),
    DOWNLOAD_FAILED(3),
    DOWNLOAD_COMPLETE(4),
    CORRUPTED(6),
    INTERNAL_ERROR(5);

    private static final zzbul zzh = new zzbul() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzdq
    };
    private final int zzj;

    zzds(int i) {
        this.zzj = i;
    }

    public static zzds zzb(int i) {
        switch (i) {
            case 0:
                return NONE;
            case 1:
                return SUBSCRIBED;
            case 2:
                return DOWNLOAD_IN_PROGRESS;
            case 3:
                return DOWNLOAD_FAILED;
            case 4:
                return DOWNLOAD_COMPLETE;
            case 5:
                return INTERNAL_ERROR;
            case 6:
                return CORRUPTED;
            default:
                return null;
        }
    }

    public static zzbum zzc() {
        return zzdr.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuk
    public final int zza() {
        return this.zzj;
    }
}
