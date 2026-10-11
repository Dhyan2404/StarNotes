package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.FormatMethod;
import com.google.errorprone.annotations.FormatString;

@KeepForSdk
/* loaded from: classes5.dex */
public final class GmsLogger {

    /* renamed from: a */
    public final String f29359a;

    /* renamed from: b */
    @Nullable
    public final String f29360b;

    @KeepForSdk
    public GmsLogger(@NonNull String str) {
        this(str, null);
    }

    /* renamed from: a */
    public final String m22155a(String str) {
        String str2 = this.f29360b;
        return str2 == null ? str : str2.concat(str);
    }

    @FormatMethod
    /* renamed from: b */
    public final String m22156b(String str, Object... objArr) {
        String str2 = this.f29360b;
        String format = String.format(str, objArr);
        return str2 == null ? format : str2.concat(format);
    }

    @KeepForSdk
    public boolean canLog(int i) {
        return Log.isLoggable(this.f29359a, i);
    }

    @KeepForSdk
    public boolean canLogPii() {
        return false;
    }

    @KeepForSdk
    /* renamed from: d */
    public void m22157d(@NonNull String str, @NonNull String str2) {
        if (canLog(3)) {
            Log.d(str, m22155a(str2));
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public void m22159e(@NonNull String str, @NonNull String str2) {
        if (canLog(6)) {
            Log.e(str, m22155a(str2));
        }
    }

    @KeepForSdk
    @FormatMethod
    public void efmt(@NonNull String str, @NonNull @FormatString String str2, @NonNull Object... objArr) {
        if (canLog(6)) {
            Log.e(str, m22156b(str2, objArr));
        }
    }

    @KeepForSdk
    /* renamed from: i */
    public void m22161i(@NonNull String str, @NonNull String str2) {
        if (canLog(4)) {
            Log.i(str, m22155a(str2));
        }
    }

    @KeepForSdk
    public void pii(@NonNull String str, @NonNull String str2) {
    }

    @KeepForSdk
    /* renamed from: v */
    public void m22163v(@NonNull String str, @NonNull String str2) {
        if (canLog(2)) {
            Log.v(str, m22155a(str2));
        }
    }

    @KeepForSdk
    /* renamed from: w */
    public void m22165w(@NonNull String str, @NonNull String str2) {
        if (canLog(5)) {
            Log.w(str, m22155a(str2));
        }
    }

    @KeepForSdk
    @FormatMethod
    public void wfmt(@NonNull String str, @NonNull @FormatString String str2, @NonNull Object... objArr) {
        if (canLog(5)) {
            Log.w(this.f29359a, m22156b(str2, objArr));
        }
    }

    @KeepForSdk
    public void wtf(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(7)) {
            Log.e(str, m22155a(str2), th);
            Log.wtf(str, m22155a(str2), th);
        }
    }

    @KeepForSdk
    public GmsLogger(@NonNull String str, @Nullable String str2) {
        Preconditions.checkNotNull(str, "log tag cannot be null");
        Preconditions.checkArgument(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f29359a = str;
        this.f29360b = (str2 == null || str2.length() <= 0) ? null : str2;
    }

    @KeepForSdk
    public void pii(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
    }

    @KeepForSdk
    /* renamed from: d */
    public void m22158d(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(3)) {
            Log.d(str, m22155a(str2), th);
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public void m22160e(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(6)) {
            Log.e(str, m22155a(str2), th);
        }
    }

    @KeepForSdk
    /* renamed from: i */
    public void m22162i(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(4)) {
            Log.i(str, m22155a(str2), th);
        }
    }

    @KeepForSdk
    /* renamed from: v */
    public void m22164v(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(2)) {
            Log.v(str, m22155a(str2), th);
        }
    }

    @KeepForSdk
    /* renamed from: w */
    public void m22166w(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(5)) {
            Log.w(str, m22155a(str2), th);
        }
    }
}
