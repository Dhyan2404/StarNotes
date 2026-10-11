package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zabx extends BroadcastReceiver {

    /* renamed from: a */
    @Nullable
    public Context f29261a;

    /* renamed from: b */
    public final zabw f29262b;

    public zabx(zabw zabwVar) {
        this.f29262b = zabwVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f29262b.zaa();
            zab();
        }
    }

    public final void zaa(Context context) {
        this.f29261a = context;
    }

    public final synchronized void zab() {
        Context context = this.f29261a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f29261a = null;
    }
}
