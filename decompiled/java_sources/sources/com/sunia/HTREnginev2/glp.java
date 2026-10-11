package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class glp implements jnp {

    /* renamed from: a */
    public final /* synthetic */ String f71152a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f71153b;

    public glp(String str, Bundle bundle) {
        this.f71152a = str;
        this.f71153b = bundle;
    }

    @Override // com.sunia.HTREnginev2.jnp
    public final /* bridge */ /* synthetic */ Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle zzd = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzd(this.f71152a, this.f71153b);
        com.google.android.gms.auth.zzl.m21907c(zzd);
        String string = zzd.getString("Error");
        if (zzd.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
