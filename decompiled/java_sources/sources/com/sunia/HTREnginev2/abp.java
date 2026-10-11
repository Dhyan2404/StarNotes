package com.sunia.HTREnginev2;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

/* loaded from: classes5.dex */
public final class abp implements View.OnClickListener {

    /* renamed from: e */
    public final /* synthetic */ Context f64532e;

    /* renamed from: f */
    public final /* synthetic */ Intent f64533f;

    public abp(Context context, Intent intent) {
        this.f64532e = context;
        this.f64533f = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f64532e.startActivity(this.f64533f);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
