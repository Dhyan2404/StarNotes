package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.KeyAgreement;

/* loaded from: classes5.dex */
public final class zzxf implements zzxd<KeyAgreement> {
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzxd
    public final /* synthetic */ KeyAgreement zza(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
