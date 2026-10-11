package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.PointUtils;
import com.onyx.android.sdk.note.request.selection.SelectShapesRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.data.LassoElementConst;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\nH\u0014J2\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\n2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u000fH\u0002J\"\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R!\u0010'\u001a\b\u0012\u0004\u0012\u00020\"0\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "selectAll", "setSelectAllShapes", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "setVirtualBoxInfo", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "boxInfo", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "Lio/reactivex/rxjava3/functions/Predicate;", "selectedPredicate", "q", "shapeList", "r", "shape", "m", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "j", Constants.HASIDCALL_INDEX_SIG, "selectAllShapes", "", C4921e.f26537n, "Lkotlin/Lazy;", "p", "()Ljava/util/List;", "lassoElements", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n766#2:129\n857#2,2:130\n1655#2,8:133\n1#3:132\n*S KotlinDebug\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction\n*L\n123#1:129\n123#1:130,2\n125#1:133,8\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectShapesAction extends RxBaseAppAction<List<? extends Shape>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean selectAllShapes;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy lassoElements;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9949a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Predicate<Shape> f50668f;

        public C9949a(Predicate<Shape> predicate) {
            this.f50668f = predicate;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectShapesAction selectShapesAction = SelectShapesAction.this;
            return selectShapesAction.m39999q(it2, selectShapesAction.getRenderContext().getSelectionArgs().getSelectionPoints(), this.f50668f);
        }
    }

    @SourceDebugExtension({"SMAP\nSelectShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$create$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1855#2,2:129\n*S KotlinDebug\n*F\n+ 1 SelectShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$create$2\n*L\n70#1:129,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9950b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ HashSet<String> f50669e;

        public C9950b(HashSet<String> hashSet) {
            this.f50669e = hashSet;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HashSet<String> hashSet = this.f50669e;
            Iterator<T> it3 = it2.iterator();
            while (it3.hasNext()) {
                hashSet.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it3.next()).getShapeUniqueId());
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9951c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50670e;

        public C9951c(List<Shape> list) {
            this.f50670e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f50670e.addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9952d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f50672f;

        public C9952d(List<Shape> list) {
            this.f50672f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectShapesAction.this.m40000r(this.f50672f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9953e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TouchPointList f50674f;

        /* renamed from: g */
        public final /* synthetic */ BoxInfo f50675g;

        /* renamed from: h */
        public final /* synthetic */ Predicate<Shape> f50676h;

        public C9953e(TouchPointList touchPointList, BoxInfo boxInfo, Predicate<Shape> predicate) {
            this.f50674f = touchPointList;
            this.f50675g = boxInfo;
            this.f50676h = predicate;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectShapesRequest apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectShapesRequest selectionType = new SelectShapesRequest(EditorBundleKt.noteBundle(SelectShapesAction.this.getEditorBundle()), SelectShapesAction.this.getRenderContext(), it2, SelectShapesAction.this.getRenderContext().getSelectionArgs().getSelectionPointsByType(this.f50674f).applyMatrix(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(this.f50675g))).setVirtualBoxInfo(this.f50675g).setSelectAllShapes(SelectShapesAction.this.selectAllShapes).setSelectionType(SelectShapesAction.this.getRenderContext().getSelectionArgs().getSelectionType());
            final SelectShapesAction selectShapesAction = SelectShapesAction.this;
            return selectionType.setShapePredicate(new Predicate() { // from class: com.sunia.HTREnginev2.zfm
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean m39996m;
                    m39996m = SelectShapesAction.this.m39996m((Shape) obj);
                    return m39996m;
                }
            }).setSelectedPredicate(this.f50676h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C9954f<T, R> implements Function {
        public C9954f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SelectShapesRequest> apply(@NotNull SelectShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RxBaseAppActionKt.submitRequestToNote(SelectShapesAction.this, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$g */
    /* loaded from: classes8.dex */
    public static final class C9955g<T, R> implements Function {

        /* renamed from: e */
        public static final C9955g<T, R> f50678e = new C9955g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull SelectShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CollectionKt.ensureList(it2.getSelectedShapes());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$h */
    /* loaded from: classes8.dex */
    public static final class C9956h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50679e;

        public C9956h(List<Shape> list) {
            this.f50679e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f50679e.addAll(GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$i */
    /* loaded from: classes8.dex */
    public static final class C9957i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50680e;

        public C9957i(List<Shape> list) {
            this.f50680e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50680e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectShapesAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        this.renderContext = renderContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<Integer>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$lassoElements$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ArrayList<Integer> invoke() {
                return (ArrayList) new LassoPropertyOption().getLassoElementsOption().get();
            }
        });
        this.lassoElements = lazy;
    }

    /* renamed from: n */
    public static final boolean m39995n(HashSet shapeSet, Shape shape) {
        Intrinsics.checkNotNullParameter(shapeSet, "$shapeSet");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return shapeSet.contains(ShapeTypes.INSTANCE.getTargetShape(shape).getShapeUniqueId());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        ArrayList arrayList = new ArrayList();
        List<BoxInfo> m39997o = m39997o();
        if (CollectionKt.isNullOrEmpty(m39997o)) {
            Observable<List<Shape>> just = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final HashSet hashSet = new HashSet();
        Observable doOnNext = Observable.fromIterable(m39997o).concatMap(new C9949a(new Predicate() { // from class: com.sunia.HTREnginev2.yfm
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object obj) {
                boolean m39995n;
                m39995n = SelectShapesAction.m39995n(hashSet, (Shape) obj);
                return m39995n;
            }
        })).doOnNext(new C9950b(hashSet)).doOnNext(new C9951c(arrayList));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<List<Shape>> flatMap = RxjavaKt.takeLastOne(doOnNext).flatMap(new C9952d(arrayList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    /* renamed from: m */
    public final boolean m39996m(Shape shape) {
        return LassoElementConst.INSTANCE.canSelectByLasso(m39998p(), ShapeTypes.INSTANCE.getTargetType(shape));
    }

    /* renamed from: o */
    public final List<BoxInfo> m39997o() {
        List mutableList;
        Comparator compareBy;
        List<BoxInfo> sortedWith;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) EditorBundleKt.findIntersectsVisibleBoxList(getEditorBundle(), this.renderContext.getSelectionArgs().getSelectionPagePointsMap().keySet()));
        RectF boundingRect = this.renderContext.getSelectionArgs().isRectSelection() ? PointUtils.INSTANCE.toRectTouchPointList(this.renderContext.getSelectionArgs().getSelectionPoints()).getBoundingRect() : PathKt.computeBounds(this.renderContext.getSelectionArgs().getSelectionPath(), true);
        List<BoxInfo> visibleBoxList = EditorBundleKt.visibleBoxList(getEditorBundle());
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (RectF.intersects(boundingRect, ((BoxInfo) obj).getVisibleRect())) {
                arrayList.add(obj);
            }
        }
        mutableList.addAll(arrayList);
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : mutableList) {
            if (hashSet.add(((BoxInfo) obj2).getId())) {
                arrayList2.add(obj2);
            }
        }
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(new Function1<BoxInfo, Comparable<?>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$getHitTestVisibleBoxList$4
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Comparable<?> invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getVisibleRect().top);
            }
        }, new Function1<BoxInfo, Comparable<?>>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction$getHitTestVisibleBoxList$5
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Comparable<?> invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getVisibleRect().left);
            }
        });
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, compareBy);
        return sortedWith;
    }

    /* renamed from: p */
    public final List<Integer> m39998p() {
        return (List) this.lassoElements.getValue();
    }

    /* renamed from: q */
    public final Observable<List<Shape>> m39999q(BoxInfo boxInfo, TouchPointList touchPointList, Predicate<Shape> selectedPredicate) {
        Observable<List<Shape>> map = new EnsureNotePageAction(getEditorBundle(), boxInfo).build().map(new C9953e(touchPointList, boxInfo, selectedPredicate)).flatMap(new C9954f()).map(C9955g.f50678e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<List<Shape>> m40000r(List<? extends Shape> shapeList) {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeList);
        Observable map = new GetReferenceShapeAction(getEditorBundle(), shapeList).build().doOnNext(new C9956h(mutableList)).map(new C9957i(mutableList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final SelectShapesAction setSelectAllShapes(boolean selectAll) {
        this.selectAllShapes = selectAll;
        return this;
    }

    @NotNull
    public final SelectShapesAction setVirtualBoxInfo(@NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
        return this;
    }
}
