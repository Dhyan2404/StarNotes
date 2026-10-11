package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B9\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u001c¢\u0006\u0004\b(\u0010)J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00130$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/LoadPageShapesAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "model", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "", C6997f.f39671c, "Ljava/util/Collection;", "pageIdList", "Lkotlin/Function1;", "", C6998g.f39679a, "Lkotlin/jvm/functions/Function1;", "predicate", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "i", "Ljava/util/List;", "shapes", "", "j", "Ljava/util/Set;", "excludeShapeIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadPageShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/LoadPageShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2:73\n766#2:74\n857#2,2:75\n1856#2:77\n1549#2:78\n1620#2,3:79\n766#2:82\n857#2,2:83\n*S KotlinDebug\n*F\n+ 1 LoadPageShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/LoadPageShapesAction\n*L\n43#1:73\n46#1:74\n46#1:75,2\n43#1:77\n62#1:78\n62#1:79,3\n63#1:82\n63#1:83,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadPageShapesAction extends RxBaseAction<List<? extends Shape>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> pageIdList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Function1<Shape, Boolean> predicate;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final CBQueryArgs queryArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Set<String> excludeShapeIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.LoadPageShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10118a<T> implements Consumer {
        public C10118a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadPageShapesAction.this.m40280m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.LoadPageShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10119b<T> implements Consumer {
        public C10119b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadPageShapesAction.this.m40279l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.LoadPageShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10120c<T, R> implements Function {
        public C10120c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPageShapesAction.this.shapes;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LoadPageShapesAction(@NotNull EditorBundle editorBundle, @NotNull Collection<String> pageIdList, @NotNull Function1<? super Shape, Boolean> predicate, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.editorBundle = editorBundle;
        this.pageIdList = pageIdList;
        this.predicate = predicate;
        this.queryArgs = queryArgs;
        this.shapes = new ArrayList();
        this.excludeShapeIds = new LinkedHashSet();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends Shape>> create() {
        Observable<List<? extends Shape>> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).doOnNext(new C10118a()).doOnNext(new C10119b()).map(new C10120c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40279l() {
        int collectionSizeOrDefault;
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getProviderHolder();
        String documentUniqueId = EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getDocumentUniqueId();
        CBQueryArgs cBQueryArgs = this.queryArgs;
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, documentUniqueId)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, this.pageIdList)).andWith(couchUtils.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, this.excludeShapeIds)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(m40281n(providerHolder, (ShapeModel) it2.next()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (this.predicate.invoke((Shape) obj).booleanValue()) {
                arrayList2.add(obj);
            }
        }
        this.shapes.addAll(arrayList2);
    }

    /* renamed from: m */
    public final void m40280m() {
        NotePage notePage;
        Iterator<T> it2 = this.pageIdList.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = this.editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage((String) it2.next());
            if (virtualPage != null && (notePage = this.editorBundle.getWorkBundle().getVirtualPolicy().getNotePage(virtualPage)) != null) {
                List<Shape> shapeList = notePage.getShapeList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : shapeList) {
                    if (this.predicate.invoke((Shape) obj).booleanValue()) {
                        arrayList.add(obj);
                    }
                }
                this.shapes.addAll(arrayList);
                this.excludeShapeIds.addAll(ShapeTypes.INSTANCE.toPageIdSet(arrayList));
                this.excludeShapeIds.addAll(notePage.getRemovedShapeMap().keySet());
            }
        }
    }

    /* renamed from: n */
    public final Shape m40281n(NoteProviderHolder providerHolder, ShapeModel model) {
        Shape shapeFromModel = ShapeConvertUtils.INSTANCE.shapeFromModel(providerHolder, model);
        shapeFromModel.setOriginRect(RectFKt.concatTransform(shapeFromModel.getBoundingRect(), MatrixKt.invertMatrix(shapeFromModel.getShapeMatrix())));
        return shapeFromModel;
    }
}
