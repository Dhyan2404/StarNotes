package com.onyx.android.sdk.statistics;

import android.content.Context;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J$\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0010H&J,\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00102\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0010H&J\b\u0010\u0016\u001a\u00020\u0003H&¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/StatisticsBase;", "", "beforeInit", "", "appContext", "Landroid/content/Context;", "createInitSdkAction", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "statisticsManager", "Lcom/onyx/android/sdk/statistics/StatisticsManager;", "init", "", "context", "args", "", "", "onEvent", "eventID", Constant.MAP_TAG, "onProfileSignIn", Constant.TAG_USER_ID, "onProfileSignOff", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface StatisticsBase {
    void beforeInit(@NotNull Context appContext);

    @Nullable
    RxBaseAction<ProviderCertificate> createInitSdkAction(@NotNull Context appContext, @NotNull StatisticsManager statisticsManager);

    boolean init(@NotNull Context context, @NotNull Map<String, String> args);

    void onEvent(@NotNull Context context, @NotNull String eventID);

    void onEvent(@NotNull Context context, @NotNull String eventID, @NotNull Map<String, String> map);

    void onProfileSignIn(@NotNull String userId);

    void onProfileSignOff();
}
