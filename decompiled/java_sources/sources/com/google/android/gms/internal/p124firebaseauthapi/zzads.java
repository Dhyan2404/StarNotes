package com.google.android.gms.internal.p124firebaseauthapi;

import android.app.Activity;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.auth.PhoneAuthProvider;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzads {
    private static final Map<String, zzadu> zza = new ArrayMap();

    public static PhoneAuthProvider.OnVerificationStateChangedCallbacks zza(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable zzacz zzaczVar) {
        zza(str, zzaczVar);
        return new zzadv(onVerificationStateChangedCallbacks, str);
    }

    public static void zza() {
        zza.clear();
    }

    private static void zza(String str, @Nullable zzacz zzaczVar) {
        zza.put(str, new zzadu(zzaczVar, DefaultClock.getInstance().currentTimeMillis()));
    }

    public static boolean zza(String str, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, @Nullable Activity activity, Executor executor) {
        Map<String, zzadu> map = zza;
        if (map.containsKey(str)) {
            zzadu zzaduVar = map.get(str);
            if (DefaultClock.getInstance().currentTimeMillis() - zzaduVar.zzb < ExecuteAutoBackupTaskAction.f48008l) {
                zzacz zzaczVar = zzaduVar.zza;
                if (zzaczVar == null) {
                    return true;
                }
                zzaczVar.zza(onVerificationStateChangedCallbacks, activity, executor, str);
                return true;
            }
            zza(str, null);
            return false;
        }
        zza(str, null);
        return false;
    }
}
