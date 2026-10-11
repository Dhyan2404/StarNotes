package com.google.android.play.core.integrity;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.integrity.internal.AbstractBinderC5565m;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.C5549ag;
import com.google.android.play.integrity.internal.C5557d;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5574x;
import java.util.ArrayList;

/* renamed from: com.google.android.play.core.integrity.ad */
/* loaded from: classes6.dex */
final class C5487ad {

    /* renamed from: a */
    @Nullable
    @VisibleForTesting
    final C5545ac f33377a;

    /* renamed from: b */
    private final C5569q f33378b;

    /* renamed from: c */
    private final String f33379c;

    public C5487ad(Context context, C5569q c5569q) {
        this.f33379c = context.getPackageName();
        this.f33378b = c5569q;
        if (C5549ag.m25727a(context)) {
            this.f33377a = new C5545ac(context, c5569q, "IntegrityService", C5488ae.f33380a, new InterfaceC5574x() { // from class: com.google.android.play.core.integrity.aa
                @Override // com.google.android.play.integrity.internal.InterfaceC5574x
                /* renamed from: a */
                public final Object mo25662a(IBinder iBinder) {
                    return AbstractBinderC5565m.m25744b(iBinder);
                }
            }, null);
        } else {
            c5569q.m25746a("Phonesky is not installed.", new Object[0]);
            this.f33377a = null;
        }
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ Bundle m25666a(C5487ad c5487ad, byte[] bArr, Long l, Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", c5487ad.f33379c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 2);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        C5557d.m25736b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C5557d.m25735a(arrayList)));
        return bundle;
    }

    /* renamed from: b */
    public final Task m25668b(IntegrityTokenRequest integrityTokenRequest) {
        if (this.f33377a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, null));
        }
        try {
            byte[] decode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long cloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            integrityTokenRequest.mo25655a();
            this.f33378b.m25748c("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f33377a.m25720t(new C5485ab(this, taskCompletionSource, decode, cloudProjectNumber, null, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, e));
        }
    }
}
