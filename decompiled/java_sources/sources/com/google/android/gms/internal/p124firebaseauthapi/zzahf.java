package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzahf;
import com.google.android.gms.internal.p124firebaseauthapi.zzahh;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public abstract class zzahf<MessageType extends zzahf<MessageType, BuilderType>, BuilderType extends zzahh<MessageType, BuilderType>> implements zzakp {
    protected int zza = 0;

    /* renamed from: a_ */
    public final byte[] m22248a_() {
        try {
            byte[] bArr = new byte[zzl()];
            zzaim zzb = zzaim.zzb(bArr);
            zza(zzb);
            zzb.zzb();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }

    public int zza(zzalh zzalhVar) {
        int zzi = zzi();
        if (zzi != -1) {
            return zzi;
        }
        int zza = zzalhVar.zza(this);
        zzb(zza);
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(int i) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzi() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakp
    public final zzaho zzj() {
        try {
            zzahx zzc = zzaho.zzc(zzl());
            zza(zzc.zzb());
            return zzc.zza();
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + this.getClass().getName() + " to a ByteString threw an IOException (should never happen).", e);
        }
    }

    public final void zza(OutputStream outputStream) throws IOException {
        zzaim zza = zzaim.zza(outputStream, zzaim.zzf(zzl()));
        zza(zza);
        zza.zzc();
    }
}
