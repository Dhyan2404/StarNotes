package com.onyx.android.sdk.base.utils;

import io.opencensus.contrib.http.util.HttpMeasureConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ThreadUtils;", "", "()V", "mySleep", "", HttpMeasureConstants.f94668b, "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ThreadUtils {

    @NotNull
    public static final ThreadUtils INSTANCE = new ThreadUtils();

    public final void mySleep(int ms) {
        try {
            Thread.sleep(ms, 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
