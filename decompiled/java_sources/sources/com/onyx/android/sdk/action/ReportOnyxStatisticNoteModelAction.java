package com.onyx.android.sdk.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxNoteModel;
import com.onyx.android.sdk.data.OnyxNoteReportBean;
import com.onyx.android.sdk.data.OnyxStatisticReportService;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticNoteProviderKt;
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
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u001e\u0010\n\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u000bH\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "t", "", "Lcom/onyx/android/sdk/data/OnyxNoteModel;", "list", "isDeleted", "w", "", "s", "r", "q", "models", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", C4921e.f26528e, "v", "m", "u", "l", "Lcom/onyx/android/sdk/data/StatistConfig;", "e", "Lcom/onyx/android/sdk/data/StatistConfig;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", C6997f.f39671c, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/StatistConfig;)V", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReportOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n1549#2:175\n1620#2,3:176\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n*L\n137#1:175\n137#1:176,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ReportOnyxStatisticNoteModelAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: g */
    @NotNull
    public static final String f40627g = "report_onyx_note_last_time_key";

    /* renamed from: h */
    @NotNull
    public static final String f40628h = "report_onyx_note_retry_time_key";

    /* renamed from: i */
    public static final int f40629i = 60000;

    /* renamed from: j */
    public static final int f40630j = 180000;

    /* renamed from: k */
    public static int f40631k;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StatistConfig config;

    /* renamed from: f, reason: from kotlin metadata */
    public OnyxStatisticProvider provider;

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$a */
    /* loaded from: classes7.dex */
    public static final class C7086a<T> implements Predicate {

        /* renamed from: e */
        public static final C7086a<T> f40634e = new C7086a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ReportOnyxStatisticNoteModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext());
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$b */
    /* loaded from: classes7.dex */
    public static final class C7087b<T, R> implements Function {
        public C7087b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OnyxStatisticProvider> apply(@NotNull ReportOnyxStatisticNoteModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportOnyxStatisticNoteModelAction.this.createOnyxStatisticProviderObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$c */
    /* loaded from: classes7.dex */
    public static final class C7088c<T> implements Consumer {
        public C7088c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxStatisticNoteModelAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$d */
    /* loaded from: classes7.dex */
    public static final class C7089d<T> implements Consumer {
        public C7089d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxStatisticNoteModelAction.this.m31843t();
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$e */
    /* loaded from: classes7.dex */
    public static final class C7090e<T> implements Consumer {
        public C7090e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxStatisticNoteModelAction.this.m31845v();
        }
    }

    /* renamed from: com.onyx.android.sdk.action.ReportOnyxStatisticNoteModelAction$f */
    /* loaded from: classes7.dex */
    public static final class C7091f<T, R> implements Function {

        /* renamed from: e */
        public static final C7091f<T, R> f40639e = new C7091f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public ReportOnyxStatisticNoteModelAction(@NotNull StatistConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    /* renamed from: p */
    public static /* synthetic */ CBQueryArgs m31835p(ReportOnyxStatisticNoteModelAction reportOnyxStatisticNoteModelAction, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return reportOnyxStatisticNoteModelAction.m31839o(z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        if (m31837m() && m31836l()) {
            Observable<Boolean> observeOn = Observable.just(this).observeOn(getObserveOn()).filter(C7086a.f40634e).flatMap(new C7087b()).doOnNext(new C7088c()).doOnNext(new C7089d()).doOnNext(new C7090e()).map(C7091f.f40639e).observeOn(getMainUIScheduler());
            Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
            return observeOn;
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: l */
    public final boolean m31836l() {
        return System.currentTimeMillis() - MMKVUtils.INSTANCE.getLong(f40627g, 0L) >= 180000;
    }

    /* renamed from: m */
    public final boolean m31837m() {
        return System.currentTimeMillis() - MMKVUtils.INSTANCE.getLong(f40628h, 0L) >= 0;
    }

    /* renamed from: n */
    public final void m31838n(List<OnyxNoteModel> models) {
        int collectionSizeOrDefault;
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        List<OnyxNoteModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxNoteModel) it2.next()).getUniqueId());
        }
        OnyxStatisticNoteProviderKt.deleteOnyxNoteByIds(onyxStatisticProvider, arrayList);
    }

    /* renamed from: o */
    public final CBQueryArgs m31839o(boolean isDeleted) {
        int i = isDeleted ? 2 : 0;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(100);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("status", Integer.valueOf(i)));
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UID, AccountDataBundle.INSTANCE.getSyncUserId()));
        return cBQueryArgs;
    }

    /* renamed from: q */
    public final List<OnyxNoteModel> m31840q() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        return OnyxStatisticNoteProviderKt.loadOnyxNoteList(onyxStatisticProvider, m31839o(true));
    }

    /* renamed from: r */
    public final List<OnyxNoteModel> m31841r() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        return OnyxStatisticNoteProviderKt.loadOnyxNoteList(onyxStatisticProvider, m31839o(false));
    }

    /* renamed from: s */
    public final void m31842s() {
        Object orNull;
        List<StatistConfig.RetryConfig> retryConfigs = this.config.getRetryConfigs();
        if (retryConfigs.isEmpty()) {
            return;
        }
        if (f40631k > retryConfigs.size()) {
            f40631k = 0;
            return;
        }
        int i = f40631k + 1;
        f40631k = i;
        orNull = CollectionsKt___CollectionsKt.getOrNull(retryConfigs, i - 1);
        if (((StatistConfig.RetryConfig) orNull) == null) {
            return;
        }
        MMKVUtils.INSTANCE.putLong(f40628h, System.currentTimeMillis() + (r4.getPeriodTime() * 60000));
    }

    /* renamed from: t */
    public final boolean m31843t() {
        List<OnyxNoteModel> m31840q = m31840q();
        List<OnyxNoteModel> m31841r = m31841r();
        boolean z = true;
        while ((!m31841r.isEmpty()) && z) {
            z = m31846w(m31841r, false);
            m31841r = m31841r();
        }
        boolean z2 = true;
        while ((!m31840q.isEmpty()) && z2) {
            z2 = m31846w(m31840q, true);
            m31840q = m31840q();
        }
        return true;
    }

    /* renamed from: u */
    public final void m31844u() {
        f40631k = 0;
        MMKVUtils.INSTANCE.putLong(f40627g, 0L);
    }

    /* renamed from: v */
    public final void m31845v() {
        MMKVUtils.INSTANCE.putLong(f40627g, System.currentTimeMillis());
    }

    /* renamed from: w */
    public final boolean m31846w(List<OnyxNoteModel> list, boolean isDeleted) {
        if (list.isEmpty()) {
            return true;
        }
        OnyxStatisticReportService onyxStatisticReportService = (OnyxStatisticReportService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxStatisticReportService.class, this.config.getApiUrl());
        OnyxNoteReportBean createOnyxNoteReportBean = OnyxNoteReportBean.INSTANCE.createOnyxNoteReportBean(list);
        Response<ResultData<String>> execute = (isDeleted ? onyxStatisticReportService.deletedNoteItem(createOnyxNoteReportBean) : onyxStatisticReportService.updateNoteItem(createOnyxNoteReportBean)).execute();
        if (!execute.isSuccessful() || !execute.body().isSuccessful()) {
            m31842s();
            return false;
        }
        m31838n(list);
        m31844u();
        return true;
    }
}
