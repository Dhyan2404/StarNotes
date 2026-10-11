package com.hjq.window;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;

/* renamed from: com.hjq.window.a */
/* loaded from: classes4.dex */
public final class ComponentCallbacksC6939a implements ComponentCallbacks {

    /* renamed from: e */
    public int f38938e;

    /* renamed from: f */
    public a f38939f;

    /* renamed from: com.hjq.window.a$a */
    /* loaded from: classes4.dex */
    public interface a {
        default void onScreenOrientationChange(int i) {
        }
    }

    public ComponentCallbacksC6939a(Configuration configuration) {
        this.f38938e = configuration.orientation;
    }

    /* renamed from: a */
    public void m30890a(Context context, a aVar) {
        context.getApplicationContext().registerComponentCallbacks(this);
        this.f38939f = aVar;
    }

    /* renamed from: b */
    public void m30891b(Context context) {
        context.getApplicationContext().unregisterComponentCallbacks(this);
        this.f38939f = null;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        int i = this.f38938e;
        int i2 = configuration.orientation;
        if (i == i2) {
            return;
        }
        this.f38938e = i2;
        a aVar = this.f38939f;
        if (aVar == null) {
            return;
        }
        aVar.onScreenOrientationChange(i2);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }
}
