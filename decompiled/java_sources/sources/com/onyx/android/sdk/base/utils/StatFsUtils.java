package com.onyx.android.sdk.base.utils;

import android.os.StatFs;
import com.blankj.utilcode.util.LogUtils;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/StatFsUtils;", "", "()V", "getAvailableSize", "", "path", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StatFsUtils {

    @NotNull
    public static final StatFsUtils INSTANCE = new StatFsUtils();

    public final long getAvailableSize(@NotNull String path) {
        String stackTraceToString;
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            StatFs statFs = new StatFs(path);
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Exception e) {
            String simpleName = StatFsUtils.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append("getAvailableSize() statFs path:");
            sb.append(path);
            sb.append(";exception:");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            sb.append(stackTraceToString);
            LogUtils.file(simpleName, sb.toString());
            return 0L;
        }
    }
}
