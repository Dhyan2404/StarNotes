package com.sunia.HTREnginev2;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzby;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class ymp implements jnp {

    /* renamed from: a */
    public final /* synthetic */ String f90896a;

    public ymp(String str) {
        this.f90896a = str;
    }

    @Override // com.sunia.HTREnginev2.jnp
    public final /* bridge */ /* synthetic */ Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Logger logger;
        Bundle zzg = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzg(this.f90896a);
        com.google.android.gms.auth.zzl.m21907c(zzg);
        String string = zzg.getString("Error");
        Intent intent = (Intent) zzg.getParcelable("userRecoveryIntent");
        zzby zza = zzby.zza(string);
        if (zzby.SUCCESS.equals(zza)) {
            return Boolean.TRUE;
        }
        if (!zzby.zzb(zza)) {
            throw new GoogleAuthException(string);
        }
        logger = com.google.android.gms.auth.zzl.f28982b;
        logger.m22195w("isUserRecoverableError status: ".concat(String.valueOf(zza)), new Object[0]);
        throw new UserRecoverableAuthException(string, intent);
    }
}
