package com.sunia.HTREnginev2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.errorprone.annotations.CheckReturnValue;
import javax.annotation.Nullable;

@CheckReturnValue
/* loaded from: classes5.dex */
public class bsp {

    /* renamed from: e */
    public static final bsp f66103e = new bsp(true, 3, 1, null, null);

    /* renamed from: a */
    public final boolean f66104a;

    /* renamed from: b */
    @Nullable
    public final String f66105b;

    /* renamed from: c */
    @Nullable
    public final Throwable f66106c;

    /* renamed from: d */
    public final int f66107d;

    public bsp(boolean z, int i, int i2, @Nullable String str, @Nullable Throwable th) {
        this.f66104a = z;
        this.f66107d = i;
        this.f66105b = str;
        this.f66106c = th;
    }

    @Deprecated
    /* renamed from: b */
    public static bsp m53337b() {
        return f66103e;
    }

    /* renamed from: c */
    public static bsp m53338c(@NonNull String str) {
        return new bsp(false, 1, 5, str, null);
    }

    /* renamed from: d */
    public static bsp m53339d(@NonNull String str, @NonNull Throwable th) {
        return new bsp(false, 1, 5, str, th);
    }

    /* renamed from: f */
    public static bsp m53340f(int i) {
        return new bsp(true, i, 1, null, null);
    }

    /* renamed from: g */
    public static bsp m53341g(int i, int i2, @NonNull String str, @Nullable Throwable th) {
        return new bsp(false, i, i2, str, th);
    }

    @Nullable
    /* renamed from: a */
    public String mo53342a() {
        return this.f66105b;
    }

    /* renamed from: e */
    public final void m53343e() {
        if (this.f66104a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f66106c != null) {
            Log.d("GoogleCertificatesRslt", mo53342a(), this.f66106c);
        } else {
            Log.d("GoogleCertificatesRslt", mo53342a());
        }
    }
}
