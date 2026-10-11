package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction;
import com.onyx.android.sdk.universal.editor.action.selection.SelectShapesAction;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.SelectionTrackRender;
import com.onyx.android.sdk.universal.editor.events.note.NoShapeSelectedEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\b\u0010\r\u001a\u00020\tH\u0016J\"\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\"\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0016\u0010\u0012\u001a\u00020\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0013H\u0002J\u0016\u0010\u0016\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\"\u001a\u0004\b#\u0010$¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "hitTestVisibleBoxTouchData", "", "onTouchDown", "onTouchMove", "onTouchUp", "dispose", "dataList", "s", "r", "list", "p", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "createRenderContext", GoogleApiAvailabilityLight.f29016b, "q", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "l", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "m", "Ljava/util/List;", "selectedShapes", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "lassoOption", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectionHandlerAction extends BaseShapeHandlerAction<List<? extends Shape>> {

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public RenderContext renderContext;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> selectedShapes;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy lassoOption;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9272a<T> implements Predicate {

        /* renamed from: e */
        public static final C9272a<T> f49354e = new C9272a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9273b<T, R> implements Function {
        public C9273b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TouchData>> apply(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionHandlerAction.this.m38620s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9274c<T> implements Predicate {
        public C9274c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionHandlerAction.this.isTouchDone(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9275d<T> implements Consumer {
        public C9275d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RenderManager.removeRenderer$default(EditorBundleKt.renderManager(SelectionHandlerAction.this.getEditorBundle()), RenderManager.RENDER_KEY_SELECTION, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9276e<T, R> implements Function {
        public C9276e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<TouchData>> apply(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionHandlerAction.this.m38619r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9277f<T, R> implements Function {
        public C9277f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull List<TouchData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionHandlerAction.this.selectedShapes;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9278g<T> implements Consumer {
        public C9278g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectionHandlerAction.this.virtualBoxInfo = it2.ensureBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9279h<T> implements Consumer {
        public C9279h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SelectionHandlerAction.this.m38617p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9280i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<TouchData> f49362e;

        public C9280i(List<TouchData> list) {
            this.f49362e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<TouchData> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49362e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        List<? extends Shape> emptyList;
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.selectedShapes = emptyList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LassoPropertyOption>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$lassoOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LassoPropertyOption invoke() {
                return new LassoPropertyOption();
            }
        });
        this.lassoOption = lazy;
    }

    /* renamed from: m */
    public static final void m38614m(SelectionHandlerAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m38618q(it2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable flatMap = RxjavaKt.touchBuffer$default(subscribeTouchData(), 0L, 0, touchDataScheduler(), 3, null).filter(C9272a.f49354e).flatMap(new C9273b()).filter(new C9274c()).doOnNext(new C9275d()).flatMap(new C9276e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<List<Shape>> map = RxjavaKt.doOnNextIf(flatMap, new Function1<List<? extends TouchData>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$create$6
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<TouchData> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNullOrEmpty(SelectionHandlerAction.this.selectedShapes));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends TouchData> list) {
                return invoke2((List<TouchData>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.igm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SelectionHandlerAction.m38614m(SelectionHandlerAction.this, (List) obj);
            }
        }).map(new C9277f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final RenderContext createRenderContext() {
        RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
        this.renderContext = renderContext;
        Intrinsics.checkNotNull(renderContext);
        return renderContext;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_SELECTION, false, 2, null);
        super.dispose();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    @NotNull
    public Observable<TouchData> hitTestVisibleBoxTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.getAction() != 0) {
            return super.hitTestVisibleBoxTouchData(touchData, this.virtualBoxInfo);
        }
        Observable<TouchData> doOnNext = super.hitTestVisibleBoxTouchData(touchData).doOnNext(new C9278g());
        Intrinsics.checkNotNull(doOnNext);
        return doOnNext;
    }

    /* renamed from: n */
    public final RenderContext m38615n() {
        if (this.renderContext == null) {
            this.renderContext = createRenderContext();
        }
        RenderContext renderContext = this.renderContext;
        Intrinsics.checkNotNull(renderContext);
        return renderContext;
    }

    /* renamed from: o */
    public final LassoPropertyOption m38616o() {
        return (LassoPropertyOption) this.lassoOption.getValue();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchDown(@NotNull TouchData touchData) {
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchDown(touchData);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.selectedShapes = emptyList;
        this.virtualBoxInfo = touchData.ensureBoxInfo();
        final RenderContext createRenderContext = createRenderContext();
        createRenderContext.getSelectionArgs().setSelectionType(m38616o().getLassoType());
        SelectionTrackRender selectionTrackRender = SelectionTrackRender.INSTANCE;
        selectionTrackRender.updateSelectionTrackPaintColor(0);
        final Paint selectionTrackPaint = selectionTrackRender.getSelectionTrackPaint();
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(getEditorBundle()), RenderManager.RENDER_KEY_SELECTION, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction$onTouchDown$1
            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                canvas.drawPath(RenderContext.this.getSelectionArgs().getSelectionPath(), selectionTrackPaint);
            }
        }, false, 4, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchMove(touchData);
        this.virtualBoxInfo = touchData.ensureBoxInfo();
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchUp(touchData);
        this.virtualBoxInfo = touchData.ensureBoxInfo();
    }

    /* renamed from: p */
    public final void m38617p(List<? extends Shape> list) {
        RenderContext renderContext;
        this.selectedShapes = list;
        if (CollectionKt.isNullOrEmpty(list) || (renderContext = this.renderContext) == null) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new StartTransformEvent(new ShapeTransformBean().setSelectionTrackPoints(new TouchPointList(renderContext.getSelectionArgs().getSelectionPoints())).setTransformShapes(new ArrayList(this.selectedShapes)).setSelectionType(renderContext.getSelectionArgs().getSelectionType()).setSelectAll(false)));
    }

    /* renamed from: q */
    public final void m38618q(List<TouchData> dataList) {
        if (isSingleTapUp(dataList)) {
            return;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new NoShapeSelectedEvent());
    }

    /* renamed from: r */
    public final Observable<List<TouchData>> m38619r(List<TouchData> touchData) {
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Observable<List<TouchData>> just = Observable.just(touchData);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new SelectShapesAction(getEditorBundle(), m38615n()).setVirtualBoxInfo(boxInfo).build().doOnNext(new C9279h()).map(new C9280i(touchData));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<List<TouchData>> m38620s(List<TouchData> dataList) {
        TouchPointList touchPointList = toTouchPointList(dataList);
        RenderContext m38615n = m38615n();
        m38615n.addSelectionTrackPoints(touchPointList);
        m38615n.addSelectionPagePoints(dataList);
        EditorBundleKt.renderManager(getEditorBundle()).invalidate();
        Observable<List<TouchData>> just = Observable.just(dataList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
