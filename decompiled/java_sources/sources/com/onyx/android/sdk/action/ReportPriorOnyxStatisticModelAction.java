package com.onyx.android.sdk.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticModel;
import com.onyx.android.sdk.data.OnyxStatisticReportBean;
import com.onyx.android.sdk.data.OnyxStatisticReportService;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "", "Lcom/onyx/android/sdk/data/OnyxStatisticModel;", "list", "p", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "m", "models", "", "l", "Lcom/onyx/android/sdk/data/StatistConfig;", "e", "Lcom/onyx/android/sdk/data/StatistConfig;", AbstractLogger.CONFIG, "", C6997f.f39671c, "Ljava/util/List;", "priorEventIds", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/StatistConfig;)V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReportPriorOnyxStatisticModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1549#2:93\n1620#2,3:94\n*S KotlinDebug\n*F\n+ 1 ReportPriorOnyxStatisticModelAction.kt\ncom/onyx/android/sdk/action/ReportPriorOnyxStatisticModelAction\n*L\n89#1:93\n89#1:94,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ReportPriorOnyxStatisticModelAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StatistConfig config;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> priorEventIds;

    /* renamed from: g, reason: from kotlin metadata */
    public OnyxStatisticProvider provider;

    /* renamed from: com.onyx.android.sdk.action.ReportPriorOnyxStatisticModelAction$a */
    /* loaded from: classes7.dex */
    public static final class C7092a<T> implements Predicate {

        /* renamed from: e */
        public static final C7092a<T> f40643e = new C7092a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ReportPriorOnyxStatisticModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext());
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportPriorOnyxStatisticModelAction$b */
    /* loaded from: classes7.dex */
    public static final class C7093b<T, R> implements Function {
        public C7093b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxStatisticProvider> apply(@NotNull ReportPriorOnyxStatisticModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportPriorOnyxStatisticModelAction.this.createOnyxStatisticProviderObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportPriorOnyxStatisticModelAction$c */
    /* loaded from: classes7.dex */
    public static final class C7094c<T> implements Consumer {
        public C7094c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportPriorOnyxStatisticModelAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportPriorOnyxStatisticModelAction$d */
    /* loaded from: classes7.dex */
    public static final class C7095d<T, R> implements Function {
        public C7095d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ReportPriorOnyxStatisticModelAction.this.m31856o());
        }
    }

    public ReportPriorOnyxStatisticModelAction(@NotNull StatistConfig config) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{OnyxStatisticConstant.ID_USER_DAILY_ACTIVE, OnyxStatisticConstant.ID_STATE_HUAWEI_PAY, OnyxStatisticConstant.ID_STATE_STARNOTE_PAYMENT_POPUPS_PAY_RESULT});
        this.priorEventIds = listOf;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(getObserveOn()).filter(C7092a.f40643e).flatMap(new C7093b()).doOnNext(new C7094c()).map(new C7095d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m31853l(List<OnyxStatisticModel> models) {
        int collectionSizeOrDefault;
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        List<OnyxStatisticModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxStatisticModel) it2.next()).getUniqueId());
        }
        onyxStatisticProvider.deleteOnyxStatisticByIds(arrayList);
    }

    /* renamed from: m */
    public final CBQueryArgs m31854m() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(100);
        cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression("event_code", this.priorEventIds));
        return cBQueryArgs;
    }

    /* renamed from: n */
    public final List<OnyxStatisticModel> m31855n() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        return onyxStatisticProvider.loadOnyxStatisticList(m31854m());
    }

    /* renamed from: o */
    public final boolean m31856o() {
        List<OnyxStatisticModel> m31855n = m31855n();
        boolean z = true;
        while ((!m31855n.isEmpty()) && z) {
            z = m31857p(m31855n);
            m31855n = m31855n();
        }
        return true;
    }

    /* renamed from: p */
    public final boolean m31857p(List<OnyxStatisticModel> list) {
        if (list.isEmpty()) {
            return true;
        }
        Response<ResultData<String>> execute = ((OnyxStatisticReportService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxStatisticReportService.class, this.config.getApiUrl())).eventRecord(this.config.getApiUrl(), new OnyxStatisticReportBean(list)).execute();
        if (!execute.isSuccessful() || !execute.body().isSuccessful()) {
            return false;
        }
        m31853l(list);
        return true;
    }
}
