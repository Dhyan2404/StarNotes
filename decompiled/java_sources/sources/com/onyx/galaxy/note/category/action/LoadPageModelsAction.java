package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J.\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0016\u0010\u000b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\t0\bj\u0002`\n0\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0002J\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "l", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "rootTag", "queryArgs", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "pageTagModels", GoogleApiAvailabilityLight.f29016b, "", C6998g.f39679a, Constants.STRING_SIG, CouchFieldKey.KEY_TAG_ID, "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "selectType", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1655#2,8:108\n1549#2:116\n1620#2,2:117\n1622#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction\n*L\n78#1:104\n78#1:105,3\n79#1:108,8\n87#1:116\n87#1:117,2\n87#1:120\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadPageModelsAction extends BaseNoteManagementAction<List<? extends PageModelBean>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String tagId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSelectType selectType;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageModelsAction$a */
    /* loaded from: classes9.dex */
    public static final class C10884a<T> implements Consumer {
        public C10884a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadPageModelsAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageModelsAction$b */
    /* loaded from: classes9.dex */
    public static final class C10885b<T, R> implements Function {
        public C10885b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CBQueryArgs> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPageModelsAction.this.m42358l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageModelsAction$c */
    /* loaded from: classes9.dex */
    public static final class C10886c<T, R> implements Function {
        public C10886c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull CBQueryArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNotePageTagListAction(it2, LoadPageModelsAction.this.selectType).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageModelsAction$d */
    /* loaded from: classes9.dex */
    public static final class C10887d<T, R> implements Function {
        public C10887d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PageModelBean> apply(@NotNull List<? extends PageTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPageModelsAction.this.m42360n(it2);
        }
    }

    @SourceDebugExtension({"SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1#3:108\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n*L\n69#1:104\n69#1:105,3\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.action.LoadPageModelsAction$e */
    /* loaded from: classes9.dex */
    public static final class C10888e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ CBQueryArgs f53852f;

        public C10888e(CBQueryArgs cBQueryArgs) {
            this.f53852f = cBQueryArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CBQueryArgs apply(@NotNull TreeNode<NoteTagBean> root) {
            List mutableListOf;
            List<TreeNode<NoteTagBean>> findChildrenNodes;
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(root, "root");
            TreeNode<NoteTagBean> findNode = root.findNode(LoadPageModelsAction.this.tagId);
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(LoadPageModelsAction.this.tagId);
            if (findNode != null && (findChildrenNodes = findNode.findChildrenNodes()) != null) {
                List<TreeNode<NoteTagBean>> list = findChildrenNodes;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((NoteTagBean) ((TreeNode) it2.next()).getData()).getUniqueId());
                }
                mutableListOf.addAll(arrayList);
            }
            return this.f53852f.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_TAG_ID, mutableListOf));
        }
    }

    public LoadPageModelsAction(@NotNull String tagId, @NotNull NoteSelectType selectType) {
        Intrinsics.checkNotNullParameter(tagId, "tagId");
        Intrinsics.checkNotNullParameter(selectType, "selectType");
        this.tagId = tagId;
        this.selectType = selectType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<PageModelBean>> create() {
        Observable<List<PageModelBean>> observeOn = createNoteProviderObservable().doOnNext(new C10884a()).flatMap(new C10885b()).flatMap(new C10886c()).observeOn(getObserveOn()).map(new C10887d()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Observable<CBQueryArgs> m42358l() {
        Observable<TreeNode<NoteTagBean>> just;
        CBQueryArgs varargOrdering = NotePageTagProviderKt.createEnabledPageTagQueryArgs().setVarargOrdering(CouchUtils.INSTANCE.getOrdering("pageIndex", true));
        if (Intrinsics.areEqual(this.tagId, NoteConfigConst.TAG_ROOT_ID)) {
            Observable<CBQueryArgs> just2 = Observable.just(varargOrdering);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        if (noteTreeBundle.getTagRootNote().findChildren().isEmpty()) {
            just = new LoadTagTreeAction().build();
        } else {
            just = Observable.just(noteTreeBundle.getTagRootNote());
            Intrinsics.checkNotNull(just);
        }
        return m42359m(just, varargOrdering);
    }

    /* renamed from: m */
    public final Observable<CBQueryArgs> m42359m(Observable<TreeNode<NoteTagBean>> rootTag, CBQueryArgs queryArgs) {
        Observable map = rootTag.map(new C10888e(queryArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final List<PageModelBean> m42360n(List<? extends PageTagModel> pageTagModels) {
        int collectionSizeOrDefault;
        List distinct;
        int collectionSizeOrDefault2;
        Object obj;
        List listOf;
        CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
        List<? extends PageTagModel> list = pageTagModels;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((PageTagModel) it2.next()).getDocumentId());
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        HashSet hashSet = new HashSet();
        ArrayList<PageTagModel> arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            PageTagModel pageTagModel = (PageTagModel) obj2;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{pageTagModel.getDocumentId(), pageTagModel.getPageUniqueId()});
            if (hashSet.add(listOf)) {
                arrayList2.add(obj2);
            }
        }
        List list2 = distinct;
        if (!list2.isEmpty()) {
            commonNoteArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list2));
        }
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, commonNoteArgs);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        for (PageTagModel pageTagModel2 : arrayList2) {
            PageModelBean pageModelBean = new PageModelBean(pageTagModel2);
            Iterator<T> it3 = loadNoteListInBatch.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((SyncNoteModel) obj).getUniqueId(), pageTagModel2.getDocumentId())) {
                    break;
                }
            }
            SyncNoteModel syncNoteModel = (SyncNoteModel) obj;
            if (syncNoteModel != null) {
                pageModelBean.setDocCreateAt(syncNoteModel.getCreatedAt());
                pageModelBean.setDocUpdatedAt(syncNoteModel.getUpdatedAt());
                String title = syncNoteModel.getTitle();
                if (title == null) {
                    title = "";
                }
                pageModelBean.setDocName(title);
                pageModelBean.setScene(syncNoteModel.getActiveScene());
                pageModelBean.setHasEncryption(syncNoteModel.hasEncryption());
            }
            arrayList3.add(pageModelBean);
        }
        return arrayList3;
    }
}
