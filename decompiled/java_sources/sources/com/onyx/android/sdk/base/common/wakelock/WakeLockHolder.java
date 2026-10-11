package com.onyx.android.sdk.base.common.wakelock;

import android.content.Context;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0007H&J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tH&J\b\u0010\u000b\u001a\u00020\u0003H&¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "", "acquireWakeLock", "", "context", "Landroid/content/Context;", "flags", "", "tag", "", HttpMeasureConstants.f94668b, "releaseWakeLock", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface WakeLockHolder {
    void acquireWakeLock(@NotNull Context context, int flags, @Nullable String tag, int ms);

    void acquireWakeLock(@NotNull Context context, @Nullable String tag);

    void releaseWakeLock();
}
