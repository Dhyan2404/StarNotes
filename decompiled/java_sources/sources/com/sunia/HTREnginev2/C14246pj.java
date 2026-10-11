package com.sunia.HTREnginev2;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.datatransport.runtime.backends.CreationContext;
import com.google.android.datatransport.runtime.time.Clock;

/* renamed from: com.sunia.HTREnginev2.pj */
/* loaded from: classes4.dex */
public final class C14246pj extends CreationContext {

    /* renamed from: b */
    public final Context f80841b;

    /* renamed from: c */
    public final Clock f80842c;

    /* renamed from: d */
    public final Clock f80843d;

    /* renamed from: e */
    public final String f80844e;

    public C14246pj(Context context, Clock clock, Clock clock2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f80841b = context;
        if (clock == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f80842c = clock;
        if (clock2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f80843d = clock2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f80844e = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CreationContext)) {
            return false;
        }
        CreationContext creationContext = (CreationContext) obj;
        return this.f80841b.equals(creationContext.getApplicationContext()) && this.f80842c.equals(creationContext.getWallClock()) && this.f80843d.equals(creationContext.getMonotonicClock()) && this.f80844e.equals(creationContext.getBackendName());
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public Context getApplicationContext() {
        return this.f80841b;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    @NonNull
    public String getBackendName() {
        return this.f80844e;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public Clock getMonotonicClock() {
        return this.f80843d;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public Clock getWallClock() {
        return this.f80842c;
    }

    public int hashCode() {
        return this.f80844e.hashCode() ^ ((((((this.f80841b.hashCode() ^ 1000003) * 1000003) ^ this.f80842c.hashCode()) * 1000003) ^ this.f80843d.hashCode()) * 1000003);
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f80841b + ", wallClock=" + this.f80842c + ", monotonicClock=" + this.f80843d + ", backendName=" + this.f80844e + "}";
    }
}
