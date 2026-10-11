package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.Canvas;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.SelectionRectRender;
import com.onyx.android.sdk.universal.editor.events.note.TransformChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B7\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\b\b\u0002\u0010%\u001a\u00020\u0002¢\u0006\u0004\b0\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0000J\u001a\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\nH\u0014J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010\"¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "rendering", "setRenderingShapes", "setRedraw", "showRotationHandle", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "transformAction", "configureSelectionRender", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "transforming", "postEvent", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "getShapeList", "()Ljava/util/List;", "shapeList", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getInvalidate", Constants.BOOLEAN_VALUE_SIG, "invalidate", "Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;", "l", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;", AbstractLogger.REQUEST, "m", "redraw", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DrawSelectionRectAction extends RxBaseAppAction<DrawSelectionRectAction> {

    /* renamed from: h */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: k */
    public final boolean invalidate;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy org.xmlresolver.logging.AbstractLogger.REQUEST java.lang.String;

    /* renamed from: m */
    public boolean redraw;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction$a */
    /* loaded from: classes8.dex */
    public static final class C9889a<T, R> implements Function {
        public C9889a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final DrawSelectionRectAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DrawSelectionRectAction.this;
        }
    }

    public /* synthetic */ DrawSelectionRectAction(EditorBundle editorBundle, RenderContext renderContext, BoxInfo boxInfo, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, renderContext, boxInfo, list, (i & 16) != 0 ? true : z);
    }

    public static /* synthetic */ DrawSelectionRectAction configureSelectionRender$default(DrawSelectionRectAction drawSelectionRectAction, boolean z, ShapeTransformAction shapeTransformAction, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            shapeTransformAction = ShapeTransformAction.Undefined;
        }
        return drawSelectionRectAction.configureSelectionRender(z, shapeTransformAction);
    }

    /* renamed from: m */
    public static final void m39868m(DrawSelectionRectAction this$0, Unit it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.postEvent(true);
    }

    public static /* synthetic */ DrawSelectionRectAction setRenderingShapes$default(DrawSelectionRectAction drawSelectionRectAction, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return drawSelectionRectAction.setRenderingShapes(z);
    }

    @NotNull
    public final DrawSelectionRectAction configureSelectionRender(boolean showRotationHandle, @NotNull ShapeTransformAction transformAction) {
        Intrinsics.checkNotNullParameter(transformAction, "transformAction");
        m39869n().setShowHandle(showRotationHandle);
        m39869n().setTransformAction(transformAction);
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DrawSelectionRectAction> create() {
        Observable<DrawSelectionRectAction> map = RxjavaKt.doOnNextIf(DocCommonActionsKt.createMainObservable(this, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction$create$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RenderManager renderManager = EditorBundleKt.renderManager(DrawSelectionRectAction.this.getEditorBundle());
                final DrawSelectionRectAction drawSelectionRectAction = DrawSelectionRectAction.this;
                renderManager.addRenderer(RenderManager.RENDER_KEY_TRANSFORM, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction$create$1.1
                    @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
                    public void onDraw(@NotNull Canvas canvas) {
                        SelectionRectRender m39869n;
                        Intrinsics.checkNotNullParameter(canvas, "canvas");
                        if (DrawSelectionRectAction.this.getRenderContext().getSelectionRect() == null) {
                            DrawSelectionRectAction.this.setRenderingShapes(false);
                        }
                        DrawSelectionRectAction.this.getRenderContext().updateCanvas(canvas);
                        BoxInfo noteInfo = DrawSelectionRectAction.this.getVirtualBoxInfo().getNoteInfo();
                        if (noteInfo != null) {
                            m39869n = DrawSelectionRectAction.this.m39869n();
                            m39869n.renderNote(canvas, noteInfo);
                        }
                    }
                }, DrawSelectionRectAction.this.getInvalidate());
            }
        }), new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it2) {
                SelectionRectRender m39869n;
                boolean z;
                boolean z2;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39869n = DrawSelectionRectAction.this.m39869n();
                if (!m39869n.getRenderingShapes()) {
                    z2 = DrawSelectionRectAction.this.redraw;
                    if (!z2) {
                        z = true;
                        return Boolean.valueOf(z);
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.dif
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DrawSelectionRectAction.m39868m(DrawSelectionRectAction.this, (Unit) obj);
            }
        }).map(new C9889a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getInvalidate() {
        return this.invalidate;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: n */
    public final SelectionRectRender m39869n() {
        return (SelectionRectRender) this.org.xmlresolver.logging.AbstractLogger.REQUEST java.lang.String.getValue();
    }

    @NotNull
    public final DrawSelectionRectAction postEvent(boolean transforming) {
        SelectionRect selectionRect = new SelectionRect(this.renderContext.getSelectionRect());
        selectionRect.setRenderMatrix(BoxInfoUtils.INSTANCE.noteRenderMatrix(this.virtualBoxInfo));
        EditorBundleKt.postEvent(getEditorBundle(), new TransformChangedEvent(this.shapeList, selectionRect, transforming));
        return this;
    }

    @NotNull
    public final DrawSelectionRectAction setRedraw() {
        this.redraw = true;
        return this;
    }

    @NotNull
    public final DrawSelectionRectAction setRenderingShapes(boolean rendering) {
        m39869n().setRenderingShapes(rendering);
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawSelectionRectAction(@NotNull final EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList, boolean z) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        this.invalidate = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SelectionRectRender>() { // from class: com.onyx.android.sdk.universal.editor.action.selection.DrawSelectionRectAction$request$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SelectionRectRender invoke() {
                return new SelectionRectRender(EditorBundle.this, this.getRenderContext(), this.getVirtualBoxInfo(), this.getShapeList());
            }
        });
        this.org.xmlresolver.logging.AbstractLogger.REQUEST java.lang.String = lazy;
    }
}
