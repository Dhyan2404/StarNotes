package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;

/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes3.dex */
public final class BinderC1788f extends com.google.android.gms.internal.play_billing.zzao {

    /* renamed from: a */
    public final WeakReference f13552a;

    /* renamed from: b */
    public final ResultReceiver f13553b;

    public /* synthetic */ BinderC1788f(WeakReference weakReference, ResultReceiver resultReceiver, zzbl zzblVar) {
        this.f13552a = weakReference;
        this.f13553b = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final void zza(Bundle bundle) throws RemoteException {
        ResultReceiver resultReceiver = this.f13553b;
        if (resultReceiver == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to send result for in-app messaging");
            return;
        }
        if (bundle == null) {
            resultReceiver.send(0, null);
            return;
        }
        Activity activity = (Activity) this.f13552a.get();
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("KEY_LAUNCH_INTENT");
        if (activity == null || pendingIntent == null) {
            this.f13553b.send(0, null);
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to launch intent for in-app messaging");
            return;
        }
        try {
            Intent intent = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
            intent.putExtra(ProxyBillingActivity.f13460k, this.f13553b);
            intent.putExtra("IN_APP_MESSAGE_INTENT", pendingIntent);
            activity.startActivity(intent);
        } catch (CancellationException e) {
            this.f13553b.send(0, null);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Exception caught while launching intent for in-app messaging.", e);
        }
    }
}
