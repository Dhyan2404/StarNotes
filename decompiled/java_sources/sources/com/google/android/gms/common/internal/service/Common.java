package com.google.android.gms.common.internal.service;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.sunia.HTREnginev2.v9p;

/* loaded from: classes5.dex */
public final class Common {

    @NonNull
    @KeepForSdk
    public static final Api<Api.ApiOptions.NoOptions> API;

    @NonNull
    @KeepForSdk
    public static final Api.ClientKey<zah> CLIENT_KEY;

    /* renamed from: a */
    public static final Api.AbstractClientBuilder f29384a;
    public static final zae zaa;

    static {
        Api.ClientKey<zah> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        v9p v9pVar = new v9p();
        f29384a = v9pVar;
        API = new Api<>("Common.API", v9pVar, clientKey);
        zaa = new zae();
    }
}
