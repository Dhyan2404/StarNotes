package com.google.firebase.auth.internal;

import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.p124firebaseauthapi.zzxy;
import com.google.firebase.auth.GetTokenResult;
import com.sunia.HTREnginev2.aip;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public final class zzbf {

    /* renamed from: a */
    public static final Logger f35720a = new Logger("GetTokenResultFactory", new String[0]);

    public static GetTokenResult zza(String str) {
        Map hashMap;
        try {
            hashMap = aip.m53023b(str);
        } catch (zzxy e) {
            f35720a.m22190e("Error parsing token claims", e, new Object[0]);
            hashMap = new HashMap();
        }
        return new GetTokenResult(str, hashMap);
    }
}
