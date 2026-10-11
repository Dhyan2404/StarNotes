package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC5560h;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.C5557d;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5574x;
import java.util.ArrayList;

/* renamed from: com.google.android.play.core.integrity.ax */
/* loaded from: classes6.dex */
final class C5507ax {

    /* renamed from: a */
    @VisibleForTesting
    final C5545ac f33409a;

    /* renamed from: b */
    private final C5569q f33410b;

    /* renamed from: c */
    private final String f33411c;

    /* renamed from: d */
    private final TaskCompletionSource f33412d;

    public C5507ax(Context context, C5569q c5569q) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f33412d = taskCompletionSource;
        this.f33411c = context.getPackageName();
        this.f33410b = c5569q;
        C5545ac c5545ac = new C5545ac(context, c5569q, "ExpressIntegrityService", C5508ay.f33413a, new InterfaceC5574x() { // from class: com.google.android.play.core.integrity.ap
            @Override // com.google.android.play.integrity.internal.InterfaceC5574x
            /* renamed from: a */
            public final Object mo25662a(IBinder iBinder) {
                return AbstractBinderC5560h.m25742b(iBinder);
            }
        }, null);
        this.f33409a = c5545ac;
        c5545ac.m25718c().post(new C5500aq(this, taskCompletionSource, context));
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m25678a(C5507ax c5507ax, String str, long j, long j2) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c5507ax.f33411c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", str);
        bundle.putLong("warm.up.sid", j2);
        ArrayList arrayList = new ArrayList();
        C5557d.m25736b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C5557d.m25735a(arrayList)));
        return bundle;
    }

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ Bundle m25679b(C5507ax c5507ax, long j) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c5507ax.f33411c);
        bundle.putLong("cloud.prj", j);
        ArrayList arrayList = new ArrayList();
        C5557d.m25736b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C5557d.m25735a(arrayList)));
        return bundle;
    }

    /* renamed from: g */
    public static /* bridge */ /* synthetic */ boolean m25682g(C5507ax c5507ax) {
        return c5507ax.f33412d.getTask().isSuccessful() && !((Boolean) c5507ax.f33412d.getTask().getResult()).booleanValue();
    }

    /* renamed from: c */
    public final Task m25683c(@Nullable String str, long j, long j2) {
        this.f33410b.m25748c("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f33409a.m25720t(new C5502as(this, taskCompletionSource, str, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    /* renamed from: d */
    public final Task m25684d(long j) {
        this.f33410b.m25748c("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f33409a.m25720t(new C5501ar(this, taskCompletionSource, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
