package com.onyx.android.sdk.universal.editor.action.page;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.OrderListUtils;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction;
import com.onyx.android.sdk.universal.editor.action.tag.CheckAndUpdateTagPageIndexAction;
import com.onyx.android.sdk.universal.editor.events.app.RemovedPageRestoredEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", C4921e.f26528e, "pageModelList", "", GoogleApiAvailabilityLight.f29016b, "", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRestoreRemovedPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreRemovedPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,129:1\n2634#2:130\n1045#2:133\n1655#2,8:134\n2634#2:142\n2634#2:144\n1855#2,2:146\n2634#2:148\n1477#2:150\n1502#2,3:151\n1505#2,3:161\n1855#2,2:165\n1#3:131\n1#3:132\n1#3:143\n1#3:145\n1#3:149\n372#4,7:154\n215#5:164\n216#5:167\n*S KotlinDebug\n*F\n+ 1 RestoreRemovedPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction\n*L\n63#1:130\n69#1:133\n78#1:134,8\n79#1:142\n92#1:144\n97#1:146,2\n103#1:148\n109#1:150\n109#1:151,3\n109#1:161,3\n112#1:165,2\n63#1:131\n79#1:143\n92#1:145\n103#1:149\n109#1:154,7\n110#1:164\n110#1:167\n*E\n"})
/* loaded from: classes8.dex */
public final class RestoreRemovedPagesAction extends RxBaseAppAction<Boolean> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction$Companion;", "", "()V", "afterRestore", "Lio/reactivex/rxjava3/core/Observable;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "gotoPageId", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C9729a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ EditorBundle f50234e;

            /* renamed from: f */
            public final /* synthetic */ String f50235f;

            public C9729a(EditorBundle editorBundle, String str) {
                this.f50234e = editorBundle;
                this.f50235f = str;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends GotoPageByIdAction> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new GotoPageByIdAction(this.f50234e, this.f50235f, false, 4, null).build();
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Observable<?> afterRestore(@NotNull EditorBundle editorBundle, @NotNull String gotoPageId) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(gotoPageId, "gotoPageId");
            Observable flatMap = new ReopenDocumentAction(editorBundle).build().flatMap(new C9729a(editorBundle, gotoPageId));
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            return flatMap;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9730a<T, R> implements Function {
        public C9730a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPageModel> apply(@NotNull RestoreRemovedPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RestoreRemovedPagesAction.this.m39572o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9731b<T> implements Consumer {
        public C9731b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<VirtualPageModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RestoreRemovedPagesAction.this.m39571n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9732c<T, R> implements Function {
        public C9732c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<VirtualPageModel> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            Companion companion = RestoreRemovedPagesAction.INSTANCE;
            EditorBundle editorBundle = RestoreRemovedPagesAction.this.getEditorBundle();
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            VirtualPageModel virtualPageModel = (VirtualPageModel) firstOrNull;
            String uniqueId = virtualPageModel != null ? virtualPageModel.getUniqueId() : null;
            if (uniqueId == null) {
                uniqueId = "";
            }
            return companion.afterRestore(editorBundle, uniqueId);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9733d<T> implements Consumer {
        public C9733d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RestoreRemovedPagesAction.this.getEditorBundle(), new RemovedPageRestoredEvent(RestoreRemovedPagesAction.this.pageIdList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9734e<T, R> implements Function {
        public C9734e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CheckAndUpdateTagPageIndexAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckAndUpdateTagPageIndexAction(RestoreRemovedPagesAction.this.getEditorBundle()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$f */
    /* loaded from: classes8.dex */
    public static final class C9735f<T> implements Consumer {

        /* renamed from: e */
        public static final C9735f<T> f50241e = new C9735f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.restore_fail, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$g */
    /* loaded from: classes8.dex */
    public static final class C9736g<T, R> implements Function {

        /* renamed from: e */
        public static final C9736g<T, R> f50242e = new C9736g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CheckAndUpdateTagPageIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RestoreRemovedPagesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    /* renamed from: m */
    public static final void m39570m() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.removed_page_restore, false, 2, (Object) null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9730a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9731b()).flatMap(new C9732c()).doOnNext(new C9733d()).flatMap(new C9734e()).observeOn(getMainUIScheduler()).doOnError(C9735f.f50241e).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.dml
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RestoreRemovedPagesAction.m39570m();
            }
        }).map(C9736g.f50242e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m39571n(List<VirtualPageModel> pageModelList) {
        List list;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        NoteDocSave.INSTANCE.savePage(noteDoc);
        NoteProviderHolder providerHolder = noteDoc.getProviderHolder();
        Iterator<T> it2 = pageModelList.iterator();
        while (it2.hasNext()) {
            List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeListQuery$default(EditorBundleKt.docId(getEditorBundle()), ((VirtualPageModel) it2.next()).getUniqueId(), (String) null, (Integer) null, 12, (Object) null).andWith(CouchUtils.INSTANCE.notNullOrMissing(CouchFieldKey.KEY_SHAPE_CONNECTION_BEAN)));
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it3 = loadShapeList.iterator();
            while (it3.hasNext()) {
                ShapeConnectionBean shapeConnectionBean = ((ShapeModel) it3.next()).getShapeConnectionBean();
                CollectionKt.safeAddAll(linkedHashSet, shapeConnectionBean != null ? shapeConnectionBean.getConnectionShapeIds() : null);
            }
            list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
            List<ShapeModel> loadShapeList2 = providerHolder.getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.inShapeIdListQuery(list).andWith(CouchUtils.INSTANCE.equalExpression("status", 1)));
            Iterator<T> it4 = loadShapeList2.iterator();
            while (it4.hasNext()) {
                ((ShapeModel) it4.next()).setStatus(0);
            }
            List<ShapeModel> list2 = loadShapeList2;
            Debug.INSTANCE.m32052i(RestoreRemovedPagesAction.class, CollectionKt.getSize(linkedHashSet) + " connectionShapes:" + CollectionKt.getSize(list2), new Object[0]);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list2) {
                String pageUniqueId = ((ShapeModel) obj).getPageUniqueId();
                if (pageUniqueId == null) {
                    pageUniqueId = "";
                }
                Object obj2 = linkedHashMap.get(pageUniqueId);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(pageUniqueId, obj2);
                }
                ((List) obj2).add(obj);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String newRevisionId = ShapeModel.INSTANCE.newRevisionId();
                Iterator it5 = ((Iterable) entry.getValue()).iterator();
                while (it5.hasNext()) {
                    ((ShapeModel) it5.next()).setInfoRevisionId(newRevisionId);
                }
                NotePageSave.INSTANCE.saveShapeToFile(providerHolder, (List) entry.getValue(), (String) entry.getKey(), newRevisionId);
            }
            providerHolder.getNoteShapeProvider().saveShapeList(list2);
        }
    }

    /* renamed from: o */
    public final List<VirtualPageModel> m39572o() {
        List mutableList;
        List sortedWith;
        List mutableList2;
        List<VirtualPageModel> loadVirtualPageModelList = getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualPageModelList(VirtualPageQueryArgsKt.loadVirtualPageById(this.pageIdList));
        Iterator<T> it2 = loadVirtualPageModelList.iterator();
        while (it2.hasNext()) {
            ((VirtualPageModel) it2.next()).setStatus(0);
        }
        List<VirtualPageModel> list = loadVirtualPageModelList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualPageModelList());
        List<VirtualPageModel> list2 = list;
        CollectionKt.safeAddAll(mutableList, list2);
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(mutableList, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$restoreVirtualPage$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((VirtualPageModel) t).getOrderIndex()), Float.valueOf(((VirtualPageModel) t2).getOrderIndex()));
                return compareValues;
            }
        });
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
        List reorderIndexChecked = OrderListUtils.INSTANCE.reorderIndexChecked(mutableList2, new Function1<VirtualPageModel, Float>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$restoreVirtualPage$reorderList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull VirtualPageModel node) {
                Intrinsics.checkNotNullParameter(node, "node");
                return Float.valueOf(node.getOrderIndex());
            }
        }, new Function2<VirtualPageModel, Float, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.page.RestoreRemovedPagesAction$restoreVirtualPage$reorderList$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(VirtualPageModel virtualPageModel, Float f) {
                invoke(virtualPageModel, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull VirtualPageModel node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.setOrderIndex(f);
            }
        });
        CollectionKt.safeAddAll(reorderIndexChecked, list2);
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : reorderIndexChecked) {
            if (hashSet.add(((VirtualPageModel) obj).getUniqueId())) {
                arrayList.add(obj);
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((VirtualPageModel) it3.next()).setRevisionId("");
        }
        Debug.INSTANCE.m32052i(RestoreRemovedPagesAction.class, "restorePages:" + CollectionKt.getSize(list2) + ",reorderPages" + CollectionKt.getSize(arrayList), new Object[0]);
        getEditorBundle().getWorkBundle().getVirtualModelProvider().saveVirtualPageList(arrayList);
        return list;
    }
}
