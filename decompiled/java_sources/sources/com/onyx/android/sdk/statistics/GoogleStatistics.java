package com.onyx.android.sdk.statistics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\bH\u0016J,\u0010\r\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\b2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J \u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\"\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016J\u0014\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u001d0\u0007H\u0002J$\u0010!\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\b2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u001d0\u0007H\u0002R\u0016\u0010\u0006\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\"R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/GoogleStatistics;", "Lcom/onyx/android/sdk/statistics/IStatistics;", "Landroid/content/Context;", "appContext", "", "beforeInit", "context", "", "", "args", "", "init", "eventID", "onEvent", Constant.MAP_TAG, Constant.TAG_USER_ID, "onProfileSignIn", "onProfileSignOff", "Lcom/onyx/android/sdk/statistics/StatisticsManager;", "statisticsManager", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "createInitSdkAction", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "isWechatInstallation", "Lcom/onyx/android/sdk/statistics/AuthResultListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getWeChatInfo", "", "a", "eventId", "paramsMap", "b", "Landroid/content/Context;", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "firebaseAnalytics", Constants.CONSTRUCTOR_NAME, "()V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleStatistics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleStatistics.kt\ncom/onyx/android/sdk/statistics/GoogleStatistics\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,79:1\n215#2,2:80\n*S KotlinDebug\n*F\n+ 1 GoogleStatistics.kt\ncom/onyx/android/sdk/statistics/GoogleStatistics\n*L\n57#1:80,2\n*E\n"})
/* loaded from: classes8.dex */
public final class GoogleStatistics implements IStatistics {

    /* renamed from: a, reason: from kotlin metadata */
    public Context context;

    /* renamed from: b, reason: from kotlin metadata */
    public FirebaseAnalytics firebaseAnalytics;

    @Inject
    public GoogleStatistics() {
    }

    /* renamed from: a */
    public final Map<String, Object> m36055a() {
        return new LinkedHashMap();
    }

    /* renamed from: b */
    public final void m36056b(String eventId, Map<String, Object> paramsMap) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, Object> entry : paramsMap.entrySet()) {
            if (entry.getKey().length() > 0) {
                bundle.putString(entry.getKey(), entry.getValue().toString());
            }
        }
        FirebaseAnalytics firebaseAnalytics = this.firebaseAnalytics;
        if (firebaseAnalytics == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firebaseAnalytics");
            firebaseAnalytics = null;
        }
        firebaseAnalytics.logEvent(eventId, bundle);
    }

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
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(firebaseAnalytics, "getInstance(...)");
        this.firebaseAnalytics = firebaseAnalytics;
        if (firebaseAnalytics == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firebaseAnalytics");
            firebaseAnalytics = null;
        }
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.context = applicationContext;
        return true;
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
        m36056b(eventID, m36055a());
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
        Map<String, Object> m36055a = m36055a();
        m36055a.putAll(map);
        m36056b(eventID, m36055a);
    }
}
