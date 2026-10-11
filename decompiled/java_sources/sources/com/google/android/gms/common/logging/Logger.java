package com.google.android.gms.common.logging;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;

@KeepForSdk
/* loaded from: classes5.dex */
public class Logger {

    /* renamed from: a */
    public final String f29427a;

    /* renamed from: b */
    public final String f29428b;

    /* renamed from: c */
    public final GmsLogger f29429c;

    /* renamed from: d */
    public final int f29430d;

    @KeepForSdk
    public Logger(@NonNull String str, @NonNull String... strArr) {
        String sb;
        if (strArr.length == 0) {
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            for (String str2 : strArr) {
                if (sb2.length() > 1) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            sb2.append("] ");
            sb = sb2.toString();
        }
        this.f29428b = sb;
        this.f29427a = str;
        this.f29429c = new GmsLogger(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f29427a, i)) {
            i++;
        }
        this.f29430d = i;
    }

    @KeepForSdk
    /* renamed from: d */
    public void m22189d(@NonNull String str, @NonNull Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.f29427a, format(str, objArr));
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public void m22190e(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        Log.e(this.f29427a, format(str, objArr), th);
    }

    @NonNull
    @KeepForSdk
    public String format(@NonNull String str, @NonNull Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f29428b.concat(str);
    }

    @NonNull
    @KeepForSdk
    public String getTag() {
        return this.f29427a;
    }

    @KeepForSdk
    /* renamed from: i */
    public void m22192i(@NonNull String str, @NonNull Object... objArr) {
        Log.i(this.f29427a, format(str, objArr));
    }

    @KeepForSdk
    public boolean isLoggable(int i) {
        return this.f29430d <= i;
    }

    @KeepForSdk
    /* renamed from: v */
    public void m22193v(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.f29427a, format(str, objArr), th);
        }
    }

    @KeepForSdk
    /* renamed from: w */
    public void m22195w(@NonNull String str, @NonNull Object... objArr) {
        Log.w(this.f29427a, format(str, objArr));
    }

    @KeepForSdk
    public void wtf(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        Log.wtf(this.f29427a, format(str, objArr), th);
    }

    @KeepForSdk
    /* renamed from: e */
    public void m22191e(@NonNull String str, @NonNull Object... objArr) {
        Log.e(this.f29427a, format(str, objArr));
    }

    @KeepForSdk
    public void wtf(@NonNull Throwable th) {
        Log.wtf(this.f29427a, th);
    }

    @KeepForSdk
    /* renamed from: v */
    public void m22194v(@NonNull String str, @NonNull Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.f29427a, format(str, objArr));
        }
    }
}
