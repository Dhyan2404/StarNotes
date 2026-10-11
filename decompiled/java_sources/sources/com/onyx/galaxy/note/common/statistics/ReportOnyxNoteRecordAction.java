package com.onyx.galaxy.note.common.statistics;

import com.couchbase.lite.SelectResult;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxNoteRecordModel;
import com.onyx.android.sdk.data.OnyxNoteSummaryReportBean;
import com.onyx.android.sdk.data.OnyxStatisticReportService;
import com.onyx.android.sdk.data.StatistConfig;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.android.sdk.p029db.OnyxStatisticDBBundle;
import com.onyx.android.sdk.p029db.OnyxStatisticNoteRecordProviderKt;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;", "p", "", "q", "r", "summaryReportBean", "s", "Lcom/onyx/android/sdk/data/StatistConfig;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/StatistConfig;", AbstractLogger.CONFIG, "", "", C6999h.f39688c, "Ljava/util/List;", "unUploadNoteIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "j", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "onyxStatisticProvider", C4921e.f26537n, "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;", "onyxNoteSummaryReportBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/StatistConfig;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReportOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n766#2:139\n857#2,2:140\n1855#2,2:142\n1549#2:144\n1620#2,3:145\n1855#2,2:148\n1549#2:150\n1620#2,3:151\n*S KotlinDebug\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n*L\n81#1:137,2\n85#1:139\n85#1:140,2\n86#1:142,2\n105#1:144\n105#1:145,3\n111#1:148,2\n127#1:150\n127#1:151,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ReportOnyxNoteRecordAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: l */
    public static final int f56120l = 1000;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final StatistConfig config;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> unUploadNoteIds;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public OnyxStatisticProvider onyxStatisticProvider;

    /* renamed from: k, reason: from kotlin metadata */
    public OnyxNoteSummaryReportBean onyxNoteSummaryReportBean;

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$a */
    /* loaded from: classes9.dex */
    public static final class C11631a<T, R> implements Function {

        /* renamed from: e */
        public static final C11631a<T, R> f56126e = new C11631a<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m45059a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45059a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$b */
    /* loaded from: classes9.dex */
    public static final class C11632b<T> implements Predicate {

        /* renamed from: e */
        public static final C11632b<T> f56127e = new C11632b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ReportOnyxNoteRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$c */
    /* loaded from: classes9.dex */
    public static final class C11633c<T, R> implements Function {
        public C11633c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull ReportOnyxNoteRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportOnyxNoteRecordAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$d */
    /* loaded from: classes9.dex */
    public static final class C11634d<T> implements Consumer {
        public C11634d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxNoteRecordAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$e */
    /* loaded from: classes9.dex */
    public static final class C11635e<T, R> implements Function {

        /* renamed from: e */
        public static final C11635e<T, R> f56130e = new C11635e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OnyxStatisticProvider apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticProvider();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$f */
    /* loaded from: classes9.dex */
    public static final class C11636f<T> implements Consumer {
        public C11636f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxNoteRecordAction.this.onyxStatisticProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$g */
    /* loaded from: classes9.dex */
    public static final class C11637g<T, R> implements Function {
        public C11637g() {
        }

        /* renamed from: a */
        public final void m45065a(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportOnyxNoteRecordAction.this.m45056q();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m45065a((OnyxStatisticProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.statistics.ReportOnyxNoteRecordAction$h */
    /* loaded from: classes9.dex */
    public static final class C11638h<T, R> implements Function {
        public C11638h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(!ReportOnyxNoteRecordAction.this.unUploadNoteIds.isEmpty());
        }
    }

    public ReportOnyxNoteRecordAction(@NotNull StatistConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        this.unUploadNoteIds = new ArrayList();
    }

    /* renamed from: n */
    public static final void m45053n(ReportOnyxNoteRecordAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onyxNoteSummaryReportBean = this$0.m45055p();
    }

    /* renamed from: o */
    public static final void m45054o(ReportOnyxNoteRecordAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45057r();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable doOnNext = Observable.just(this).observeOn(getObserveOn()).filter(C11632b.f56127e).flatMap(new C11633c()).doOnNext(new C11634d());
        OnyxStatisticDBBundle onyxStatisticDBBundle = OnyxStatisticDBBundle.INSTANCE;
        Observable observeOn = doOnNext.observeOn(onyxStatisticDBBundle.getObserveOn()).map(C11635e.f56130e).doOnNext(new C11636f()).map(new C11637g()).map(new C11638h()).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> observeOn2 = RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.qkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ReportOnyxNoteRecordAction.m45053n(ReportOnyxNoteRecordAction.this, ((Boolean) obj).booleanValue());
            }
        }).observeOn(onyxStatisticDBBundle.getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "observeOn(...)");
        Observable map = RxjavaKt.doOnNextIfTrue(observeOn2, new Consumer() { // from class: com.sunia.HTREnginev2.rkl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ReportOnyxNoteRecordAction.m45054o(ReportOnyxNoteRecordAction.this, ((Boolean) obj).booleanValue());
            }
        }).observeOn(getMainUIScheduler()).map(C11631a.f56126e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final OnyxNoteSummaryReportBean m45055p() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(Integer.MAX_VALUE);
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_NOTE_POINT_SIZE);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        cBQueryArgs.setSelectResults(new SelectResult[]{property, property2});
        cBQueryArgs.andWith(CouchUtils.INSTANCE.notEqualExpression("status", 2));
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
        ArrayList arrayList = new ArrayList();
        List<SyncNoteModel> list = loadNoteListInBatch;
        Iterator<T> it2 = list.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += ((SyncNoteModel) it2.next()).getNotePointSize();
        }
        ArrayList<SyncNoteModel> arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (this.unUploadNoteIds.contains(((SyncNoteModel) obj).getUniqueId())) {
                arrayList2.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList2) {
            arrayList.add(new OnyxNoteSummaryReportBean.Item(syncNoteModel.getUniqueId(), syncNoteModel.getNotePointSize()));
        }
        int size = loadNoteListInBatch.size();
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        return new OnyxNoteSummaryReportBean(arrayList, j, size, accountDataBundle.getSyncUserId(), SecurityUtils.INSTANCE.getAndroidId(), System.currentTimeMillis(), accountDataBundle.getRoleFlagList());
    }

    /* renamed from: q */
    public final void m45056q() {
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(Integer.MAX_VALUE);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression(OnyxNoteRecordModel.KEY_IS_UPLOADED, Boolean.FALSE));
        cBQueryArgs.andWith(couchUtils.equalExpression("user", AccountDataBundle.INSTANCE.getSyncUserId()));
        OnyxStatisticProvider onyxStatisticProvider = this.onyxStatisticProvider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onyxStatisticProvider");
            onyxStatisticProvider = null;
        }
        List<OnyxNoteRecordModel> loadOnyxNoteRecordList = OnyxStatisticNoteRecordProviderKt.loadOnyxNoteRecordList(onyxStatisticProvider, cBQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadOnyxNoteRecordList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadOnyxNoteRecordList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxNoteRecordModel) it2.next()).getUniqueId());
        }
        this.unUploadNoteIds.addAll(arrayList);
    }

    /* renamed from: r */
    public final boolean m45057r() {
        OnyxNoteSummaryReportBean onyxNoteSummaryReportBean = this.onyxNoteSummaryReportBean;
        if (onyxNoteSummaryReportBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onyxNoteSummaryReportBean");
            onyxNoteSummaryReportBean = null;
        }
        for (List<OnyxNoteSummaryReportBean.Item> list : CollectionKt.split(onyxNoteSummaryReportBean.getItems(), 1000)) {
            OnyxNoteSummaryReportBean onyxNoteSummaryReportBean2 = this.onyxNoteSummaryReportBean;
            if (onyxNoteSummaryReportBean2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("onyxNoteSummaryReportBean");
                onyxNoteSummaryReportBean2 = null;
            }
            onyxNoteSummaryReportBean2.setItems(list);
            OnyxNoteSummaryReportBean onyxNoteSummaryReportBean3 = this.onyxNoteSummaryReportBean;
            if (onyxNoteSummaryReportBean3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("onyxNoteSummaryReportBean");
                onyxNoteSummaryReportBean3 = null;
            }
            m45058s(onyxNoteSummaryReportBean3);
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45058s(OnyxNoteSummaryReportBean summaryReportBean) {
        int collectionSizeOrDefault;
        Response<ResultData<String>> execute = ((OnyxStatisticReportService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxStatisticReportService.class, this.config.getApiUrl())).noteItemSummary(summaryReportBean).execute();
        if (!execute.isSuccessful() || !execute.body().isSuccessful()) {
            return false;
        }
        List<OnyxNoteSummaryReportBean.Item> items = summaryReportBean.getItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = items.iterator();
        while (it2.hasNext()) {
            arrayList.add(new OnyxNoteRecordModel(((OnyxNoteSummaryReportBean.Item) it2.next()).getNoteId(), true));
        }
        OnyxStatisticProvider onyxStatisticProvider = this.onyxStatisticProvider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onyxStatisticProvider");
            onyxStatisticProvider = null;
        }
        OnyxStatisticNoteRecordProviderKt.saveOnyxNoteRecordList(onyxStatisticProvider, arrayList);
        return true;
    }
}
