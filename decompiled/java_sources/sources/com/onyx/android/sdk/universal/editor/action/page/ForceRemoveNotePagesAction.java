package com.onyx.android.sdk.universal.editor.action.page;

import com.couchbase.lite.SelectResult;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J \u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0018\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0006H\u0002R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemoveNotePagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "pageIdList", "", "l", EditorConstants.ARGS_DOC_ID, CouchFieldKey.KEY_TOC_PAGE_ID, "m", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nForceRemoveNotePagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRemoveNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveNotePagesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n2634#2:93\n1855#2,2:95\n1549#2:97\n1620#2,3:98\n1549#2:101\n1620#2,3:102\n1855#2,2:106\n1#3:94\n1#3:105\n*S KotlinDebug\n*F\n+ 1 ForceRemoveNotePagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ForceRemoveNotePagesAction\n*L\n44#1:93\n54#1:95,2\n67#1:97\n67#1:98,3\n75#1:101\n75#1:102,3\n81#1:106,2\n44#1:94\n*E\n"})
/* loaded from: classes8.dex */
public final class ForceRemoveNotePagesAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemoveNotePagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9661a<T> implements Consumer {
        public C9661a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ForceRemoveNotePagesAction.this.m39446l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemoveNotePagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9662b<T, R> implements Function {

        /* renamed from: e */
        public static final C9662b<T, R> f50131e = new C9662b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForceRemoveNotePagesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this.pageIdList).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9661a()).map(C9662b.f50131e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m39446l(List<String> pageIdList) {
        String docId = EditorBundleKt.docId(getEditorBundle());
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
        for (String str : pageIdList) {
            m39447m(docId, str);
            m39449o(providerHolder, docId, str);
        }
        m39448n(providerHolder, docId);
    }

    /* renamed from: m */
    public final void m39447m(String docId, String pageId) {
        Paths.INSTANCE.deleteDirectory(PointPaths.INSTANCE.appPagePointDir(docId, pageId));
        for (ShapeDocumentArgs shapeDocumentArgs : ShapeDocumentUtils.INSTANCE.docPageShapeArgsList(docId, pageId)) {
            shapeDocumentArgs.setDocumentId(docId);
            FileUtils.INSTANCE.deleteFile(new File(ShapeDocumentUtils.INSTANCE.shapeZipFilePath(shapeDocumentArgs)));
        }
    }

    /* renamed from: n */
    public final void m39448n(NoteProviderHolder providerHolder, String docId) {
        providerHolder.getNoteShapeProvider().deleteDocPageShapes(docId, this.pageIdList);
    }

    /* renamed from: o */
    public final void m39449o(NoteProviderHolder providerHolder, String docId, String pageId) {
        List listOf;
        int collectionSizeOrDefault;
        Set mutableSet;
        int collectionSizeOrDefault2;
        Set set;
        List<String> list;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        CBQueryArgs loadPageShapeListWithResourceQuery = ShapeQueryArgsExtKt.loadPageShapeListWithResourceQuery(docId, listOf);
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_RESOURCE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(loadPageShapeListWithResourceQuery.setVarargSelectResults(property));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            String resourceId = ((ShapeModel) it2.next()).getResourceId();
            if (resourceId == null) {
                resourceId = "";
            }
            arrayList.add(resourceId);
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
        CBQueryArgs andWith = ShapeQueryArgsExtKt.loadShapeListQuery$default(docId, 0, 0, (Long) null, 14, (Object) null).andWith(CouchUtils.INSTANCE.notEqualExpression(CouchFieldKey.KEY_PAGE_ID, pageId));
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_RESOURCE_ID);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        List<ShapeModel> loadShapeList2 = providerHolder.getNoteShapeProvider().loadShapeList(andWith.setVarargSelectResults(property2));
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = loadShapeList2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((ShapeModel) it3.next()).getResourceId());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        TypeIntrinsics.asMutableCollection(mutableSet).removeAll(set);
        ResourceProvider noteResourceProvider = providerHolder.getNoteResourceProvider();
        list = CollectionsKt___CollectionsKt.toList(mutableSet);
        for (ResourceModel resourceModel : noteResourceProvider.loadResourceList(list)) {
            FileUtils.INSTANCE.deleteFile(resourceModel.getLocalPath());
            providerHolder.getNoteResourceProvider().removeResource(resourceModel.getUniqueId());
        }
    }
}
