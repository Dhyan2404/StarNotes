package com.onyx.android.sdk.universal.editor.action.handler;

import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.textinput.StartEditTextShapeAction;
import com.onyx.android.sdk.universal.editor.events.note.TransformChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.helper.SelectionManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u00103\u001a\u000200¢\u0006\u0004\bK\u0010LJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006H\u0002J\u0014\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\bH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001e\u001a\u00020\bH\u0002J\u0010\u0010 \u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u000e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0014J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010#\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010$\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0018\u0010%\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0011H\u0016J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0011H\u0016J\u000e\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020(J\u000e\u0010+\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u0011J$\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190-0\u00042\u0006\u0010\u001c\u001a\u00020\u00112\b\b\u0002\u0010,\u001a\u00020\u0006J\u0006\u0010/\u001a\u00020\u0006R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u00104R$\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010@\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010F\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "Lio/reactivex/rxjava3/core/Observable;", "B", "", C4921e.f26528e, "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "invalidate", "w", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", "z", "y", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "q", "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "p", "m", "t", "A", "r", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "s", "virtualBoxInfo", "l", "u", "transforming", "v", BaiduYunConstant.CREATE, "onTouchDown", "onTouchMove", "onTouchUp", "onTouchContentOutside", "boxInfo", "hitNoteInside", "Landroid/graphics/RectF;", "rectF", "updateSelectionVisibleRect", "quitTransform", "checkAccidentallyTranslate", "", "quitTransformObservable", "isUndefinedTransformAction", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "selectionManager", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "getShapeTransformBean", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "setShapeTransformBean", "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "shapeTransformBean", Constants.HASIDCALL_INDEX_SIG, "getTransformStarted", Constants.BOOLEAN_VALUE_SIG, "setTransformStarted", "(Z)V", "transformStarted", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TransformHandlerAction extends BaseShapeHandlerAction<TouchData> {

    /* renamed from: k */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public SelectionManager selectionManager;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualBoxInfo;

    /* renamed from: n */
    @NotNull
    public ShapeTransformBean shapeTransformBean;

    /* renamed from: o */
    public boolean transformStarted;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9334a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Shape f49490f;

        public C9334a(Shape shape) {
            this.f49490f = shape;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends StartEditTextShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StartEditTextShapeAction(TransformHandlerAction.this.getEditorBundle(), this.f49490f, false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9335b<T> implements Predicate {
        public C9335b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !TransformHandlerAction.this.m38763m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9336c<T, R> implements Function {
        public C9336c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends TouchData> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandlerAction.this.m38760B(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9337d<T> implements Predicate {

        /* renamed from: e */
        public static final C9337d<T> f49493e = new C9337d<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isTouchUp();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C9338e<T, R> implements Function {
        public C9338e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends TouchData> apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandlerAction.this.m38759A(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C9339f<T> implements Consumer {
        public C9339f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandlerAction.this.m38771u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C9340g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f49496e;

        /* renamed from: f */
        public final /* synthetic */ RenderContext f49497f;

        /* renamed from: g */
        public final /* synthetic */ BoxInfo f49498g;

        /* renamed from: h */
        public final /* synthetic */ ShapeTransformBean f49499h;

        public C9340g(EditorBundle editorBundle, RenderContext renderContext, BoxInfo boxInfo, ShapeTransformBean shapeTransformBean) {
            this.f49496e = editorBundle;
            this.f49497f = renderContext;
            this.f49498g = boxInfo;
            this.f49499h = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends QuitTransformAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new QuitTransformAction(this.f49496e, this.f49497f, this.f49498g, this.f49499h).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C9341h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeTransformBean f49500e;

        public C9341h(ShapeTransformBean shapeTransformBean) {
            this.f49500e = shapeTransformBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49500e.getTransformShapes().clear();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C9342i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f49501e;

        public C9342i(EditorBundle editorBundle) {
            this.f49501e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.shapeHandlerManager(this.f49501e).restoreUserProvider();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$j */
    /* loaded from: classes8.dex */
    public static final class C9343j<T, R> implements Function {

        /* renamed from: e */
        public static final C9343j<T, R> f49502e = new C9343j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final List<Shape> apply(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getTransformShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C9344k<T, R> implements Function {
        public C9344k() {
        }

        /* renamed from: a */
        public final void m38786a(@NotNull TransformHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandlerAction.this.m38761C();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38786a((TransformHandlerAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C9345l<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f49505f;

        /* renamed from: g */
        public final /* synthetic */ boolean f49506g;

        public C9345l(BoxInfo boxInfo, boolean z) {
            this.f49505f = boxInfo;
            this.f49506g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends DrawSelectionRectAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DrawSelectionRectAction(TransformHandlerAction.this.getEditorBundle(), TransformHandlerAction.this.renderContext, this.f49505f, CollectionKt.ensureList(TransformHandlerAction.this.getShapeTransformBean().getTransformShapes()), this.f49506g).setRedraw().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$m */
    /* loaded from: classes8.dex */
    public static final class C9346m<T> implements Predicate {

        /* renamed from: f */
        public final /* synthetic */ TouchData f49508f;

        public C9346m(TouchData touchData) {
            this.f49508f = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a */
        public final boolean test(@NotNull TransformHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TransformHandlerAction.this.m38768r(this.f49508f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$n */
    /* loaded from: classes8.dex */
    public static final class C9347n<T> implements Consumer {
        public C9347n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TransformHandlerAction.this.m38771u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$o */
    /* loaded from: classes8.dex */
    public static final class C9348o<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49510e;

        public C9348o(TouchData touchData) {
            this.f49510e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final TouchData apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49510e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$p */
    /* loaded from: classes8.dex */
    public static final class C9349p<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ TouchData f49511e;

        public C9349p(TouchData touchData) {
            this.f49511e = touchData;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final TouchData apply(@NotNull SelectionManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49511e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader, @NotNull RenderContext renderContext) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        this.renderContext = renderContext;
        this.shapeTransformBean = new ShapeTransformBean();
    }

    public static /* synthetic */ Observable quitTransformObservable$default(TransformHandlerAction transformHandlerAction, BoxInfo boxInfo, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return transformHandlerAction.quitTransformObservable(boxInfo, z);
    }

    /* renamed from: x */
    public static /* synthetic */ Observable m38758x(TransformHandlerAction transformHandlerAction, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return transformHandlerAction.m38773w(z);
    }

    /* renamed from: A */
    public final Observable<TouchData> m38759A(TouchData touchData) {
        Observable filter = Observable.just(this).filter(new C9346m(touchData));
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        Observable map = RxjavaKt.flatMapIf(filter, new Function1<TransformHandlerAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction$touchDoneObservable$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TransformHandlerAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!TransformHandlerAction.this.isUndefinedTransformAction());
            }
        }, (Observable<? extends Object>) m38758x(this, false, 1, null)).doOnNext(new C9347n()).map(new C9348o(touchData));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: B */
    public final Observable<TouchData> m38760B(TouchData touchData) {
        if (isUndefinedTransformAction()) {
            Observable<TouchData> just = Observable.just(touchData);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = m38766p().transform(this.shapeTransformBean.getTransformShapes(), normalizeTouchPoint(m38767q(touchData), touchData.getTouchPoint().m72173clone())).map(new C9349p(touchData));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: C */
    public final void m38761C() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect != null) {
            selectionRect.updateRotationPosition(BoxInfoUtils.INSTANCE.renderMatrix(this.virtualBoxInfo));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TouchData> create() {
        Observable<TouchData> doOnError = subscribeTouchData().filter(new C9335b()).observeOn(getMainUIScheduler()).flatMap(new C9336c()).observeOn(getMainUIScheduler()).filter(C9337d.f49493e).flatMap(new C9338e()).doOnError(new C9339f());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @NotNull
    public final ShapeTransformBean getShapeTransformBean() {
        return this.shapeTransformBean;
    }

    public final boolean getTransformStarted() {
        return this.transformStarted;
    }

    @Nullable
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public boolean hitNoteInside(@NotNull TouchData touchData, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        if (super.hitNoteInside(touchData, boxInfo)) {
            return true;
        }
        SelectionManager m38766p = m38766p();
        if (this.virtualBoxInfo == null) {
            return false;
        }
        return !m38766p.transformAction(this.shapeTransformBean.getTransformShapes(), normalizeTouchPoint(r1, touchData.getTouchPoint().m72173clone())).isUndefined();
    }

    public final boolean isUndefinedTransformAction() {
        SelectionManager selectionManager = this.selectionManager;
        if (selectionManager != null) {
            return selectionManager.isUndefinedTransformAction();
        }
        return true;
    }

    /* renamed from: l */
    public final void m38762l(BoxInfo virtualBoxInfo, Shape shape) {
        quitTransformObservable$default(this, virtualBoxInfo, false, 2, null).flatMap(new C9334a(shape)).subscribe();
    }

    /* renamed from: m */
    public final boolean m38763m(TouchData touchData) {
        if (!m38770t()) {
            return false;
        }
        if (!touchData.isTouchUp() || !isUndefinedTransformAction()) {
            return true;
        }
        quitTransform(m38767q(touchData));
        return true;
    }

    /* renamed from: n */
    public final void m38764n() {
        EditorBundle editorBundle = getEditorBundle();
        RenderContext renderContext = this.renderContext;
        BoxInfo boxInfo = this.virtualBoxInfo;
        Intrinsics.checkNotNull(boxInfo);
        this.selectionManager = new SelectionManager(editorBundle, renderContext, boxInfo);
    }

    /* renamed from: o */
    public final boolean m38765o(TouchData touchData) {
        BoxInfo m38767q = m38767q(touchData);
        SelectionManager m38766p = m38766p();
        TouchPoint normalizeTouchPoint = normalizeTouchPoint(m38767q, touchData.getTouchPoint().m72173clone());
        m38766p.onDown(this.shapeTransformBean.getTransformShapes(), normalizeTouchPoint);
        if (m38766p.isUndefinedTransformAction()) {
            return false;
        }
        m38766p.touchDown(this.shapeTransformBean.getTransformShapes(), normalizeTouchPoint);
        return true;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        EditorBundleKt.shapeHandlerManager(getEditorBundle()).restoreUserProvider();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        if ((r0 != null ? r0.getNoteInfo() : null) == null) goto L25;
     */
    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onTouchDown(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.geometry.data.TouchData r4) {
        /*
            r3 = this;
            java.lang.String r0 = "touchData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            super.onTouchDown(r4)
            com.onyx.android.sdk.geometry.data.BoxInfo r0 = r3.virtualBoxInfo
            r1 = 0
            if (r0 == 0) goto L17
            if (r0 == 0) goto L14
            com.onyx.android.sdk.geometry.data.BoxInfo r0 = r0.getNoteInfo()
            goto L15
        L14:
            r0 = r1
        L15:
            if (r0 != 0) goto L1d
        L17:
            com.onyx.android.sdk.geometry.data.BoxInfo r0 = r4.ensureBoxInfo()
            r3.virtualBoxInfo = r0
        L1d:
            r3.m38764n()
            boolean r4 = r3.m38765o(r4)
            if (r4 != 0) goto L27
            return
        L27:
            boolean r3 = r3.m38770t()
            if (r3 == 0) goto L36
            com.onyx.android.sdk.base.utils.ToastUtils r3 = com.onyx.android.sdk.base.utils.ToastUtils.INSTANCE
            int r4 = com.onyx.android.sdk.universal.C8045R.string.selected_item_locked_tip
            r0 = 0
            r2 = 2
            com.onyx.android.sdk.base.utils.ToastUtils.show$default(r3, r4, r0, r2, r1)
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.handler.TransformHandlerAction.onTouchDown(com.onyx.android.sdk.geometry.data.TouchData):void");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (m38770t()) {
            return;
        }
        m38767q(touchData);
        if (m38766p().isUndefinedTransformAction()) {
            return;
        }
        m38766p().onMove(touchData.getTouchPoint());
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        if (touchData.isTouchCancel() || m38770t()) {
            return;
        }
        m38767q(touchData);
        SelectionManager m38766p = m38766p();
        if (m38766p.isUndefinedTransformAction()) {
            return;
        }
        m38766p.onUp(touchData.getTouchPoint());
    }

    /* renamed from: p */
    public final SelectionManager m38766p() {
        if (this.selectionManager == null) {
            m38764n();
        }
        SelectionManager selectionManager = this.selectionManager;
        Intrinsics.checkNotNull(selectionManager);
        return selectionManager;
    }

    /* renamed from: q */
    public final BoxInfo m38767q(TouchData touchData) {
        if (this.virtualBoxInfo == null) {
            this.virtualBoxInfo = touchData.ensureBoxInfo();
        }
        BoxInfo boxInfo = this.virtualBoxInfo;
        Intrinsics.checkNotNull(boxInfo);
        return boxInfo;
    }

    public final void quitTransform(@NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        quitTransformObservable$default(this, virtualBoxInfo, false, 2, null).subscribe();
    }

    @NotNull
    public final Observable<List<Shape>> quitTransformObservable(@NotNull BoxInfo virtualBoxInfo, boolean checkAccidentallyTranslate) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        ShapeTransformBean shapeTransformBean = this.shapeTransformBean;
        EditorBundle editorBundle = getEditorBundle();
        RenderContext renderContext = this.renderContext;
        m38774y();
        Observable<List<Shape>> map = (checkAccidentallyTranslate ? m38775z(shapeTransformBean) : Observable.just(this)).flatMap(new C9340g(editorBundle, renderContext, virtualBoxInfo, shapeTransformBean)).doOnNext(new C9341h(shapeTransformBean)).doOnNext(new C9342i(editorBundle)).map(C9343j.f49502e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final boolean m38768r(TouchData touchData) {
        if (!isSingleTapUpShort(getDown(), touchData)) {
            return true;
        }
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        List<Shape> filterNormalShapes = shapeTypes.filterNormalShapes(this.shapeTransformBean.getTransformShapes());
        if (filterNormalShapes.size() != 1) {
            return true;
        }
        if (shapeTypes.isTextShape(filterNormalShapes.get(0))) {
            return !m38769s(r2, touchData);
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m38769s(Shape shape, TouchData touchData) {
        SelectionRect selectionRect;
        RectF boundRect;
        TouchPoint copy = touchData.getTouchPoint().copy();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            return false;
        }
        normalizeTouchPoint(boxInfo, copy);
        SelectionManager selectionManager = this.selectionManager;
        if (selectionManager == null || (selectionRect = selectionManager.getSelectionRect()) == null || (boundRect = selectionRect.getBoundRect()) == null || !boundRect.contains(copy.getX(), copy.getY())) {
            return false;
        }
        m38762l(boxInfo, shape);
        return true;
    }

    public final void setShapeTransformBean(@NotNull ShapeTransformBean shapeTransformBean) {
        Intrinsics.checkNotNullParameter(shapeTransformBean, "<set-?>");
        this.shapeTransformBean = shapeTransformBean;
    }

    public final void setTransformStarted(boolean z) {
        this.transformStarted = z;
    }

    public final void setVirtualBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualBoxInfo = boxInfo;
    }

    /* renamed from: t */
    public final boolean m38770t() {
        return ShapeUtils.INSTANCE.hasLocked(this.shapeTransformBean.getTransformShapes());
    }

    /* renamed from: u */
    public final void m38771u() {
        if (isUndefinedTransformAction() && this.shapeTransformBean.hasTransformShapes() && this.transformStarted) {
            BoxInfo boxInfo = this.virtualBoxInfo;
            Intrinsics.checkNotNull(boxInfo);
            quitTransform(boxInfo);
            this.transformStarted = false;
        }
        m38772v(false);
    }

    public final void updateSelectionVisibleRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect != null) {
            selectionRect.setVisibleRect(rectF);
        }
        m38773w(true).subscribe();
    }

    /* renamed from: v */
    public final void m38772v(boolean transforming) {
        SelectionRect selectionRect = new SelectionRect(this.renderContext.getSelectionRect());
        BoxInfo boxInfo = this.virtualBoxInfo;
        selectionRect.setRenderMatrix(boxInfo != null ? BoxInfoUtils.INSTANCE.noteRenderMatrix(boxInfo) : null);
        EditorBundleKt.postEvent(getEditorBundle(), new TransformChangedEvent(this.shapeTransformBean.getTransformShapes(), selectionRect, transforming));
    }

    /* renamed from: w */
    public final Observable<?> m38773w(boolean invalidate) {
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> flatMap = Observable.just(this).map(new C9344k()).flatMap(new C9345l(boxInfo, invalidate));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: y */
    public final void m38774y() {
        this.shapeTransformBean = new ShapeTransformBean();
    }

    /* renamed from: z */
    public final Observable<?> m38775z(ShapeTransformBean transformBean) {
        SelectionManager selectionManager = this.selectionManager;
        if (selectionManager != null) {
            return selectionManager.restoreTranslateIfMatch(transformBean.getTransformShapes());
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
