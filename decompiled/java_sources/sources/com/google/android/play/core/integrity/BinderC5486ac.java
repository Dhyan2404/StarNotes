package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC5567o;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.ac */
/* loaded from: classes6.dex */
final class BinderC5486ac extends AbstractBinderC5567o {

    /* renamed from: a */
    final /* synthetic */ C5487ad f33374a;

    /* renamed from: b */
    private final C5569q f33375b = new C5569q("OnRequestIntegrityTokenCallback");

    /* renamed from: c */
    private final TaskCompletionSource f33376c;

    public BinderC5486ac(C5487ad c5487ad, TaskCompletionSource taskCompletionSource) {
        this.f33374a = c5487ad;
        this.f33376c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5568p
    /* renamed from: b */
    public final void mo25665b(Bundle bundle) {
        PendingIntent pendingIntent;
        Object parcelable;
        this.f33374a.f33377a.m25722v(this.f33376c);
        this.f33375b.m25748c("onRequestIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f33376c.trySetException(new IntegrityServiceException(i, null));
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.f33376c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = bundle.getParcelable("dialog.intent", PendingIntent.class);
            pendingIntent = (PendingIntent) parcelable;
        } else {
            pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        }
        TaskCompletionSource taskCompletionSource = this.f33376c;
        C5483a c5483a = new C5483a();
        c5483a.mo25660c(string);
        c5483a.mo25659b(this.f33375b);
        c5483a.mo25658a(pendingIntent);
        taskCompletionSource.trySetResult(c5483a.mo25661d());
    }
}
