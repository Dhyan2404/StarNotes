package com.onyx.galaxy.note.category.action;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnDeleteNoteEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0002R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DeleteNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "", "l", "p", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Ljava/util/List;", "nodes", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "sortProvider", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteNoteAction.kt\ncom/onyx/galaxy/note/category/action/DeleteNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1603#2,9:145\n1855#2:154\n1856#2:156\n1612#2:157\n766#2:158\n857#2,2:159\n1855#2,2:161\n1549#2:163\n1620#2,3:164\n766#2:167\n857#2,2:168\n1855#2,2:170\n1549#2:172\n1620#2,3:173\n1549#2:176\n1620#2,3:177\n1855#2,2:180\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n1855#2,2:190\n1#3:155\n*S KotlinDebug\n*F\n+ 1 DeleteNoteAction.kt\ncom/onyx/galaxy/note/category/action/DeleteNoteAction\n*L\n55#1:145,9\n55#1:154\n55#1:156\n55#1:157\n56#1:158\n56#1:159,2\n69#1:161,2\n80#1:163\n80#1:164,3\n81#1:167\n81#1:168,2\n82#1:170,2\n94#1:172\n94#1:173,3\n105#1:176\n105#1:177,3\n119#1:180,2\n132#1:182\n132#1:183,3\n141#1:186\n141#1:187,3\n142#1:190,2\n55#1:155\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: h, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: i, reason: from kotlin metadata */
    public SortProvider sortProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10811a<T, R> implements Function {

        /* renamed from: e */
        public static final C10811a<T, R> f53723e = new C10811a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DeleteNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10812b<T, R> implements Function {
        public C10812b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull DeleteNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10813c<T> implements Consumer {
        public C10813c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteNoteAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10814d<T, R> implements Function {
        public C10814d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SortProvider> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteNoteAction.this.createSortProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10815e<T> implements Consumer {
        public C10815e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteNoteAction.this.sortProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10816f<T> implements Consumer {
        public C10816f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteNoteAction.this.m42221l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10817g<T> implements Consumer {
        public C10817g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteNoteAction.this.m42223n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10818h<T> implements Consumer {
        public C10818h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteNoteAction.this.m42222m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10819i<T, R> implements Function {
        public C10819i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteNoteAction> apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteNoteAction.this.m42225p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$j */
    /* loaded from: classes9.dex */
    public static final class C10820j<T, R> implements Function {
        public C10820j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteNoteAction> apply(@NotNull DeleteNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteNoteAction.this.m42226q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$k */
    /* loaded from: classes9.dex */
    public static final class C10821k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<String> f53733e;

        public C10821k(List<String> list) {
            this.f53733e = list;
        }

        /* renamed from: a */
        public final void m42237a(boolean z) {
            List list;
            KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
            list = CollectionsKt___CollectionsKt.toList(this.f53733e);
            kSyncBundle.post(new SyncChangedNoteTreeEvent(list));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42237a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$l */
    /* loaded from: classes9.dex */
    public static final class C10822l<T, R> implements Function {
        public C10822l() {
        }

        @NotNull
        /* renamed from: a */
        public final DeleteNoteAction m42238a(boolean z) {
            return DeleteNoteAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42238a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteNoteAction$m */
    /* loaded from: classes9.dex */
    public static final class C10823m<T, R> implements Function {
        public C10823m() {
        }

        @NotNull
        /* renamed from: a */
        public final DeleteNoteAction m42239a(boolean z) {
            return DeleteNoteAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42239a(((Boolean) obj).booleanValue());
        }
    }

    public DeleteNoteAction(@NotNull List<SyncNoteModel> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = Observable.just(this).flatMap(new C10812b()).doOnNext(new C10813c()).flatMap(new C10814d()).doOnNext(new C10815e()).doOnNext(new C10816f()).doOnNext(new C10817g()).doOnNext(new C10818h()).flatMap(new C10819i()).flatMap(new C10820j()).map(C10811a.f53723e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final void m42221l() {
        Iterator<T> it2 = this.nodes.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).beforeSave();
        }
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        NoteModelProviderKt.removeNoteList(noteProvider, this.nodes);
        DocCollectionBundle.INSTANCE.postEvent(new OnDeleteNoteEvent(this.nodes));
        Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(DeleteNoteAction.class), "delete note SyncNoteModel:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        m42224o();
    }

    /* renamed from: m */
    public final void m42222m() {
        int collectionSizeOrDefault;
        List<SyncNoteModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        CBQueryArgs andWith = NotePageTagProviderKt.createEnabledPageTagQueryArgs().andWith(CouchUtils.INSTANCE.inExpression("documentId", arrayList));
        NoteProvider noteProvider = this.noteProvider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, andWith);
        for (PageTagModel pageTagModel : loadPageTagList) {
            pageTagModel.setStatus(1);
            pageTagModel.resetRevisionId();
        }
        NoteProvider noteProvider3 = this.noteProvider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
        } else {
            noteProvider2 = noteProvider3;
        }
        NotePageTagProviderKt.savePageTagModels(noteProvider2, loadPageTagList);
    }

    /* renamed from: n */
    public final void m42223n() {
        int collectionSizeOrDefault;
        if (this.nodes.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        List<SyncNoteModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression("contentId", arrayList));
        SortProvider sortProvider = this.sortProvider;
        if (sortProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortProvider");
            sortProvider = null;
        }
        sortProvider.deleteSortList(cBQueryArgs);
    }

    /* renamed from: o */
    public final void m42224o() {
        int collectionSizeOrDefault;
        List<SyncNoteModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(LogcatGenerator.INSTANCE.generateDeletedNoteLog((SyncNoteModel) it2.next()));
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            LogUtils.file(DeleteNoteAction.class.getSimpleName() + ';' + ((String) it3.next()));
        }
    }

    /* renamed from: p */
    public final Observable<DeleteNoteAction> m42225p() {
        int collectionSizeOrDefault;
        List<? extends Object> list;
        int collectionSizeOrDefault2;
        List mutableList;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<SyncNoteModel> list2 = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getParentUniqueId());
        }
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        for (String str : arrayList2) {
            Intrinsics.checkNotNull(str);
            linkedHashSet.add(str);
        }
        if (linkedHashSet.isEmpty()) {
            Observable<DeleteNoteAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
        cBQueryArgs.andWith(couchUtils.inIdsExpression(list));
        cBQueryArgs.m72251setLimit(4000);
        cBQueryArgs.setSelectResults(SyncNoteModel.INSTANCE.getNoteSelectResult());
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
        List<SyncNoteModel> list3 = this.nodes;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((SyncNoteModel) it3.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        mutableList.addAll(linkedHashSet);
        Observable map = new UpdateNoteAction(loadNoteListInBatch, false, false, 6, null).build().doOnNext(new C10821k(mutableList)).map(new C10822l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<DeleteNoteAction> m42226q() {
        List distinct;
        List<SyncNoteModel> list = this.nodes;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String parentUniqueId = ((SyncNoteModel) it2.next()).getParentUniqueId();
            if (parentUniqueId != null) {
                arrayList.add(parentUniqueId);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        if (distinct.isEmpty()) {
            Observable<DeleteNoteAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new UpdateFolderCoverAction(distinct).build().map(new C10823m());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
