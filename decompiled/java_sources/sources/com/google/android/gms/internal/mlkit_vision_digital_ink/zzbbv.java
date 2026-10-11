package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbbv implements zzbum {
    static final zzbum zza = new zzbbv();

    private zzbbv() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbum
    public final boolean zza(int i) {
        if (i == 0 || i == 1 || i == 2) {
            return true;
        }
        switch (i) {
            case 4:
            case 8:
            case 16:
            case 32:
            case 64:
            case 128:
            case 256:
            case 512:
            case 1024:
            case 2048:
            case 4096:
                return true;
            default:
                return false;
        }
    }
}
