package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zal {

    /* renamed from: d */
    public int f29292d;

    /* renamed from: b */
    public final ArrayMap f29290b = new ArrayMap();

    /* renamed from: c */
    public final TaskCompletionSource f29291c = new TaskCompletionSource();

    /* renamed from: e */
    public boolean f29293e = false;

    /* renamed from: a */
    public final ArrayMap f29289a = new ArrayMap();

    public zal(Iterable iterable) {
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            this.f29289a.put(((HasApiKey) it2.next()).getApiKey(), null);
        }
        this.f29292d = this.f29289a.keySet().size();
    }

    public final Task zaa() {
        return this.f29291c.getTask();
    }

    public final Set zab() {
        return this.f29289a.keySet();
    }

    public final void zac(ApiKey apiKey, ConnectionResult connectionResult, @Nullable String str) {
        this.f29289a.put(apiKey, connectionResult);
        this.f29290b.put(apiKey, str);
        this.f29292d--;
        if (!connectionResult.isSuccess()) {
            this.f29293e = true;
        }
        if (this.f29292d == 0) {
            if (!this.f29293e) {
                this.f29291c.setResult(this.f29290b);
            } else {
                this.f29291c.setException(new AvailabilityException(this.f29289a));
            }
        }
    }
}
