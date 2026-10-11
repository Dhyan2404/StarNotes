package com.onyx.android.sdk.universal.editor.action.layer;

import com.couchbase.lite.SelectResult;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\t\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/FindShapePageIdsByLayerAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", C6997f.f39671c, "Ljava/util/List;", "layerIds", "", C6998g.f39679a, "shapePageIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFindShapePageIdsByLayerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindShapePageIdsByLayerAction.kt\ncom/onyx/android/sdk/universal/editor/action/layer/FindShapePageIdsByLayerAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2:57\n766#2:58\n857#2,2:59\n1549#2:61\n1620#2,3:62\n1856#2:65\n1549#2:66\n1620#2,3:67\n*S KotlinDebug\n*F\n+ 1 FindShapePageIdsByLayerAction.kt\ncom/onyx/android/sdk/universal/editor/action/layer/FindShapePageIdsByLayerAction\n*L\n33#1:57\n35#1:58\n35#1:59,2\n36#1:61\n36#1:62,3\n33#1:65\n44#1:66\n44#1:67,3\n*E\n"})
/* loaded from: classes8.dex */
public final class FindShapePageIdsByLayerAction extends RxBaseAction<List<? extends String>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> layerIds;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapePageIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.FindShapePageIdsByLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9590a<T> implements Consumer {
        public C9590a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FindShapePageIdsByLayerAction.this.m39331m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.FindShapePageIdsByLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9591b<T> implements Consumer {
        public C9591b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FindShapePageIdsByLayerAction.this.m39330l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.FindShapePageIdsByLayerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9592c<T, R> implements Function {
        public C9592c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull Unit it2) {
            List<String> distinct;
            Intrinsics.checkNotNullParameter(it2, "it");
            distinct = CollectionsKt___CollectionsKt.distinct(FindShapePageIdsByLayerAction.this.shapePageIds);
            return distinct;
        }
    }

    public FindShapePageIdsByLayerAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> layerIds) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(layerIds, "layerIds");
        this.editorBundle = editorBundle;
        this.layerIds = layerIds;
        this.shapePageIds = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends String>> create() {
        Observable<List<? extends String>> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).doOnNext(new C9590a()).doOnNext(new C9591b()).map(new C9592c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m39330l() {
        int collectionSizeOrDefault;
        NoteDocument noteDoc = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc();
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        NoteShapeProvider noteShapeProvider = noteDoc.getProviderHolder().getNoteShapeProvider();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, EditorBundleKt.docId(this.editorBundle))).andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_ZORDER, this.layerIds)).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, arrayList));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_PAGE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        this.shapePageIds.addAll(noteShapeProvider.loadShapePageIdList(andWith.setVarargSelectResults(property).setDistinct(true)));
    }

    /* renamed from: m */
    public final void m39331m() {
        int collectionSizeOrDefault;
        List distinct;
        Iterator<T> it2 = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getLoadedNotePages().iterator();
        while (it2.hasNext()) {
            List<Shape> shapeList = ((NotePage) it2.next()).getShapeList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : shapeList) {
                if (this.layerIds.contains(Integer.valueOf(((Shape) obj).getLayerId()))) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((Shape) it3.next()).getPageUniqueId());
            }
            distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
            this.shapePageIds.addAll(distinct);
        }
    }
}
