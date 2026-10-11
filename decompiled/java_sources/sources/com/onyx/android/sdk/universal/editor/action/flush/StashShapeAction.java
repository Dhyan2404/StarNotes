package com.onyx.android.sdk.universal.editor.action.flush;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001eB\u001d\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J0\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000b0\b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "Lkotlin/Pair;", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6997f.f39671c, "Ljava/util/List;", "getList", "()Ljava/util/List;", "list", "", C6998g.f39679a, "getStashZipPaths", "stashZipPaths", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStashShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1477#2:52\n1502#2,3:53\n1505#2,3:63\n1855#2,2:70\n1603#2,9:72\n1855#2:81\n1856#2:83\n1612#2:84\n372#3,7:56\n125#4:66\n152#4,3:67\n1#5:82\n*S KotlinDebug\n*F\n+ 1 StashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction\n*L\n33#1:52\n33#1:53,3\n33#1:63,3\n36#1:70,2\n46#1:72,9\n46#1:81\n46#1:83\n46#1:84\n33#1:56,7\n34#1:66\n34#1:67,3\n46#1:82\n*E\n"})
/* loaded from: classes8.dex */
public final class StashShapeAction extends RxBaseAction<StashShapeAction> {

    /* renamed from: h */
    public static final int f49050h = 2000;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> list;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> stashZipPaths;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.StashShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9103a<T, R> implements Function {
        public C9103a() {
        }

        /* renamed from: a */
        public final void m38338a(@NotNull StashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StashShapeAction.this.m38337m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38338a((StashShapeAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.StashShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9104b<T, R> implements Function {
        public C9104b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StashShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StashShapeAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StashShapeAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(list, "list");
        this.editorBundle = editorBundle;
        this.list = list;
        this.stashZipPaths = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StashShapeAction> create() {
        Observable<StashShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).map(new C9103a()).map(new C9104b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<Shape> getList() {
        return this.list;
    }

    @NotNull
    public final List<String> getStashZipPaths() {
        return this.stashZipPaths;
    }

    /* renamed from: l */
    public final List<Pair<String, String>> m38336l(String pageId, List<? extends Shape> shapeList) {
        List<Pair<String, String>> emptyList;
        if (shapeList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List split = CollectionKt.split(shapeList, 2000);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = split.iterator();
        while (it2.hasNext()) {
            Pair<String, String> saveShapePB = StashNoteShapePBDocument.INSTANCE.saveShapePB(EditorBundleKt.docId(this.editorBundle), pageId, ShapeConvertUtils.INSTANCE.toStashShapeInfoList((List) it2.next()));
            if (saveShapePB != null) {
                arrayList.add(saveShapePB);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public final void m38337m() {
        List<Pair> flatten;
        if (this.list.isEmpty()) {
            return;
        }
        List<Shape> list = this.list;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(m38336l((String) entry.getKey(), (List) entry.getValue()));
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        for (Pair pair : flatten) {
            new File((String) pair.getFirst()).renameTo(new File((String) pair.getSecond()));
            this.stashZipPaths.add(pair.getSecond());
        }
    }
}
