package com.onyx.android.sdk.data.account;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\"\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u000f\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/AccountLogUtils;", "", "()V", "ACCOUNT_LOG", "", "d", "", "cls", "Ljava/lang/Class;", "message", "e", "i", "report", "benchmark", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "w", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountLogUtils {

    @NotNull
    public static final String ACCOUNT_LOG = "AL--> ";

    @NotNull
    public static final AccountLogUtils INSTANCE = new AccountLogUtils();

    private AccountLogUtils() {
    }

    /* renamed from: d */
    public final void m32935d(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32035d(cls, ACCOUNT_LOG + message, new Object[0]);
    }

    /* renamed from: e */
    public final void m32936e(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32044e(cls, ACCOUNT_LOG + message, new Object[0]);
    }

    /* renamed from: i */
    public final void m32937i(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32052i(cls, ACCOUNT_LOG + message, new Object[0]);
    }

    public final void report(@NotNull Benchmark benchmark, @NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(benchmark, "benchmark");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        benchmark.report("AL-->  " + cls.getSimpleName() + ' ' + message);
    }

    /* renamed from: w */
    public final void m32938w(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32059w(cls, ACCOUNT_LOG + message, new Object[0]);
    }
}
