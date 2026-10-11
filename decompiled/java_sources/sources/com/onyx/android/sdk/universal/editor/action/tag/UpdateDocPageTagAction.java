package com.onyx.android.sdk.universal.editor.action.tag;

import android.util.Log;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageLoad;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J2\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "q", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "curTagShapeList", "removedTagShapes", "", C4921e.f26528e, "", "m", "", "pageIndex", "s", "shapeList", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateDocPageTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateDocPageTagAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,173:1\n1549#2:174\n1620#2,3:175\n766#2:178\n857#2,2:179\n766#2:185\n857#2,2:186\n1549#2:188\n1620#2,3:189\n1549#2:192\n1620#2,3:193\n92#3,4:181\n*S KotlinDebug\n*F\n+ 1 UpdateDocPageTagAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction\n*L\n63#1:174\n63#1:175,3\n64#1:178\n64#1:179,2\n94#1:185\n94#1:186,2\n168#1:188\n168#1:189,3\n170#1:192\n170#1:193,3\n66#1:181,4\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateDocPageTagAction extends RxBaseAppAction<UpdateDocPageTagAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$a */
    /* loaded from: classes8.dex */
    public static final class C10197a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f51078f;

        public C10197a(String str) {
            this.f51078f = str;
        }

        @NotNull
        /* renamed from: a */
        public final Path m40409a(long j) {
            return ThumbnailPaths.INSTANCE.appPageThumbnailPath(EditorBundleKt.docId(UpdateDocPageTagAction.this.getEditorBundle()), this.f51078f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40409a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$b */
    /* loaded from: classes8.dex */
    public static final class C10198b<T, R> implements Function {

        /* renamed from: e */
        public static final C10198b<T, R> f51079e = new C10198b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Path it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.toAbsolutePath().toString();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$c */
    /* loaded from: classes8.dex */
    public static final class C10199c<T, R> implements Function {

        /* renamed from: e */
        public static final C10199c<T, R> f51080e = new C10199c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(FileUtils.deleteQuietly(new File(it2)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$d */
    /* loaded from: classes8.dex */
    public static final class C10200d<T, R> implements Function {
        public C10200d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateDocPageTagAction> apply(@NotNull UpdateDocPageTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateDocPageTagAction.this.m40406p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$e */
    /* loaded from: classes8.dex */
    public static final class C10201e<T, R> implements Function {
        public C10201e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateDocPageTagAction apply(@NotNull UpdateDocPageTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateDocPageTagAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$f */
    /* loaded from: classes8.dex */
    public static final class C10202f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteProvider f51083e;

        /* renamed from: f */
        public final /* synthetic */ UpdateDocPageTagAction f51084f;

        /* renamed from: g */
        public final /* synthetic */ String f51085g;

        /* renamed from: h */
        public final /* synthetic */ Set<String> f51086h;

        public C10202f(NoteProvider noteProvider, UpdateDocPageTagAction updateDocPageTagAction, String str, Set<String> set) {
            this.f51083e = noteProvider;
            this.f51084f = updateDocPageTagAction;
            this.f51085g = str;
            this.f51086h = set;
        }

        @NotNull
        /* renamed from: a */
        public final Long m40414a(long j) {
            List list;
            NoteProvider noteProvider = this.f51083e;
            String docId = EditorBundleKt.docId(this.f51084f.getEditorBundle());
            String str = this.f51085g;
            list = CollectionsKt___CollectionsKt.toList(this.f51086h);
            return Long.valueOf(NotePageTagProviderKt.purgeDocPageTag(noteProvider, docId, str, list));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40414a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$g */
    /* loaded from: classes8.dex */
    public static final class C10203g<T, R> implements Function {
        public C10203g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateDocPageTagAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateDocPageTagAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$h */
    /* loaded from: classes8.dex */
    public static final class C10204h<T, R> implements Function {
        public C10204h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateDocPageTagAction> apply(@NotNull VirtualPage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateDocPageTagAction.this.m40407q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$i */
    /* loaded from: classes8.dex */
    public static final class C10205i<T, R> implements Function {
        public C10205i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateDocPageTagAction apply(@NotNull UpdateDocPageTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateDocPageTagAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$j */
    /* loaded from: classes8.dex */
    public static final class C10206j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f51091f;

        /* renamed from: g */
        public final /* synthetic */ int f51092g;

        public C10206j(String str, int i) {
            this.f51091f = str;
            this.f51092g = i;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull UpdateDocPageTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Long.valueOf(NotePageTagProviderKt.updatePageTagModelPageIndex(KSyncBundle.INSTANCE.getUserNoteProvider(), EditorBundleKt.docId(UpdateDocPageTagAction.this.getEditorBundle()), this.f51091f, this.f51092g));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateDocPageTagAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: r */
    public static final void m40402r(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj, obj2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateDocPageTagAction> create() {
        Observable<UpdateDocPageTagAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10200d()).map(new C10201e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<Boolean> m40403m(String pageId) {
        Observable<Boolean> map = new DeletePageTagModelAction(getEditorBundle(), pageId).build().observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).map(new C10197a(pageId)).map(C10198b.f51079e).map(C10199c.f51080e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Set<String> m40404n(List<? extends Shape> shapeList) {
        int collectionSizeOrDefault;
        List flatten;
        int collectionSizeOrDefault2;
        Set<String> set;
        List<? extends Shape> list = shapeList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeOptions.INSTANCE.getTagBean((Shape) it2.next()).getTagList());
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        List list2 = flatten;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((SyncTagModel) it3.next()).getUniqueId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        return set;
    }

    /* renamed from: o */
    public final Observable<Long> m40405o(String pageId, List<? extends Shape> curTagShapeList, List<? extends Shape> removedTagShapes) {
        Observable<Long> just = Observable.just(0L);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Set<String> m40404n = m40404n(removedTagShapes);
        Set<String> m40404n2 = m40404n(curTagShapeList);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        CollectionKt.diff(m40404n, m40404n2, linkedHashSet, new LinkedHashSet());
        if (CollectionKt.isNullOrEmpty(linkedHashSet)) {
            return just;
        }
        Observable map = just.observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10202f(KSyncBundle.INSTANCE.getUserNoteProvider(), this, pageId, linkedHashSet));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<UpdateDocPageTagAction> m40406p() {
        int collectionSizeOrDefault;
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        List<VirtualPage> virtualPageList = virtualPolicy.getVirtualPageList();
        if (CollectionKt.isNullOrEmpty(virtualPageList)) {
            Observable<UpdateDocPageTagAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<VirtualPage> dirtyVirtualPages = virtualPolicy.getDirtyVirtualPages();
        Collection<NotePage> arrayList = new ArrayList<>();
        if (dirtyVirtualPages.isEmpty()) {
            arrayList = NoteDocNotePage.INSTANCE.getDirtyNotePages(getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc());
        }
        if (dirtyVirtualPages.isEmpty() && (!arrayList.isEmpty())) {
            Collection<NotePage> collection = arrayList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((NotePage) it2.next()).getPageUniqueId());
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : virtualPageList) {
                if (arrayList2.contains(((VirtualPage) obj).getBox().getId())) {
                    arrayList3.add(obj);
                }
            }
            dirtyVirtualPages = arrayList3;
        }
        Debug debug = Debug.INSTANCE;
        String simpleNameString = AnyKt.toSimpleNameString(this);
        if (debug.getDebug()) {
            Log.d(simpleNameString, "virtualPageList.size = " + virtualPageList.size() + ", dirtyVirtualPages.size = " + dirtyVirtualPages.size());
        }
        if (dirtyVirtualPages.isEmpty()) {
            Observable<UpdateDocPageTagAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable concatMap = Observable.fromIterable(dirtyVirtualPages).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).concatMap(new C10204h());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<UpdateDocPageTagAction> map = RxjavaKt.takeLastOne(concatMap).map(new C10205i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<UpdateDocPageTagAction> m40407q(VirtualPage virtualPage) {
        Observable<UpdateDocPageTagAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        BoxInfo noteInfo = virtualPage.getBox().getNoteInfo();
        String id = noteInfo != null ? noteInfo.getId() : null;
        if (id == null) {
            id = "";
        }
        NotePage cacheNotePage = noteDocNotePage.getCacheNotePage(noteDoc, id);
        if (cacheNotePage == null) {
            return just;
        }
        String pageId = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
        int virtualPageIndex = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex(pageId);
        if (!cacheNotePage.getIsDirty() || cacheNotePage.getTagShapeMap().isEmpty()) {
            return just;
        }
        if (!cacheNotePage.getIsLoaded()) {
            NotePageLoad.INSTANCE.ensurePageLoaded(cacheNotePage);
        }
        List<Shape> shapeList = cacheNotePage.getShapeList();
        final ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeKt.isTagShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        Map<String, Pair<Shape, Boolean>> tagShapeMap = cacheNotePage.getTagShapeMap();
        final Function2<String, Pair<? extends Shape, ? extends Boolean>, Unit> function2 = new Function2<String, Pair<? extends Shape, ? extends Boolean>, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(String str, Pair<? extends Shape, ? extends Boolean> pair) {
                invoke2(str, (Pair<? extends Shape, Boolean>) pair);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String t, @NotNull Pair<? extends Shape, Boolean> value) {
                Intrinsics.checkNotNullParameter(t, "t");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.getSecond().booleanValue()) {
                    return;
                }
                CollectionKt.safeAdd(arrayList2, value.getFirst());
            }
        };
        tagShapeMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.dxn
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj2, Object obj3) {
                UpdateDocPageTagAction.m40402r(Function2.this, obj2, obj3);
            }
        });
        if (CollectionKt.isNullOrEmpty(arrayList) && CollectionKt.isNullOrEmpty(arrayList2)) {
            return just;
        }
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(just, new Function1<UpdateDocPageTagAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UpdateDocPageTagAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList.isEmpty());
            }
        }, new SaveTagPageThumbnailAction(getEditorBundle(), pageId).build()), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList2.isEmpty());
            }
        }, m40405o(pageId, arrayList, arrayList2)), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList.isEmpty());
            }
        }, m40408s(pageId, virtualPageIndex)), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
            
                if ((!r2.isEmpty()) != false) goto L8;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull java.lang.Object r2) {
                /*
                    r1 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                    java.util.List<com.onyx.android.sdk.note.common.shape.Shape> r2 = r1
                    boolean r2 = r2.isEmpty()
                    if (r2 == 0) goto L1a
                    java.util.List<com.onyx.android.sdk.note.common.shape.Shape> r1 = r2
                    java.util.Collection r1 = (java.util.Collection) r1
                    boolean r1 = r1.isEmpty()
                    r2 = 1
                    r1 = r1 ^ r2
                    if (r1 == 0) goto L1a
                    goto L1b
                L1a:
                    r2 = 0
                L1b:
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction$update$9.invoke(java.lang.Object):java.lang.Boolean");
            }
        }, m40403m(pageId)).map(new C10203g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<Long> m40408s(String pageId, int pageIndex) {
        Observable<Long> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C10206j(pageId, pageIndex));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
