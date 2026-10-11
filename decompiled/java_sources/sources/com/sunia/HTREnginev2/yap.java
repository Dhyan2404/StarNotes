package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.internal.base.zau;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes5.dex */
public final class yap extends zau {

    /* renamed from: a */
    public final Context f90549a;

    /* renamed from: b */
    public final /* synthetic */ GoogleApiAvailability f90550b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yap(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f90550b = googleApiAvailability;
        this.f90549a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i);
            return;
        }
        GoogleApiAvailability googleApiAvailability = this.f90550b;
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(this.f90549a);
        if (googleApiAvailability.isUserResolvableError(isGooglePlayServicesAvailable)) {
            this.f90550b.showErrorNotification(this.f90549a, isGooglePlayServicesAvailable);
        }
    }
}
