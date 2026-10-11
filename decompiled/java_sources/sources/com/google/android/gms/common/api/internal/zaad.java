package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.sunia.HTREnginev2.d9p;
import com.sunia.HTREnginev2.e9p;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes5.dex */
public final class zaad {

    /* renamed from: a */
    public final Map f29177a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    public final Map f29178b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: c */
    public final void m22029c(BasePendingResult basePendingResult, boolean z) {
        this.f29177a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.addStatusListener(new d9p(this, basePendingResult));
    }

    /* renamed from: d */
    public final void m22030d(TaskCompletionSource taskCompletionSource, boolean z) {
        this.f29178b.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new e9p(this, taskCompletionSource));
    }

    /* renamed from: e */
    public final void m22031e(int i, @Nullable String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        m22033g(true, new Status(20, sb.toString()));
    }

    /* renamed from: f */
    public final boolean m22032f() {
        return (this.f29177a.isEmpty() && this.f29178b.isEmpty()) ? false : true;
    }

    /* renamed from: g */
    public final void m22033g(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f29177a) {
            hashMap = new HashMap(this.f29177a);
        }
        synchronized (this.f29178b) {
            hashMap2 = new HashMap(this.f29178b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    public final void zaf() {
        m22033g(false, GoogleApiManager.zaa);
    }
}
