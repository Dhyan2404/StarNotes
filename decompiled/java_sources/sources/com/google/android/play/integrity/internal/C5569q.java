package com.google.android.play.integrity.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.google.android.play.integrity.internal.q */
/* loaded from: classes6.dex */
public final class C5569q {

    /* renamed from: a */
    public final String f33482a;

    public C5569q(String str) {
        this.f33482a = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    /* renamed from: e */
    public static String m25745e(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + IteratorUtils.f104924b;
            }
        }
        return str + " : " + str2;
    }

    /* renamed from: a */
    public final int m25746a(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m25745e(this.f33482a, "Phonesky is not installed.", objArr));
        }
        return 0;
    }

    /* renamed from: b */
    public final int m25747b(Throwable th, String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m25745e(this.f33482a, str, objArr), th);
        }
        return 0;
    }

    /* renamed from: c */
    public final int m25748c(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", m25745e(this.f33482a, str, objArr));
        }
        return 0;
    }

    /* renamed from: d */
    public final int m25749d(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", m25745e(this.f33482a, "Phonesky package is not signed -- possibly self-built package. Could not verify.", objArr));
        }
        return 0;
    }
}
