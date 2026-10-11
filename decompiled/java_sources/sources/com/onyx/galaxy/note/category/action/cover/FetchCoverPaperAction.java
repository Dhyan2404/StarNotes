package com.onyx.galaxy.note.category.action.cover;

import androidx.core.app.NotificationCompat;
import com.couchbase.lite.UnitOfWork;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction;
import com.onyx.galaxy.note.category.action.template.CleanDeprecatedTemplateRecordAction;
import com.onyx.galaxy.note.category.cloud.CoverPaperCloudFullData;
import com.onyx.galaxy.note.category.cloud.CoverPaperConvertorKt;
import com.onyx.galaxy.note.category.cloud.CoverPaperData;
import com.onyx.galaxy.note.category.cloud.CoverPaperLocalFullData;
import com.onyx.galaxy.note.category.cloud.CoverPaperService;
import com.onyx.galaxy.note.category.cloud.ResourceData;
import com.onyx.galaxy.note.category.cloud.ResourceItem;
import com.onyx.galaxy.note.category.cloud.ResourceRelationData;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Function5;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\b\u0010\f\u001a\u00020\u0005H\u0002J\b\u0010\r\u001a\u00020\u0005H\u0002J\u001e\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u00032\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", "q", "s", "u", "r", "t", C4921e.f26528e, "w", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "models", "", GoogleApiAvailabilityLight.f29016b, "v", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;", C6997f.f39671c, "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;", "cloudData", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;", C6998g.f39679a, "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;", "localData", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;", NotificationCompat.CATEGORY_SERVICE, "i", "J", "changeSize", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFetchCoverPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n766#2:131\n857#2,2:132\n766#2:134\n857#2,2:135\n1855#2,2:137\n*S KotlinDebug\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n*L\n82#1:131\n82#1:132,2\n83#1:134\n83#1:135,2\n120#1:137,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FetchCoverPaperAction extends RxBaseTemplateAction<Long> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public CoverPaperCloudFullData cloudData = new CoverPaperCloudFullData();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public CoverPaperLocalFullData localData = new CoverPaperLocalFullData();

    /* renamed from: h, reason: from kotlin metadata */
    public CoverPaperService service;

    /* renamed from: i, reason: from kotlin metadata */
    public long changeSize;

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11020a<T, R> implements Function {
        public C11020a() {
        }

        /* renamed from: a */
        public final void m42627a(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchCoverPaperAction.this.m42619p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42627a((AccountDataBundle) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11021b<T, R> implements Function {

        /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$b$a */
        /* loaded from: classes9.dex */
        public static final class a<T1, T2, T3, T4, T5, R> implements Function5 {

            /* renamed from: a */
            public final /* synthetic */ FetchCoverPaperAction f54077a;

            public a(FetchCoverPaperAction fetchCoverPaperAction) {
                this.f54077a = fetchCoverPaperAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function5
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final FetchCoverPaperAction apply(@NotNull Unit unit, @NotNull Unit unit2, @NotNull Unit unit3, @NotNull Unit unit4, @NotNull Unit unit5) {
                Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(unit2, "<anonymous parameter 1>");
                Intrinsics.checkNotNullParameter(unit3, "<anonymous parameter 2>");
                Intrinsics.checkNotNullParameter(unit4, "<anonymous parameter 3>");
                Intrinsics.checkNotNullParameter(unit5, "<anonymous parameter 4>");
                return this.f54077a;
            }
        }

        public C11021b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FetchCoverPaperAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.zip(FetchCoverPaperAction.this.m42620q(), FetchCoverPaperAction.this.m42622s(), FetchCoverPaperAction.this.m42624u(), FetchCoverPaperAction.this.m42621r(), FetchCoverPaperAction.this.m42623t(), new a(FetchCoverPaperAction.this));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11022c<T, R> implements Function {
        public C11022c() {
        }

        /* renamed from: a */
        public final void m42630a(@NotNull FetchCoverPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchCoverPaperAction.this.m42618o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42630a((FetchCoverPaperAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11023d<T, R> implements Function {
        public C11023d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchCoverPaperAction fetchCoverPaperAction = FetchCoverPaperAction.this;
            return fetchCoverPaperAction.m42617n(fetchCoverPaperAction.localData.getResources());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$e */
    /* loaded from: classes9.dex */
    public static final class C11024e<T, R> implements Function {
        public C11024e() {
        }

        /* renamed from: a */
        public final void m42632a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchCoverPaperAction.this.m42626w();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42632a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$f */
    /* loaded from: classes9.dex */
    public static final class C11025f<T, R> implements Function {

        /* renamed from: e */
        public static final C11025f<T, R> f54081e = new C11025f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CleanDeprecatedTemplateRecordAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$g */
    /* loaded from: classes9.dex */
    public static final class C11026g<T, R> implements Function {
        public C11026g() {
        }

        /* renamed from: a */
        public final void m42634a(boolean z) {
            FetchCoverPaperAction.this.m42625v();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42634a(((Boolean) obj).booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.cover.FetchCoverPaperAction$h */
    /* loaded from: classes9.dex */
    public static final class C11027h<T, R> implements Function {
        public C11027h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Long.valueOf(FetchCoverPaperAction.this.changeSize);
        }
    }

    /* renamed from: x */
    public static final void m42615x(FetchCoverPaperAction this$0, CoverProvider coverProvider) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(coverProvider, "$coverProvider");
        long saveTemplateResourceList = this$0.changeSize + coverProvider.saveTemplateResourceList(this$0.localData.getCoverResources(), true);
        this$0.changeSize = saveTemplateResourceList;
        long saveCoverCategoryList = saveTemplateResourceList + coverProvider.saveCoverCategoryList(this$0.localData.getCoverCategories(), true);
        this$0.changeSize = saveCoverCategoryList;
        this$0.changeSize = saveCoverCategoryList + coverProvider.saveCoverList(this$0.localData.getCovers(), true);
    }

    /* renamed from: y */
    public static final void m42616y(FetchCoverPaperAction this$0, TemplateProvider templateProvider) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(templateProvider, "$templateProvider");
        long saveTemplateResourceList = this$0.changeSize + templateProvider.saveTemplateResourceList(this$0.localData.getPaperResources(), true);
        this$0.changeSize = saveTemplateResourceList;
        long saveTemplateCategoryList = saveTemplateResourceList + templateProvider.saveTemplateCategoryList(this$0.localData.getPaperCategories(), true);
        this$0.changeSize = saveTemplateCategoryList;
        this$0.changeSize = saveTemplateCategoryList + templateProvider.saveTemplateList(this$0.localData.getPapers(), true);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Long> create() {
        if (SyncStateOptions.INSTANCE.hasSynced("template")) {
            Observable<Long> just = Observable.just(0L);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Long> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C11020a()).flatMap(new C11021b()).map(new C11022c()).observeOn(Schedulers.m61350io()).flatMap(new C11023d()).observeOn(getObserveOn()).map(new C11024e()).flatMap(C11025f.f54081e).map(new C11026g()).map(new C11027h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<? extends Object> m42617n(List<TemplateResourceModel> models) {
        ArrayList arrayList = new ArrayList();
        for (TemplateResourceModel templateResourceModel : models) {
            String uri = templateResourceModel.getUri();
            String str = "";
            if (uri == null) {
                uri = "";
            }
            arrayList.add(TuplesKt.m61535to(uri, CoverPaperConvertorKt.getResourceSavePath(templateResourceModel)));
            String thumbnailUri = templateResourceModel.getThumbnailUri();
            if (thumbnailUri != null) {
                str = thumbnailUri;
            }
            arrayList.add(TuplesKt.m61535to(str, CoverPaperConvertorKt.getThumbnailSavePath(templateResourceModel)));
        }
        return GlideExt.INSTANCE.batchDownload(arrayList);
    }

    /* renamed from: o */
    public final void m42618o() {
        this.localData = CoverPaperConvertorKt.convertAll(this.cloudData);
    }

    /* renamed from: p */
    public final void m42619p() {
        this.service = (CoverPaperService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CoverPaperService.class);
    }

    /* renamed from: q */
    public final Observable<Unit> m42620q() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        CoverPaperService coverPaperService = this.service;
        if (coverPaperService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            coverPaperService = null;
        }
        CoverPaperData coverPaperData = (CoverPaperData) retrofitExt.executeAndGetData(coverPaperService.loadCoverData());
        this.cloudData.getCovers().addAll(coverPaperData.getItems());
        this.cloudData.getCoverCategories().addAll(coverPaperData.getCategories());
        this.cloudData.getCoverCategoryRelations().addAll(coverPaperData.getItemCategoryShips());
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: r */
    public final Observable<Unit> m42621r() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        CoverPaperService coverPaperService = this.service;
        if (coverPaperService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            coverPaperService = null;
        }
        this.cloudData.getResourceRelations().addAll(((ResourceRelationData) retrofitExt.executeAndGetData(coverPaperService.loadResourceRelation("cover"))).getItems());
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: s */
    public final Observable<Unit> m42622s() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        CoverPaperService coverPaperService = this.service;
        if (coverPaperService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            coverPaperService = null;
        }
        CoverPaperData coverPaperData = (CoverPaperData) retrofitExt.executeAndGetData(coverPaperService.loadPaperData());
        this.cloudData.getPapers().addAll(coverPaperData.getItems());
        this.cloudData.getPaperCategories().addAll(coverPaperData.getCategories());
        this.cloudData.getPaperCategoryRelations().addAll(coverPaperData.getItemCategoryShips());
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: t */
    public final Observable<Unit> m42623t() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        CoverPaperService coverPaperService = this.service;
        if (coverPaperService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            coverPaperService = null;
        }
        this.cloudData.getResourceRelations().addAll(((ResourceRelationData) retrofitExt.executeAndGetData(coverPaperService.loadResourceRelation("template"))).getItems());
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: u */
    public final Observable<Unit> m42624u() {
        List<ResourceItem> mutableList;
        List<ResourceItem> mutableList2;
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        CoverPaperService coverPaperService = this.service;
        if (coverPaperService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            coverPaperService = null;
        }
        this.cloudData.getResources().addAll(((ResourceData) retrofitExt.executeAndGetData(coverPaperService.loadResourceData())).getItems());
        CoverPaperCloudFullData coverPaperCloudFullData = this.cloudData;
        List<ResourceItem> resources = coverPaperCloudFullData.getResources();
        ArrayList arrayList = new ArrayList();
        for (Object obj : resources) {
            if (Intrinsics.areEqual(((ResourceItem) obj).getTarget(), "cover")) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        coverPaperCloudFullData.setCoverResources(mutableList);
        CoverPaperCloudFullData coverPaperCloudFullData2 = this.cloudData;
        List<ResourceItem> resources2 = coverPaperCloudFullData2.getResources();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : resources2) {
            if (Intrinsics.areEqual(((ResourceItem) obj2).getTarget(), "template")) {
                arrayList2.add(obj2);
            }
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        coverPaperCloudFullData2.setPaperResources(mutableList2);
        Observable<Unit> just = Observable.just(Unit.INSTANCE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: v */
    public final void m42625v() {
        SyncStateOptions.INSTANCE.markAsSynced("template");
    }

    /* renamed from: w */
    public final void m42626w() {
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        final CoverProvider userCoverProvider = kSyncBundle.getUserCoverProvider();
        userCoverProvider.getDatabase().inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.dag
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                FetchCoverPaperAction.m42615x(FetchCoverPaperAction.this, userCoverProvider);
            }
        });
        final TemplateProvider userTemplateProvider = kSyncBundle.getUserTemplateProvider();
        userTemplateProvider.getDatabase().inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.eag
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                FetchCoverPaperAction.m42616y(FetchCoverPaperAction.this, userTemplateProvider);
            }
        });
    }
}
