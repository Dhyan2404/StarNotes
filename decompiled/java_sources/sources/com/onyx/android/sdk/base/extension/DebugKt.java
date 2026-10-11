package com.onyx.android.sdk.base.extension;

import android.util.Log;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.Debug;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"eIgnorable", "", "Lcom/onyx/android/sdk/base/utils/Debug;", "cls", "Ljava/lang/Class;", "throwable", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DebugKt {
    public static final void eIgnorable(@NotNull Debug debug, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(debug, "<this>");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (OnyxException.INSTANCE.ignorable(throwable)) {
            return;
        }
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        Log.e(debug.getTAG(), stringWriter.toString());
    }

    public static final void eIgnorable(@NotNull Debug debug, @NotNull Class<?> cls, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(debug, "<this>");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (OnyxException.INSTANCE.ignorable(throwable)) {
            return;
        }
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        Log.e(debug.getVerifiedTag(cls), stringWriter.toString());
    }
}
