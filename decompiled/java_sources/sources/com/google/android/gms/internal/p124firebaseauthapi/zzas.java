package com.google.android.gms.internal.p124firebaseauthapi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzas<E> extends zzak<E> {
    private final zzaq<E> zza;

    public zzas(zzaq<E> zzaqVar, int i) {
        super(zzaqVar.size(), i);
        this.zza = zzaqVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzak
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
