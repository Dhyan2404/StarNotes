package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0014\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0002J\u0016\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\u0011\u001a\u00020\fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", NotificationCompat.WearableExtender.f5053s, GoogleApiAvailabilityLight.f29016b, "virtualPage", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "", "q", "Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;", "p", "getVirtualPageList", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "marginArgs", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Ljava/util/List;", "boxList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateCrossPageShapesByMarginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,111:1\n1603#2,9:112\n1855#2:121\n1856#2:123\n1612#2:124\n1855#2,2:125\n1#3:122\n215#4,2:127\n*S KotlinDebug\n*F\n+ 1 UpdateCrossPageShapesByMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction\n*L\n68#1:112,9\n68#1:121\n68#1:123\n68#1:124\n72#1:125,2\n68#1:122\n81#1:127,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateCrossPageShapesByMarginAction extends RxBaseAppAction<UpdateCrossPageShapesByMarginAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PageMarginArgs marginArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<BoxInfo> boxList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$a */
    /* loaded from: classes8.dex */
    public static final class C10149a<T, R> implements Function {
        public C10149a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull VirtualPage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesByMarginAction.this.m40332m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$b */
    /* loaded from: classes8.dex */
    public static final class C10150b<T, R> implements Function {
        public C10150b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateCrossPageShapesByMarginAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesByMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$c */
    /* loaded from: classes8.dex */
    public static final class C10151c<T> implements Consumer {
        public C10151c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateCrossPageShapesByMarginAction.this.m40336q(it2.getReferenceShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$d */
    /* loaded from: classes8.dex */
    public static final class C10152d<T> implements Consumer {
        public C10152d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateCrossPageShapesByMarginAction.this.m40336q(it2.getShapeList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$e */
    /* loaded from: classes8.dex */
    public static final class C10153e<T> implements Consumer {
        public C10153e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateCrossPageShapesByMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateCrossPageShapesByMarginAction.this.m40334o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$f */
    /* loaded from: classes8.dex */
    public static final class C10154f<T, R> implements Function {
        public C10154f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull UpdateCrossPageShapesByMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesByMarginAction.this.getVirtualPageList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$g */
    /* loaded from: classes8.dex */
    public static final class C10155g<T, R> implements Function {
        public C10155g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesByMarginAction.this.m40333n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$h */
    /* loaded from: classes8.dex */
    public static final class C10156h<T, R> implements Function {
        public C10156h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateCrossPageShapesByMarginAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateCrossPageShapesByMarginAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$i */
    /* loaded from: classes8.dex */
    public static final class C10157i<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ VirtualPage f51021f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f51022g;

        public C10157i(VirtualPage virtualPage, List<Shape> list) {
            this.f51021f = virtualPage;
            this.f51022g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateCrossPageShapesByMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotePage notePage = UpdateCrossPageShapesByMarginAction.this.getEditorBundle().getWorkBundle().getVirtualPolicy().getNotePage(this.f51021f);
            CollectionKt.safeAddAll(this.f51022g, notePage != null ? notePage.getShapeList() : null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$j */
    /* loaded from: classes8.dex */
    public static final class C10158j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f51024f;

        public C10158j(List<Shape> list) {
            this.f51024f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GetReferenceShapeAction> apply(@NotNull UpdateCrossPageShapesByMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GetReferenceShapeAction(UpdateCrossPageShapesByMarginAction.this.getEditorBundle(), this.f51024f).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateCrossPageShapesByMarginAction(@NotNull EditorBundle editorBundle, @NotNull PageMarginArgs marginArgs) {
        super(editorBundle);
        List<BoxInfo> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(marginArgs, "marginArgs");
        this.marginArgs = marginArgs;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.boxList = emptyList;
    }

    /* renamed from: r */
    public static final Matrix m40331r(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Matrix) tmp0.invoke(obj);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateCrossPageShapesByMarginAction> create() {
        Observable<UpdateCrossPageShapesByMarginAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10153e()).map(new C10154f()).flatMap(new C10155g()).map(new C10156h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final List<VirtualPage> getVirtualPageList() {
        ArrayList arrayList = new ArrayList();
        if (this.marginArgs.getApplyAll()) {
            CollectionKt.safeAddAll(arrayList, getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageList());
        } else {
            CollectionKt.safeAdd(arrayList, getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.marginArgs.getPageId()));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final Observable<?> m40332m(VirtualPage virtualPage) {
        Observable<GetReferenceShapeAction> doOnNext = m40335p(virtualPage).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10151c()).doOnNext(new C10152d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final Observable<?> m40333n(List<VirtualPage> pages) {
        if (CollectionKt.isNullOrEmpty(pages)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(pages).concatMap(new C10149a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<?> map = RxjavaKt.takeLastOne(concatMap).map(new C10150b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final void m40334o() {
        this.boxList = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).copyBoxList();
    }

    /* renamed from: p */
    public final Observable<GetReferenceShapeAction> m40335p(VirtualPage virtualPage) {
        ArrayList arrayList = new ArrayList();
        Observable<GetReferenceShapeAction> flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10157i(virtualPage, arrayList)).flatMap(new C10158j(arrayList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: q */
    public final void m40336q(List<? extends Shape> shapes) {
        String pageId;
        final BoxInfo boxInfo;
        final BoxInfo boxInfo2;
        List<Shape> filterReferenceShapes = ShapeTypes.INSTANCE.filterReferenceShapes(shapes);
        ArrayList<ReferenceShape> arrayList = new ArrayList();
        for (Shape shape : filterReferenceShapes) {
            ReferenceShape referenceShape = shape instanceof ReferenceShape ? (ReferenceShape) shape : null;
            if (referenceShape != null) {
                arrayList.add(referenceShape);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Map map = CollectionKt.toMap(this.boxList, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$boxMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getId();
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ReferenceShape referenceShape2 : arrayList) {
            ShapeReferenceBean shapeReferenceBean = referenceShape2.getShapeReferenceBean();
            if (shapeReferenceBean != null && (pageId = shapeReferenceBean.getPageId()) != null && (boxInfo = (BoxInfo) map.get(pageId)) != null && (boxInfo2 = (BoxInfo) map.get(referenceShape2.getPageUniqueId())) != null) {
                String str = boxInfo.getId() + boxInfo2.getId();
                final Function1<String, Matrix> function1 = new Function1<String, Matrix>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.UpdateCrossPageShapesByMarginAction$updateReferenceShapeMatrix$1$matrix$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Matrix invoke(@NotNull String it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return BoxInfo.INSTANCE.getCrossPageMatrix(BoxInfo.this, boxInfo2);
                    }
                };
                Object computeIfAbsent = linkedHashMap.computeIfAbsent(str, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.cxn
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        Matrix m40331r;
                        m40331r = UpdateCrossPageShapesByMarginAction.m40331r(Function1.this, obj);
                        return m40331r;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
                referenceShape2.updateReferenceMatrix((Matrix) computeIfAbsent);
                arrayList2.add(referenceShape2);
            }
        }
        for (Map.Entry<String, List<Shape>> entry : ShapeTypes.INSTANCE.toPageShapeMap(arrayList2).entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), entry.getKey());
            if (notePage != null) {
                NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, entry.getValue(), 0, 2, null);
            }
        }
    }
}
