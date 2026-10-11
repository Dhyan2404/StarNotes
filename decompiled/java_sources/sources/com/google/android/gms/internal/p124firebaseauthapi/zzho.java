package com.google.android.gms.internal.p124firebaseauthapi;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes5.dex */
public final class zzho extends zzhr {
    public zzho(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzhr
    public final zzhp zza(byte[] bArr, int i) throws InvalidKeyException {
        return new zzhm(bArr, i);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzhr
    public final /* bridge */ /* synthetic */ void zza(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        super.zza(byteBuffer, bArr, bArr2, bArr3);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzhr
    public final /* bridge */ /* synthetic */ byte[] zza(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return super.zza(byteBuffer, bArr, bArr2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzhr
    public final /* bridge */ /* synthetic */ byte[] zza(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        return super.zza(bArr, bArr2, bArr3);
    }
}
