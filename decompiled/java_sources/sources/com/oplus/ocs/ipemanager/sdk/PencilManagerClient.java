package com.oplus.ocs.ipemanager.sdk;

import android.content.Context;
import android.os.Looper;
import com.oplus.ocs.base.common.api.BaseClient;

/* loaded from: classes9.dex */
public class PencilManagerClient extends BaseClient {

    /* renamed from: l */
    public static final String f63160l = "IPE_PENCIL_CLIENT";

    public PencilManagerClient(Context context, Looper looper) {
        super(context, looper);
    }

    @Override // com.oplus.ocs.base.common.api.BaseClient
    public String getClientName() {
        return f63160l;
    }
}
