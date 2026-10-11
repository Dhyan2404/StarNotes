package com.onyx.android.sdk.replicator.utils;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\"\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u000f\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;", "", "()V", "SYNC_LOG", "", "d", "", "cls", "Ljava/lang/Class;", "message", "e", "i", "report", "benchmark", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "w", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class KSyncLogUtils {

    @NotNull
    public static final KSyncLogUtils INSTANCE = new KSyncLogUtils();

    @NotNull
    public static final String SYNC_LOG = "SL--> ";

    /* renamed from: d */
    public final void m35864d(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32035d(cls, SYNC_LOG + message, new Object[0]);
    }

    /* renamed from: e */
    public final void m35865e(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32044e(cls, SYNC_LOG + message, new Object[0]);
    }

    /* renamed from: i */
    public final void m35866i(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32052i(cls, SYNC_LOG + message, new Object[0]);
    }

    public final void report(@NotNull Benchmark benchmark, @NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(benchmark, "benchmark");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        benchmark.report("SL-->  " + cls.getSimpleName() + ' ' + message);
    }

    /* renamed from: w */
    public final void m35867w(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32059w(cls, SYNC_LOG + message, new Object[0]);
    }
}
