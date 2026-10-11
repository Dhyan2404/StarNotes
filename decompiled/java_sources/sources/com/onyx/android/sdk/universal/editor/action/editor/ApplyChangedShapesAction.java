package com.onyx.android.sdk.universal.editor.action.editor;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.AddShapesBackgroundArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.AddShapesBackgroundRequest;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.DeleteShapesRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\f\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002R\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", PrivilegedApp.f6529f, BaiduYunConstant.CREATE, "", "m", C4921e.f26528e, "l", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Ljava/util/List;", "dirtyShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nApplyChangedShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyChangedShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,91:1\n215#2,2:92\n125#2:109\n152#2,3:110\n1#3:94\n1477#4:95\n1502#4,3:96\n1505#4,3:106\n1855#4,2:113\n372#5,7:99\n*S KotlinDebug\n*F\n+ 1 ApplyChangedShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction\n*L\n51#1:92,2\n75#1:109\n75#1:110,3\n74#1:95\n74#1:96,3\n74#1:106,3\n85#1:113,2\n74#1:99,7\n*E\n"})
/* loaded from: classes8.dex */
public final class ApplyChangedShapesAction extends RxBaseAppAction<Object> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ChangedShapeBean changedShapeBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> dirtyShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyChangedShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C8681a<T> implements Consumer {
        public C8681a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ApplyChangedShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ApplyChangedShapesAction.this.m37667m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyChangedShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C8682b<T> implements Consumer {
        public C8682b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ApplyChangedShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ApplyChangedShapesAction.this.m37668n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyChangedShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C8683c<T> implements Consumer {
        public C8683c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ApplyChangedShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ApplyChangedShapesAction.this.m37666l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyChangedShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C8684d<T, R> implements Function {
        public C8684d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ApplyChangedShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ApplyChangedShapesAction.this.m37669o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyChangedShapesAction(@NotNull EditorBundle editorBundle, @NotNull ChangedShapeBean changedShapeBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(changedShapeBean, "changedShapeBean");
        this.changedShapeBean = changedShapeBean;
        this.dirtyShapes = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> build() {
        return super.buildFast();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8681a()).doOnNext(new C8682b()).doOnNext(new C8683c()).flatMap(new C8684d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final void m37666l() {
        List<Shape> changedShapeList = this.changedShapeBean.getChangedShapeList();
        if (changedShapeList.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        DeleteShapesRequest deleteShapesRequest = new DeleteShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), changedShapeList, false);
        deleteShapesRequest.setPostShapeChangedEvent(false);
        arrayList.add(deleteShapesRequest);
        List<Shape> addShapeList = this.changedShapeBean.getAddShapeList();
        this.changedShapeBean.applyTransformShapeMatrix(addShapeList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : addShapeList) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            AddShapesBackgroundArgs addShapesBackgroundArgs = new AddShapesBackgroundArgs((String) entry.getKey(), new BoxInfo(), (List) entry.getValue(), false, 8, null);
            addShapesBackgroundArgs.setAddToCmdStack(false);
            addShapesBackgroundArgs.setSetZOrder(false);
            AddShapesBackgroundRequest addShapesBackgroundRequest = new AddShapesBackgroundRequest(EditorBundleKt.noteBundle(getEditorBundle()), addShapesBackgroundArgs);
            addShapesBackgroundRequest.setPostShapeChangedEvent(false);
            arrayList2.add(addShapesBackgroundRequest);
        }
        arrayList.addAll(arrayList2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((BaseRxNoteRequest) it2.next()).execute2();
        }
    }

    /* renamed from: m */
    public final void m37667m() {
        NoteBundle noteBundle = EditorBundleKt.noteBundle(getEditorBundle());
        for (Map.Entry<String, List<Shape>> entry : ShapeTypes.INSTANCE.toPageShapeMap(this.changedShapeBean.getChangedShapeList()).entrySet()) {
            NotePage cacheNotePage = NoteDocNotePage.INSTANCE.getCacheNotePage(noteBundle.getNoteDoc(), entry.getKey());
            if (cacheNotePage != null) {
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                CollectionKt.safeAddAll(this.dirtyShapes, shapeTypes.filterByShapeIds(cacheNotePage.getShapeList(), shapeTypes.toShapeIdSet(entry.getValue())));
            }
        }
    }

    /* renamed from: n */
    public final void m37668n() {
        this.changedShapeBean = this.changedShapeBean.deepFullCopy();
    }

    /* renamed from: o */
    public final Observable<?> m37669o() {
        CollectionKt.safeAddAll(this.dirtyShapes, this.changedShapeBean.getChangedShapeList());
        return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay((RxBaseAppAction<?>) this, (List<? extends Shape>) this.dirtyShapes, false);
    }
}
