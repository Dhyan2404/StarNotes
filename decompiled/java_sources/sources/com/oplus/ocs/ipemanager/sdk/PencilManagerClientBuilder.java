package com.oplus.ocs.ipemanager.sdk;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.oplus.ocs.base.common.api.Api;
import com.oplus.ocs.base.internal.ClientSettings;

/* loaded from: classes9.dex */
public class PencilManagerClientBuilder extends Api.AbstractClientBuilder {

    /* renamed from: a */
    public static final String f63161a = "PMClientBuilder";

    @Override // com.oplus.ocs.base.common.api.Api.AbstractClientBuilder
    public Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj) {
        Log.d(f63161a, "buildClient");
        return new PencilManagerClient(context, looper);
    }
}
