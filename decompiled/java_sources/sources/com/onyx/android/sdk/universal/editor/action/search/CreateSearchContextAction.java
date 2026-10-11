package com.onyx.android.sdk.universal.editor.action.search;

import com.couchbase.lite.SelectResult;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.NoteSearchContext;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J$\u0010\u000e\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J$\u0010\u000f\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J$\u0010\u0010\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", "l", "m", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "", "", "pageIds", "shapeIds", "r", "s", "q", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateSearchContextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSearchContextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,148:1\n766#2:149\n857#2:150\n858#2:152\n1855#2:153\n766#2:154\n857#2,2:155\n766#2:157\n857#2,2:158\n1856#2:160\n1549#2:161\n1620#2,3:162\n1549#2:165\n1620#2,3:166\n1549#2:169\n1620#2,3:170\n1549#2:173\n1620#2,3:174\n637#3:151\n*S KotlinDebug\n*F\n+ 1 CreateSearchContextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction\n*L\n58#1:149\n58#1:150\n58#1:152\n103#1:153\n105#1:154\n105#1:155,2\n106#1:157\n106#1:158,2\n103#1:160\n126#1:161\n126#1:162,3\n127#1:165\n127#1:166,3\n145#1:169\n145#1:170,3\n146#1:173\n146#1:174,3\n58#1:151\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateSearchContextAction extends RxBaseAppAction<CreateSearchContextAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchArgs noteSearchArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$a */
    /* loaded from: classes8.dex */
    public static final class C9843a<T> implements Consumer {
        public C9843a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateSearchContextAction.this.m39758p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$b */
    /* loaded from: classes8.dex */
    public static final class C9844b<T> implements Consumer {
        public C9844b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateSearchContextAction.this.m39754l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$c */
    /* loaded from: classes8.dex */
    public static final class C9845c<T> implements Consumer {
        public C9845c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateSearchContextAction.this.m39755m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$d */
    /* loaded from: classes8.dex */
    public static final class C9846d<T> implements Consumer {
        public C9846d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateSearchContextAction.this.m39757o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$e */
    /* loaded from: classes8.dex */
    public static final class C9847e<T> implements Consumer {
        public C9847e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateSearchContextAction.this.m39756n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.CreateSearchContextAction$f */
    /* loaded from: classes8.dex */
    public static final class C9848f<T, R> implements Function {
        public C9848f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateSearchContextAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateSearchContextAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateSearchContextAction(@NotNull EditorBundle editorBundle, @NotNull SyncNoteModel noteModel, @NotNull NoteSearchArgs noteSearchArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        this.noteModel = noteModel;
        this.noteSearchArgs = noteSearchArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateSearchContextAction> create() {
        Observable<CreateSearchContextAction> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C9843a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9844b()).doOnNext(new C9845c()).doOnNext(new C9846d()).doOnNext(new C9847e()).map(new C9848f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m39754l() {
        Set<String> mutableSet;
        List<TextContentType> contentTypes = TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes());
        contentTypes.remove(TextContentType.TEXT_BOX);
        List<String> queryIndexedPageIds = EditorBundleKt.getDocFtsProvider(getEditorBundle()).queryIndexedPageIds(contentTypes);
        Set<String> allPageIds = this.noteSearchArgs.getSearchContext().getAllPageIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allPageIds) {
            if (!queryIndexedPageIds.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        NoteSearchContext searchContext = this.noteSearchArgs.getSearchContext();
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
        searchContext.setPageIdsForBuildIndex(mutableSet);
    }

    /* renamed from: m */
    public final void m39755m() {
        List<? extends TextContentType> listOf;
        Set<String> mutableSet;
        List<TextContentType> contentTypes = TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TextContentType.PDF);
        if (CollectionKt.containsAny(contentTypes, listOf)) {
            List<String> queryMatchedPageIds = EditorBundleKt.getDocFtsProvider(getEditorBundle()).queryMatchedPageIds(listOf, this.noteSearchArgs.getKeyword());
            NoteSearchContext searchContext = this.noteSearchArgs.getSearchContext();
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(queryMatchedPageIds);
            searchContext.setPageIdsForSearchReader(mutableSet);
        }
    }

    /* renamed from: n */
    public final void m39756n() {
        List<? extends TextContentType> listOf;
        Set<String> mutableSet;
        List<TextContentType> contentTypes = TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes());
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextContentType[]{TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT});
        if (CollectionKt.containsAny(contentTypes, listOf)) {
            List<String> queryMatchedPageIds = EditorBundleKt.getDocFtsProvider(getEditorBundle()).queryMatchedPageIds(listOf, this.noteSearchArgs.getKeyword());
            NoteSearchContext searchContext = this.noteSearchArgs.getSearchContext();
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(queryMatchedPageIds);
            searchContext.setPageIdsForSearchScribble(mutableSet);
        }
    }

    /* renamed from: o */
    public final void m39757o() {
        List listOf;
        Set<String> mutableSet;
        Set<String> mutableSet2;
        List<TextContentType> contentTypes = TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(TextContentType.TEXT_BOX);
        if (CollectionKt.containsAny(contentTypes, listOf)) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            m39760r(arrayList, arrayList2);
            m39761s(arrayList, arrayList2);
            m39759q(arrayList, arrayList2);
            NoteSearchContext searchContext = this.noteSearchArgs.getSearchContext();
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            searchContext.setPageIdsForSearchTextBox(mutableSet);
            NoteSearchContext searchContext2 = this.noteSearchArgs.getSearchContext();
            mutableSet2 = CollectionsKt___CollectionsKt.toMutableSet(arrayList2);
            searchContext2.setShapeIdsForSearchTextBox(mutableSet2);
        }
    }

    /* renamed from: p */
    public final void m39758p() {
        Set<VirtualPage> mutableSet;
        List<VirtualPage> virtualPageList = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageList();
        NoteSearchContext searchContext = this.noteSearchArgs.getSearchContext();
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(virtualPageList);
        searchContext.updateVirtualPageList(mutableSet);
    }

    /* renamed from: q */
    public final void m39759q(List<String> pageIds, List<String> shapeIds) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
        CBQueryArgs loadShapeListQuery$default = ShapeQueryArgsExtKt.loadShapeListQuery$default(this.noteModel.getUniqueId(), 0, 0, (Long) null, 14, (Object) null);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<String> list = shapeIds;
        CBQueryArgs andWith = loadShapeListQuery$default.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("shapeType", 2000)).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, list)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_CONNECTION_SHAPE_ID, list));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_PAGE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(andWith.setVarargSelectResults(property, property2));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            String pageUniqueId = ((ShapeModel) it2.next()).getPageUniqueId();
            if (pageUniqueId == null) {
                pageUniqueId = "";
            }
            arrayList.add(pageUniqueId);
        }
        pageIds.addAll(arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = loadShapeList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((ShapeModel) it3.next()).getUniqueId());
        }
        shapeIds.addAll(arrayList2);
    }

    /* renamed from: r */
    public final void m39760r(List<String> pageIds, List<String> shapeIds) {
        boolean contains;
        Iterator<T> it2 = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getLoadedNotePages().iterator();
        while (it2.hasNext()) {
            List<Shape> shapeList = ((NotePage) it2.next()).getShapeList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : shapeList) {
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                if (shapeTypes.isTextShape(shapeTypes.getTargetShape((Shape) obj))) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                String text = ((Shape) obj2).getText();
                if (text == null) {
                    text = "";
                }
                contains = StringsKt__StringsKt.contains((CharSequence) text, (CharSequence) this.noteSearchArgs.getKeyword(), true);
                if (contains) {
                    arrayList2.add(obj2);
                }
            }
            ShapeTypes shapeTypes2 = ShapeTypes.INSTANCE;
            pageIds.addAll(shapeTypes2.toPageIdSet(arrayList2));
            shapeIds.addAll(shapeTypes2.toShapeIdSet(arrayList2));
        }
    }

    /* renamed from: s */
    public final void m39761s(List<String> pageIds, List<String> shapeIds) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
        CBQueryArgs loadShapeListQuery$default = ShapeQueryArgsExtKt.loadShapeListQuery$default(this.noteModel.getUniqueId(), 0, 0, (Long) null, 14, (Object) null);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = loadShapeListQuery$default.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("shapeType", 16)).andWith(couchUtils.fuzzyMatchExpression("text", this.noteSearchArgs.getKeyword()));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_PAGE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(andWith.setVarargSelectResults(property, property2));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            String pageUniqueId = ((ShapeModel) it2.next()).getPageUniqueId();
            if (pageUniqueId == null) {
                pageUniqueId = "";
            }
            arrayList.add(pageUniqueId);
        }
        pageIds.addAll(arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = loadShapeList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((ShapeModel) it3.next()).getUniqueId());
        }
        shapeIds.addAll(arrayList2);
    }
}
