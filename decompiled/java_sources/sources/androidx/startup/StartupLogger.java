package androidx.startup;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class StartupLogger {

    /* renamed from: a */
    public static final String f10349a = "StartupLogger";

    /* renamed from: b */
    public static final boolean f10350b = false;

    /* renamed from: e */
    public static void m6435e(@NonNull String str, @Nullable Throwable th) {
        Log.e(f10349a, str, th);
    }

    /* renamed from: i */
    public static void m6436i(@NonNull String str) {
        Log.i(f10349a, str);
    }

    /* renamed from: w */
    public static void m6437w(@NonNull String str) {
        Log.w(f10349a, str);
    }
}
