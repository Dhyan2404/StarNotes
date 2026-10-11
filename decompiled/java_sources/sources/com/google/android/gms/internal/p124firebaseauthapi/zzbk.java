package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class zzbk implements zzcb {
    private final InputStream zza;

    private zzbk(InputStream inputStream) {
        this.zza = inputStream;
    }

    public static zzcb zza(byte[] bArr) {
        return new zzbk(new ByteArrayInputStream(bArr));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcb
    public final zzvg zzb() throws IOException {
        try {
            return zzvg.zza(this.zza, zzaiq.zza());
        } finally {
            this.zza.close();
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcb
    public final zztx zza() throws IOException {
        try {
            return zztx.zza(this.zza, zzaiq.zza());
        } finally {
            this.zza.close();
        }
    }
}
