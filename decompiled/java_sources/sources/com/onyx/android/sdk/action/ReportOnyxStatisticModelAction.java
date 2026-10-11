package com.onyx.android.sdk.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.action.ReportOnyxStatisticModelAction;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticModel;
import com.onyx.android.sdk.data.OnyxStatisticReportBean;
import com.onyx.android.sdk.data.OnyxStatisticReportService;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\r\u001a\u00020\u00022\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\fH\u0002J\u0016\u0010\u000f\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\tH\u0002J\b\u0010\u0015\u001a\u00020\tH\u0002J\b\u0010\u0016\u001a\u00020\tH\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\tH\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR(\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/action/ReportOnyxStatisticModelAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "x", "", "Lcom/onyx/android/sdk/data/OnyxStatisticModel;", "list", "", "z", "v", "", "B", "models", "t", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "u", "A", "w", "s", "p", "y", "Lcom/onyx/android/sdk/data/StatistConfig;", "e", "Lcom/onyx/android/sdk/data/StatistConfig;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", C6997f.f39671c, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", CouchFieldKey.KEY_PROVIDER, "", "", C6998g.f39679a, "Ljava/util/Map;", "modelsByDate", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/StatistConfig;)V", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReportOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1549#2:188\n1620#2,3:189\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticModelAction\n*L\n118#1:188\n118#1:189,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ReportOnyxStatisticModelAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: h */
    @NotNull
    public static final String f40614h = "report_onyx_statistic_last_time_key";

    /* renamed from: i */
    @NotNull
    public static final String f40615i = "report_onyx_statistic_retry_time_key";

    /* renamed from: j */
    public static final int f40616j = 60000;

    /* renamed from: k */
    public static final int f40617k = 180000;

    /* renamed from: l */
    public static final long f40618l = 50;

    /* renamed from: m */
    public static int f40619m;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StatistConfig config;

    /* renamed from: f, reason: from kotlin metadata */
    public OnyxStatisticProvider provider;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Map<String, ? extends List<OnyxStatisticModel>> modelsByDate;

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$a */
    /* loaded from: classes7.dex */
    public static final class C7082a<T> implements Predicate {

        /* renamed from: e */
        public static final C7082a<T> f40623e = new C7082a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ReportOnyxStatisticModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext());
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$b */
    /* loaded from: classes7.dex */
    public static final class C7083b<T, R> implements Function {
        public C7083b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxStatisticProvider> apply(@NotNull ReportOnyxStatisticModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportOnyxStatisticModelAction.this.createOnyxStatisticProviderObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$c */
    /* loaded from: classes7.dex */
    public static final class C7084c<T> implements Consumer {
        public C7084c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxStatisticModelAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$d */
    /* loaded from: classes7.dex */
    public static final class C7085d<T, R> implements Function {
        public C7085d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ReportOnyxStatisticModelAction.this.m31821o());
        }
    }

    public ReportOnyxStatisticModelAction(@NotNull StatistConfig config) {
        Map<String, ? extends List<OnyxStatisticModel>> emptyMap;
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.modelsByDate = emptyMap;
    }

    /* renamed from: q */
    public static final void m31816q(ReportOnyxStatisticModelAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m31828x();
    }

    /* renamed from: r */
    public static final void m31817r(ReportOnyxStatisticModelAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m31818A();
    }

    /* renamed from: A */
    public final void m31818A() {
        MMKVUtils.INSTANCE.putLong(f40614h, System.currentTimeMillis());
    }

    /* renamed from: B */
    public final boolean m31819B(Collection<? extends List<OnyxStatisticModel>> list) {
        if (list.isEmpty()) {
            return true;
        }
        OnyxStatisticReportService onyxStatisticReportService = (OnyxStatisticReportService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxStatisticReportService.class, this.config.getApiUrl());
        for (List<OnyxStatisticModel> list2 : list) {
            if (!list2.isEmpty()) {
                Response<ResultData<String>> execute = onyxStatisticReportService.eventRecord(this.config.getApiUrl(), new OnyxStatisticReportBean(list2)).execute();
                if (!execute.isSuccessful() || !execute.body().isSuccessful()) {
                    m31827w();
                    return false;
                }
                m31824t(list2);
                m31829y();
            }
        }
        return true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (!m31822p() || !m31820n()) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).observeOn(getObserveOn()).filter(C7082a.f40623e).flatMap(new C7083b()).doOnNext(new C7084c()).map(new C7085d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Boolean> observeOn = RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(map, new Consumer() { // from class: com.sunia.HTREnginev2.skl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ReportOnyxStatisticModelAction.m31816q(ReportOnyxStatisticModelAction.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.tkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ReportOnyxStatisticModelAction.m31817r(ReportOnyxStatisticModelAction.this, ((Boolean) obj).booleanValue());
            }
        }).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: n */
    public final boolean m31820n() {
        return System.currentTimeMillis() - MMKVUtils.INSTANCE.getLong(f40614h, 0L) >= 180000;
    }

    /* renamed from: o */
    public final boolean m31821o() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        return onyxStatisticProvider.loadOnyxStatisticCount() >= 50;
    }

    /* renamed from: p */
    public final boolean m31822p() {
        return System.currentTimeMillis() - MMKVUtils.INSTANCE.getLong(f40615i, 0L) >= 0;
    }

    /* renamed from: s */
    public final void m31823s() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        onyxStatisticProvider.deleteOnyxStatisticList(new CBQueryArgs().selectAll());
    }

    /* renamed from: t */
    public final void m31824t(List<OnyxStatisticModel> models) {
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<OnyxStatisticModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxStatisticModel) it2.next()).getUniqueId());
        }
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        onyxStatisticProvider.deleteOnyxStatisticList(cBQueryArgs);
    }

    /* renamed from: u */
    public final CBQueryArgs m31825u() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(100);
        return cBQueryArgs;
    }

    /* renamed from: v */
    public final List<OnyxStatisticModel> m31826v() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        return onyxStatisticProvider.loadOnyxStatisticList(m31825u());
    }

    /* renamed from: w */
    public final void m31827w() {
        Object orNull;
        List<StatistConfig.RetryConfig> retryConfigs = this.config.getRetryConfigs();
        if (retryConfigs.isEmpty()) {
            return;
        }
        if (f40619m > retryConfigs.size()) {
            m31823s();
            f40619m = 0;
            return;
        }
        int i = f40619m + 1;
        f40619m = i;
        orNull = CollectionsKt___CollectionsKt.getOrNull(retryConfigs, i - 1);
        StatistConfig.RetryConfig retryConfig = (StatistConfig.RetryConfig) orNull;
        if (retryConfig == null) {
            return;
        }
        MMKVUtils.INSTANCE.putLong(f40615i, System.currentTimeMillis() + (retryConfig.getPeriodTime() * 60000));
        if (retryConfig.isClearData()) {
            m31823s();
            f40619m = 0;
        }
    }

    /* renamed from: x */
    public final boolean m31828x() {
        List<OnyxStatisticModel> m31826v = m31826v();
        boolean z = true;
        while ((!m31826v.isEmpty()) && z) {
            m31830z(m31826v);
            z = m31819B(this.modelsByDate.values());
            m31826v = m31826v();
        }
        return true;
    }

    /* renamed from: y */
    public final void m31829y() {
        f40619m = 0;
        MMKVUtils.INSTANCE.putLong(f40615i, 0L);
    }

    /* renamed from: z */
    public final void m31830z(List<OnyxStatisticModel> list) {
        this.modelsByDate = CollectionKt.toMapList(list, new Function1<OnyxStatisticModel, String>() { // from class: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$sortModelsByDate$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull OnyxStatisticModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_2().format(new Date(it2.getCreatedAt()));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                return format;
            }
        }, new Function1<OnyxStatisticModel, OnyxStatisticModel>() { // from class: com.onyx.android.sdk.action.ReportOnyxStatisticModelAction$sortModelsByDate$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final OnyxStatisticModel invoke(@NotNull OnyxStatisticModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
    }
}
