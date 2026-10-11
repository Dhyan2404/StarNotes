package com.onyx.android.sdk.statistics;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.EntryPointAccessors;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011J\"\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\bJ*\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\b2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\bJ\u0006\u0010\u001d\u001a\u00020\u0004J\b\u0010\u001f\u001a\u00020\u001eH\u0002R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001e0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001e\u0010%\u001a\u00020\n2\u0006\u0010#\u001a\u00020\n8\u0002@BX\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b \u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/StatisticsManager;", "", "Landroid/content/Context;", "appContext", "", "beforeInit", "context", "", "", "args", "Lcom/onyx/android/sdk/statistics/StatisticsType;", "type", "", "init", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "createInitSdkAction", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "isWechatInstallation", "Lcom/onyx/android/sdk/statistics/AuthResultListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getWeChatInfo", "switchStatistics", "eventID", "onEvent", Constant.MAP_TAG, Constant.TAG_USER_ID, "onProfileSignIn", "onProfileSignOff", "Lcom/onyx/android/sdk/statistics/StatisticsBase;", "b", "a", "Ljava/util/Map;", "providerMap", "<set-?>", "Lcom/onyx/android/sdk/statistics/StatisticsType;", "currentStatisticsType", "Lcom/onyx/android/sdk/statistics/IStatistics;", "c", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/statistics/IStatistics;", "statistics", Constants.CONSTRUCTOR_NAME, "()V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStatisticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,107:1\n372#2,7:108\n*S KotlinDebug\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n*L\n102#1:108,7\n*E\n"})
/* loaded from: classes8.dex */
public final class StatisticsManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<StatisticsType, StatisticsBase> providerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public StatisticsType currentStatisticsType = StatisticsType.Empty;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy statistics;

    public StatisticsManager() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<IStatistics>() { // from class: com.onyx.android.sdk.statistics.StatisticsManager$statistics$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final IStatistics invoke() {
                return ((IStatisticsEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IStatisticsEntryPoint.class)).getStatistics();
            }
        });
        this.statistics = lazy;
    }

    public static /* synthetic */ void getWeChatInfo$default(StatisticsManager statisticsManager, Context context, Activity activity, AuthResultListener authResultListener, int i, Object obj) {
        if ((i & 4) != 0) {
            authResultListener = null;
        }
        statisticsManager.getWeChatInfo(context, activity, authResultListener);
    }

    /* renamed from: a */
    public final IStatistics m36058a() {
        return (IStatistics) this.statistics.getValue();
    }

    /* renamed from: b */
    public final StatisticsBase m36059b() {
        if (this.providerMap.containsKey(this.currentStatisticsType)) {
            StatisticsBase statisticsBase = this.providerMap.get(this.currentStatisticsType);
            Intrinsics.checkNotNull(statisticsBase);
            return statisticsBase;
        }
        Debug.INSTANCE.m32044e(StatisticsManager.class, "type:" + this.currentStatisticsType.name() + " provider is not found,return the EmptyStatistics.", new Object[0]);
        Map<StatisticsType, StatisticsBase> map = this.providerMap;
        StatisticsType statisticsType = StatisticsType.Empty;
        StatisticsBase statisticsBase2 = map.get(statisticsType);
        if (statisticsBase2 == null) {
            statisticsBase2 = new EmptyStatistics();
            map.put(statisticsType, statisticsBase2);
        }
        return statisticsBase2;
    }

    public final void beforeInit(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        m36058a().beforeInit(appContext);
    }

    @Nullable
    public final RxBaseAction<ProviderCertificate> createInitSdkAction(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        return m36058a().createInitSdkAction(appContext, this);
    }

    public final void getWeChatInfo(@NotNull Context appContext, @NotNull Activity activity, @Nullable AuthResultListener listener) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(activity, "activity");
        m36058a().getWeChatInfo(appContext, activity, listener);
    }

    public final boolean init(@NotNull Context context, @NotNull Map<String, String> args, @NotNull StatisticsType type) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(type, "type");
        boolean init = m36058a().init(context, args);
        if (init) {
            this.providerMap.put(type, m36058a());
            this.currentStatisticsType = type;
        }
        return init;
    }

    public final boolean isWechatInstallation(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return m36058a().isWechatInstallation(activity);
    }

    public final void onEvent(@NotNull Context context, @NotNull String eventID) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventID, "eventID");
        m36059b().onEvent(context, eventID);
    }

    public final void onProfileSignIn(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        m36059b().onProfileSignIn(userId);
    }

    public final void onProfileSignOff() {
        m36059b().onProfileSignOff();
    }

    public final boolean switchStatistics(@NotNull StatisticsType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (this.providerMap.containsKey(type)) {
            this.currentStatisticsType = type;
            return true;
        }
        Debug.INSTANCE.m32044e(StatisticsManager.class, "type:" + type.name() + " provider has not initiated.", new Object[0]);
        return false;
    }

    public final void onEvent(@NotNull Context context, @NotNull String eventID, @NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventID, "eventID");
        Intrinsics.checkNotNullParameter(map, "map");
        m36059b().onEvent(context, eventID, map);
    }
}
