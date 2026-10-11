package com.onyx.android.sdk.statistics;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/IStatisticsShare;", "", "getWeChatInfo", "", "appContext", "Landroid/content/Context;", ActivityChooserModel.f1429r, "Landroid/app/Activity;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/android/sdk/statistics/AuthResultListener;", "isWechatInstallation", "", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IStatisticsShare {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void getWeChatInfo$default(IStatisticsShare iStatisticsShare, Context context, Activity activity, AuthResultListener authResultListener, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getWeChatInfo");
            }
            if ((i & 4) != 0) {
                authResultListener = null;
            }
            iStatisticsShare.getWeChatInfo(context, activity, authResultListener);
        }
    }

    void getWeChatInfo(@NotNull Context appContext, @NotNull Activity activity, @Nullable AuthResultListener listener);

    boolean isWechatInstallation(@NotNull Activity activity);
}
