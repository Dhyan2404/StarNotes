package com.onyx.android.sdk.base.utils;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ(\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/LogFileUtils;", "", "()V", "e", "", "cls", "Ljava/lang/Class;", NotificationCompat.CATEGORY_MESSAGE, "", "throwable", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LogFileUtils {

    @NotNull
    public static final LogFileUtils INSTANCE = new LogFileUtils();

    public static /* synthetic */ void e$default(LogFileUtils logFileUtils, Class cls, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        logFileUtils.m32103e(cls, str, th);
    }

    /* renamed from: e */
    public final void m32102e(@NotNull Class<?> cls, @Nullable String msg) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        m32103e(cls, msg, null);
    }

    /* renamed from: e */
    public final void m32103e(@NotNull Class<?> cls, @Nullable String msg, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Debug.INSTANCE.m32043e(cls, msg, throwable);
        String simpleName = cls.getSimpleName();
        StringBuilder sb = new StringBuilder();
        if (msg == null) {
            msg = "";
        }
        sb.append(msg);
        String stackTraceToString = throwable != null ? ExceptionsKt__ExceptionsKt.stackTraceToString(throwable) : null;
        sb.append(stackTraceToString != null ? stackTraceToString : "");
        LogUtils.file(simpleName, sb.toString());
    }
}
