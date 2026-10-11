package com.onyx.android.sdk.statistics;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J,\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00162\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/EmptyStatistics;", "Lcom/onyx/android/sdk/statistics/IStatistics;", "()V", "beforeInit", "", "appContext", "Landroid/content/Context;", "createInitSdkAction", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "statisticsManager", "Lcom/onyx/android/sdk/statistics/StatisticsManager;", "getWeChatInfo", ActivityChooserModel.f1429r, "Landroid/app/Activity;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/statistics/AuthResultListener;", "init", "", "context", "args", "", "", "isWechatInstallation", "onEvent", "eventID", Constant.MAP_TAG, "onProfileSignIn", Constant.TAG_USER_ID, "onProfileSignOff", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EmptyStatistics implements IStatistics {
    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public void beforeInit(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    @Nullable
    public RxBaseAction<ProviderCertificate> createInitSdkAction(@NotNull Context appContext, @NotNull StatisticsManager statisticsManager) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(statisticsManager, "statisticsManager");
        return null;
    }

    @Override // com.onyx.android.sdk.statistics.IStatisticsShare
    public void getWeChatInfo(@NotNull Context appContext, @NotNull Activity activity, @Nullable AuthResultListener listener) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public boolean init(@NotNull Context context, @NotNull Map<String, String> args) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(args, "args");
        return false;
    }

    @Override // com.onyx.android.sdk.statistics.IStatisticsShare
    public boolean isWechatInstallation(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return false;
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public void onEvent(@NotNull Context context, @NotNull String eventID) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventID, "eventID");
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public void onProfileSignIn(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public void onProfileSignOff() {
    }

    @Override // com.onyx.android.sdk.statistics.StatisticsBase
    public void onEvent(@NotNull Context context, @NotNull String eventID, @NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventID, "eventID");
        Intrinsics.checkNotNullParameter(map, "map");
    }
}
