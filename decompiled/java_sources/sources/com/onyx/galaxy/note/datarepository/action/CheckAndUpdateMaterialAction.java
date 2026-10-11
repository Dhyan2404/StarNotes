package com.onyx.galaxy.note.datarepository.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.Items;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.MaterialAddRecordModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.BatchUpdateArgs;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.bean.ResourceItemArgs;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.onyx.galaxy.note.datarepository.service.DataRepositoryService;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\"\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00040\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002J\u001a\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002J\u0014\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\r\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\u0006\u0010\r\u001a\u00020\bH\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;", C4921e.f26528e, "models", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "l", "resourceList", GoogleApiAvailabilityLight.f29016b, "q", "library", "r", "resource", "p", "m", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n766#2:132\n857#2,2:133\n1855#2:135\n288#2,2:136\n1856#2:138\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n*L\n50#1:125\n50#1:126,3\n59#1:129\n59#1:130,2\n69#1:132\n69#1:133,2\n108#1:135\n110#1:136,2\n108#1:138\n*E\n"})
/* loaded from: classes9.dex */
public final class CheckAndUpdateMaterialAction extends RxBaseAction<CheckAndUpdateMaterialAction> {

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$a */
    /* loaded from: classes9.dex */
    public static final class C11699a<T, R> implements Function {
        public C11699a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<MaterialAddRecordModel> apply(@NotNull CheckAndUpdateMaterialAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45377o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$b */
    /* loaded from: classes9.dex */
    public static final class C11700b<T> implements Predicate {

        /* renamed from: e */
        public static final C11700b<T> f57949e = new C11700b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<MaterialAddRecordModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CollectionKt.isNonBlank(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$c */
    /* loaded from: classes9.dex */
    public static final class C11701c<T, R> implements Function {
        public C11701c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<LibraryBean> apply(@NotNull List<MaterialAddRecordModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45374l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$d */
    /* loaded from: classes9.dex */
    public static final class C11702d<T> implements Predicate {

        /* renamed from: e */
        public static final C11702d<T> f57951e = new C11702d<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<LibraryBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CollectionKt.isNonBlank(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$e */
    /* loaded from: classes9.dex */
    public static final class C11703e<T, R> implements Function {
        public C11703e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<LibraryBean>> apply(@NotNull List<LibraryBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45376n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$f */
    /* loaded from: classes9.dex */
    public static final class C11704f<T, R> implements Function {
        public C11704f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<LibraryBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45379q(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$g */
    /* loaded from: classes9.dex */
    public static final class C11705g<T, R> implements Function {
        public C11705g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckAndUpdateMaterialAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$h */
    /* loaded from: classes9.dex */
    public static final class C11706h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LibraryBean f57955e;

        public C11706h(LibraryBean libraryBean) {
            this.f57955e = libraryBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LibraryBean apply(@NotNull DownloadTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f57955e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$i */
    /* loaded from: classes9.dex */
    public static final class C11707i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<LibraryBean> f57956e;

        public C11707i(List<LibraryBean> list) {
            this.f57956e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<LibraryBean> apply(@NotNull DeleteMaterialsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f57956e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$j */
    /* loaded from: classes9.dex */
    public static final class C11708j<T, R> implements Function {
        public C11708j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45380r(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$k */
    /* loaded from: classes9.dex */
    public static final class C11709k<T, R> implements Function {
        public C11709k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LibraryBean apply(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45378p(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1726#2,3:125\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n*L\n82#1:125,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$l */
    /* loaded from: classes9.dex */
    public static final class C11710l<T> implements Predicate {

        /* renamed from: e */
        public static final C11710l<T> f57959e = new C11710l<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull LibraryBean it2) {
            boolean z;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (!CollectionKt.isNonBlank(it2.getAttachments())) {
                return false;
            }
            List<AttachmentBean> attachments = it2.getAttachments();
            if (!(attachments instanceof Collection) || !attachments.isEmpty()) {
                Iterator<T> it3 = attachments.iterator();
                while (it3.hasNext()) {
                    if (!StringKt.isNotBlank(((AttachmentBean) it3.next()).getValue())) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            return z;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$m */
    /* loaded from: classes9.dex */
    public static final class C11711m<T, R> implements Function {
        public C11711m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LibraryBean> apply(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckAndUpdateMaterialAction.this.m45375m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.CheckAndUpdateMaterialAction$n */
    /* loaded from: classes9.dex */
    public static final class C11712n<T, R> implements Function {

        /* renamed from: e */
        public static final C11712n<T, R> f57961e = new C11712n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportMaterialsAction> apply(@NotNull LibraryBean it2) {
            List mutableListOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(it2);
            return new ImportMaterialsAction(docManagerBundle, mutableListOf).build();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CheckAndUpdateMaterialAction> create() {
        Observable<CheckAndUpdateMaterialAction> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C11699a()).filter(C11700b.f57949e).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C11701c()).filter(C11702d.f57951e).flatMap(new C11703e()).flatMap(new C11704f()).map(new C11705g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<LibraryBean> m45374l(List<MaterialAddRecordModel> models) {
        int collectionSizeOrDefault;
        List<MaterialAddRecordModel> list = models;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (MaterialAddRecordModel materialAddRecordModel : list) {
            arrayList.add(new ResourceItemArgs(materialAddRecordModel.getLibraryId(), materialAddRecordModel.getResourceType(), materialAddRecordModel.getVersion()));
        }
        return ((Items) RetrofitExt.INSTANCE.executeAndGetData(((DataRepositoryService) ServiceFactory.INSTANCE.getOnyxApiV2Service(DataRepositoryService.class)).batchUpdateResource(new BatchUpdateArgs(arrayList)))).getItems();
    }

    /* renamed from: m */
    public final Observable<LibraryBean> m45375m(LibraryBean library) {
        if (DataRepositoryManager.INSTANCE.isDownloadComplete(library)) {
            Observable<LibraryBean> just = Observable.just(library);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new DownloadTaskAction(library).build().map(new C11706h(library));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<List<LibraryBean>> m45376n(List<LibraryBean> resourceList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : resourceList) {
            if (((LibraryBean) obj).getIsDeleted()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Observable<List<LibraryBean>> just = Observable.just(resourceList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<List<LibraryBean>> map = RxjavaKt.takeLastOne(new DeleteMaterialsAction(arrayList).build()).map(new C11707i(resourceList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final List<MaterialAddRecordModel> m45377o() {
        return KSyncBundle.INSTANCE.getUserDataRepositoryProvider().loadAllMaterialAddRecord();
    }

    /* renamed from: p */
    public final LibraryBean m45378p(LibraryBean resource) {
        Object obj;
        String resourceType = resource.getResourceType();
        List items = Intrinsics.areEqual(resourceType, com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_TEMPLATE) ? ((Items) RetrofitExt.INSTANCE.executeAndGetData(((DataRepositoryService) ServiceFactory.INSTANCE.getOnyxApiV2Service(DataRepositoryService.class)).loadTemplateAttachment(resource.getId()))).getItems() : Intrinsics.areEqual(resourceType, com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_STICKER) ? ((Items) RetrofitExt.INSTANCE.executeAndGetData(((DataRepositoryService) ServiceFactory.INSTANCE.getOnyxApiV2Service(DataRepositoryService.class)).loadStickerAttachment(resource.getId()))).getItems() : CollectionsKt__CollectionsKt.emptyList();
        for (AttachmentBean attachmentBean : resource.getAttachments()) {
            Iterator it2 = items.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                AttachmentBean attachmentBean2 = (AttachmentBean) obj;
                if (Intrinsics.areEqual(attachmentBean2.getMd5(), attachmentBean.getMd5()) && Intrinsics.areEqual(attachmentBean2.getName(), attachmentBean.getName())) {
                    break;
                }
            }
            AttachmentBean attachmentBean3 = (AttachmentBean) obj;
            if (attachmentBean3 != null) {
                attachmentBean.setValue(attachmentBean3.getValue());
            }
        }
        return resource;
    }

    /* renamed from: q */
    public final Observable<?> m45379q(List<LibraryBean> resourceList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : resourceList) {
            if (!((LibraryBean) obj).getIsDeleted()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Observable<?> just = Observable.just(resourceList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(arrayList).concatMap(new C11708j());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    /* renamed from: r */
    public final Observable<?> m45380r(LibraryBean library) {
        Observable<?> flatMap = Observable.just(library).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C11709k()).filter(C11710l.f57959e).flatMap(new C11711m()).flatMap(C11712n.f57961e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
