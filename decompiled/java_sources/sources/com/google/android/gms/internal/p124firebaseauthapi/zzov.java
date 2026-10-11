package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.SecureRandom;

/* loaded from: classes5.dex */
final class zzov extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ SecureRandom initialValue() {
        return zzow.zza();
    }
}
