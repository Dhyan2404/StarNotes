package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.firebase.FirebaseApp;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzaec {
    private static final Map<String, zzaef> zza = new ArrayMap();
    private static final Map<String, List<WeakReference<zzaee>>> zzb = new ArrayMap();

    private static String zza(String str, int i, boolean z) {
        if (z) {
            return "http://[" + str + "]:" + i + "/";
        }
        return CommonConstant.SCHEME_HTTP + str + ":" + i + "/";
    }

    @NonNull
    public static String zzb(String str) {
        zzaef zzaefVar;
        String str2;
        Map<String, zzaef> map = zza;
        synchronized (map) {
            zzaefVar = map.get(str);
        }
        if (zzaefVar != null) {
            str2 = "" + zza(zzaefVar.zzb(), zzaefVar.zza(), zzaefVar.zzb().contains(":"));
        } else {
            str2 = "" + CommonConstant.SCHEME_HTTPS;
        }
        return str2 + "www.googleapis.com/identitytoolkit/v3/relyingparty";
    }

    @NonNull
    public static String zzc(String str) {
        zzaef zzaefVar;
        String str2;
        Map<String, zzaef> map = zza;
        synchronized (map) {
            zzaefVar = map.get(str);
        }
        if (zzaefVar != null) {
            str2 = "" + zza(zzaefVar.zzb(), zzaefVar.zza(), zzaefVar.zzb().contains(":"));
        } else {
            str2 = "" + CommonConstant.SCHEME_HTTPS;
        }
        return str2 + "identitytoolkit.googleapis.com/v2";
    }

    @NonNull
    public static String zzd(String str) {
        zzaef zzaefVar;
        String str2;
        Map<String, zzaef> map = zza;
        synchronized (map) {
            zzaefVar = map.get(str);
        }
        if (zzaefVar != null) {
            str2 = "" + zza(zzaefVar.zzb(), zzaefVar.zza(), zzaefVar.zzb().contains(":"));
        } else {
            str2 = "" + CommonConstant.SCHEME_HTTPS;
        }
        return str2 + "securetoken.googleapis.com/v1";
    }

    @NonNull
    public static String zza(String str) {
        zzaef zzaefVar;
        Map<String, zzaef> map = zza;
        synchronized (map) {
            zzaefVar = map.get(str);
        }
        if (zzaefVar != null) {
            return zza(zzaefVar.zzb(), zzaefVar.zza(), zzaefVar.zzb().contains(":")) + "emulator/auth/handler";
        }
        throw new IllegalStateException("Tried to get the emulator widget endpoint, but no emulator endpoint overrides found.");
    }

    public static void zza(String str, zzaee zzaeeVar) {
        Map<String, List<WeakReference<zzaee>>> map = zzb;
        synchronized (map) {
            if (map.containsKey(str)) {
                map.get(str).add(new WeakReference<>(zzaeeVar));
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new WeakReference<>(zzaeeVar));
                map.put(str, arrayList);
            }
        }
    }

    public static void zza(@NonNull FirebaseApp firebaseApp, @NonNull String str, int i) {
        String apiKey = firebaseApp.getOptions().getApiKey();
        Map<String, zzaef> map = zza;
        synchronized (map) {
            map.put(apiKey, new zzaef(str, i));
        }
        Map<String, List<WeakReference<zzaee>>> map2 = zzb;
        synchronized (map2) {
            if (map2.containsKey(apiKey)) {
                Iterator<WeakReference<zzaee>> it2 = map2.get(apiKey).iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    zzaee zzaeeVar = it2.next().get();
                    if (zzaeeVar != null) {
                        zzaeeVar.zza();
                        z = true;
                    }
                }
                if (!z) {
                    zza.remove(apiKey);
                }
            }
        }
    }

    public static boolean zza(@NonNull FirebaseApp firebaseApp) {
        return zza.containsKey(firebaseApp.getOptions().getApiKey());
    }
}
