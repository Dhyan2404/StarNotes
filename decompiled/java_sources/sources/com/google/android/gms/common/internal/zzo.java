package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzo {

    /* renamed from: f */
    public static final Uri f29416f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a */
    @Nullable
    public final String f29417a;

    /* renamed from: b */
    @Nullable
    public final String f29418b;

    /* renamed from: c */
    @Nullable
    public final ComponentName f29419c;

    /* renamed from: d */
    public final int f29420d;

    /* renamed from: e */
    public final boolean f29421e;

    public zzo(ComponentName componentName, int i) {
        this.f29417a = null;
        this.f29418b = null;
        Preconditions.checkNotNull(componentName);
        this.f29419c = componentName;
        this.f29420d = 4225;
        this.f29421e = false;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return Objects.equal(this.f29417a, zzoVar.f29417a) && Objects.equal(this.f29418b, zzoVar.f29418b) && Objects.equal(this.f29419c, zzoVar.f29419c) && this.f29421e == zzoVar.f29421e;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f29417a, this.f29418b, this.f29419c, 4225, Boolean.valueOf(this.f29421e));
    }

    public final String toString() {
        String str = this.f29417a;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.f29419c);
        return this.f29419c.flattenToString();
    }

    @Nullable
    public final ComponentName zza() {
        return this.f29419c;
    }

    public final Intent zzb(Context context) {
        Bundle bundle;
        if (this.f29417a == null) {
            return new Intent().setComponent(this.f29419c);
        }
        if (this.f29421e) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.f29417a);
            try {
                bundle = context.getContentResolver().call(f29416f, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                bundle = null;
            }
            r2 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
            if (r2 == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.f29417a)));
            }
        }
        return r2 == null ? new Intent(this.f29417a).setPackage(this.f29418b) : r2;
    }

    @Nullable
    public final String zzc() {
        return this.f29418b;
    }

    public zzo(String str, int i, boolean z) {
        this(str, "com.google.android.gms", 4225, false);
    }

    public zzo(String str, String str2, int i, boolean z) {
        Preconditions.checkNotEmpty(str);
        this.f29417a = str;
        Preconditions.checkNotEmpty(str2);
        this.f29418b = str2;
        this.f29419c = null;
        this.f29420d = 4225;
        this.f29421e = z;
    }
}
