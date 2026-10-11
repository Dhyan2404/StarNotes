package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.au */
/* loaded from: classes6.dex */
final class BinderC5504au extends BinderC5503at {

    /* renamed from: c */
    private final C5569q f33406c;

    public BinderC5504au(C5507ax c5507ax, TaskCompletionSource taskCompletionSource) {
        super(c5507ax, taskCompletionSource);
        this.f33406c = new C5569q("OnRequestIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.BinderC5503at, com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: c */
    public final void mo25675c(Bundle bundle) throws RemoteException {
        PendingIntent pendingIntent;
        Object parcelable;
        super.mo25675c(bundle);
        this.f33406c.m25748c("onRequestExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f33404a.trySetException(new StandardIntegrityException(i, null));
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = bundle.getParcelable("dialog.intent", PendingIntent.class);
            pendingIntent = (PendingIntent) parcelable;
        } else {
            pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        }
        TaskCompletionSource taskCompletionSource = this.f33404a;
        C5510b c5510b = new C5510b();
        c5510b.mo25687c(bundle.getString("token"));
        c5510b.mo25686b(this.f33406c);
        c5510b.mo25685a(pendingIntent);
        taskCompletionSource.trySetResult(c5510b.mo25688d());
    }
}
