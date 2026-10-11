package com.onyx.android.sdk.rxgesture;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\b\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\t\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\"\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\"\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGestureLog;", "", "Ljava/lang/Class;", "cls", "", "message", "", "v", "d", "i", "e", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", "report", "RX_GESTURE_LOG", Constants.STRING_SIG, "", "a", Constants.HASIDCALL_INDEX_SIG, "isDebugLog", Constants.BOOLEAN_VALUE_SIG, "setDebugLog", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxGestureLog {

    @NotNull
    public static final RxGestureLog INSTANCE = new RxGestureLog();

    @NotNull
    public static final String RX_GESTURE_LOG = "RXGesture--> ";

    /* renamed from: a, reason: from kotlin metadata */
    public static boolean isDebugLog;

    /* renamed from: d */
    public final void m35971d(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        if (isDebugLog) {
            Debug.INSTANCE.m32035d(cls, RX_GESTURE_LOG + message, new Object[0]);
        }
    }

    /* renamed from: e */
    public final void m35972e(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32044e(cls, RX_GESTURE_LOG + message, new Object[0]);
    }

    /* renamed from: i */
    public final void m35973i(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        if (isDebugLog) {
            Debug.INSTANCE.m32052i(cls, RX_GESTURE_LOG + message, new Object[0]);
        }
    }

    public final boolean isDebugLog() {
        return isDebugLog;
    }

    public final void report(@NotNull Benchmark benchmark, @NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(benchmark, "benchmark");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        benchmark.report("RXGesture-->  " + cls.getSimpleName() + ' ' + message);
    }

    public final void setDebugLog(boolean z) {
        isDebugLog = z;
    }

    /* renamed from: v */
    public final void m35974v(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        if (isDebugLog) {
            Debug.INSTANCE.m32056v(cls, RX_GESTURE_LOG + message, new Object[0]);
        }
    }
}
