package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzwz extends zzxf {
    private final boolean zza;

    public zzwz(boolean z) {
        this.zza = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzxf) && this.zza == ((zzxf) obj).zza();
    }

    public final int hashCode() {
        return (true != this.zza ? 1237 : 1231) ^ 1000003;
    }

    public final String toString() {
        return "ConnectivityState{pausedForConnectivity=" + this.zza + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzxf
    public final boolean zza() {
        return this.zza;
    }
}
