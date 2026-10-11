package com.onyx.galaxy.note.editor.view.toolbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.replicator.note.p035db.model.PageMarginConfig;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.databinding.LayoutShpaeAndToolContainerBinding;
import com.onyx.galaxy.note.editor.action.template.LoadDocDefaultPageMarginAction;
import com.onyx.galaxy.note.editor.action.template.LoadDocTemplateModelAction;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.editor.view.custom.DragToolEffectView;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;
import com.onyx.galaxy.note.editor.view.drag.ViewDragCallback;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010W\u001a\u00020V¢\u0006\u0004\bX\u0010YB\u001d\b\u0016\u0012\u0006\u0010W\u001a\u00020V\u0012\n\b\u0002\u0010[\u001a\u0004\u0018\u00010Z¢\u0006\u0004\bX\u0010\\B%\b\u0016\u0012\u0006\u0010W\u001a\u00020V\u0012\n\b\u0002\u0010[\u001a\u0004\u0018\u00010Z\u0012\u0006\u0010]\u001a\u00020\f¢\u0006\u0004\bX\u0010^J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J(\u0010\u0012\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001c\u0010\u0016\u001a\u00020\u00022\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00020\u0013H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\nJ\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\fJ\u0006\u0010\u001d\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\fJ\u0018\u0010#\u001a\u00020\u00022\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\nJ\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020\u0001J\u0006\u0010-\u001a\u00020,J\u0006\u0010/\u001a\u00020.J\u0006\u00101\u001a\u000200J\u0006\u00103\u001a\u000202J\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u000206J\u0006\u00108\u001a\u00020&J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u00020\bJ\u000e\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;J\u000e\u0010>\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010?\u001a\u00020\u0002J(\u0010C\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010A\u001a\u00020\f2\u0006\u0010B\u001a\u00020\fH\u0014J\u0012\u0010F\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010DH\u0016J\u0012\u0010H\u001a\u00020\n2\b\u0010G\u001a\u0004\u0018\u00010DH\u0016R\u0016\u0010K\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010M\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010LR\u0016\u0010N\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010LR(\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00020O8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010T¨\u0006_"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;", "Landroid/widget/FrameLayout;", "", "d", "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "dragLayout", "setViewDragCallback", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "", C6997f.f39671c, "", "initialWidth", "initialHeight", "show", "", "value", C6999h.f39688c, "Lkotlin/Function1;", "Landroid/view/ViewGroup$MarginLayoutParams;", BreakpointSQLiteHelper.f39283i, "i", "Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;", "getBinding", "isClickValid", "flushUI", "lassoType", "updateLassoTypeUi", "updateExcerptTypeUi", "eraserType", "updateEraserTypeUi", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "postEvent", "setSelectByType", "getContainerView", "getContainerView2", "Landroid/view/View;", "getEditorView", "getEditorView2", "Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;", "getSplitScreenLayout", "getShapeContentView", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBoxView", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "getSelectionMenuView", "Landroidx/appcompat/widget/AppCompatImageView;", "getEraseCircle", "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;", "getToolDragView", "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;", "getDragEffectView", "Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;", "getDriveTokenExpiredTipContainer", "getFullScreenView", "editorBundle", "setEditorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "bindPenViewModel", "coordinateToolbarAnimation", "showTapeSizeContainer", "w", "oldw", "oldh", "onSizeChanged", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onHoverEvent", "ev", "dispatchTouchEvent", "e", "Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;", "binding", Constants.HASIDCALL_INDEX_SIG, "hasHovered", "isStylusPress", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "getEditorContainerChangeCallback", "()Lkotlin/jvm/functions/Function0;", "setEditorContainerChangeCallback", "(Lkotlin/jvm/functions/Function0;)V", "editorContainerChangeCallback", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeAndToolContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,379:1\n91#2,14:380\n*S KotlinDebug\n*F\n+ 1 ShapeAndToolContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer\n*L\n270#1:380,14\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeAndToolContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutShpaeAndToolContainerBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean hasHovered;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isStylusPress;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> editorContainerChangeCallback;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$a */
    /* loaded from: classes9.dex */
    public static final class C12522a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorViewDragLayout f60894f;

        public C12522a(EditorViewDragLayout editorViewDragLayout) {
            this.f60894f = editorViewDragLayout;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadDocDefaultPageMarginAction it2) {
            Unit unit;
            Intrinsics.checkNotNullParameter(it2, "it");
            PageMarginConfig pageMarginConfig = it2.getPageMarginConfig();
            if (pageMarginConfig != null) {
                this.f60894f.setPageMargin(pageMarginConfig.getMargin(), pageMarginConfig.getStyle());
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.f60894f.clearPageMargin();
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$b */
    /* loaded from: classes9.dex */
    public static final class C12523b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f60895e;

        public C12523b(EditorBundle editorBundle) {
            this.f60895e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadDocTemplateModelAction> apply(@NotNull LoadDocDefaultPageMarginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadDocTemplateModelAction(this.f60895e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$c */
    /* loaded from: classes9.dex */
    public static final class C12524c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorViewDragLayout f60896e;

        public C12524c(EditorViewDragLayout editorViewDragLayout) {
            this.f60896e = editorViewDragLayout;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadDocTemplateModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f60896e.loadPaperTemplate(it2.getTemplateModel());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeAndToolContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: c */
    public static final void m50130c(ShapeAndToolContainer this$0, int i, int i2, boolean z, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.m50135h(i, i2, z, ((Float) animatedValue).floatValue());
    }

    /* renamed from: e */
    public static final void m50131e(ShapeAndToolContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundle editorBundle = this$0.getEditorBundle();
        if (editorBundle != null) {
            EditorBundleKt.postEvent(editorBundle, new FullScreenEvent(false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EditorBundle getEditorBundle() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        return layoutShpaeAndToolContainerBinding.dragTool.getEditorBundle();
    }

    private final void setViewDragCallback(final EditorViewDragLayout dragLayout) {
        dragLayout.setCallback(new ViewDragCallback() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$setViewDragCallback$1
            /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
            
                r1 = r1.f60897a.getEditorBundle();
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void m50140a(android.view.MotionEvent r2) {
                /*
                    r1 = this;
                    boolean r2 = com.onyx.android.sdk.base.extension.MotionEventKt.isDoneAction(r2)
                    if (r2 == 0) goto L30
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r1 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.this
                    com.onyx.android.sdk.universal.editor.EditorBundle r1 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.access$getEditorBundle(r1)
                    if (r1 != 0) goto Lf
                    return
                Lf:
                    com.onyx.android.sdk.universal.editor.UIBundle r2 = r1.getUiBundle()
                    com.onyx.android.sdk.universal.editor.data.UIStateInfo r2 = r2.getUiStateInfo()
                    boolean r2 = r2.getIsDragStateIdle()
                    com.onyx.android.sdk.universal.editor.UIBundle r0 = r1.getUiBundle()
                    com.onyx.android.sdk.universal.editor.data.UIStateInfo r0 = r0.getUiStateInfo()
                    r0.delayResetDragStateIdleIf()
                    if (r2 != 0) goto L30
                    com.onyx.android.sdk.universal.editor.events.app.DragAppendingPageEndEvent r2 = new com.onyx.android.sdk.universal.editor.events.app.DragAppendingPageEndEvent
                    r2.<init>()
                    com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.postEvent(r1, r2)
                L30:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$setViewDragCallback$1.m50140a(android.view.MotionEvent):void");
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
            
                r0 = r4.f60897a.getEditorBundle();
             */
            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean canDrag() {
                /*
                    r4 = this;
                    boolean r0 = r4.canQuickDrag()
                    r1 = 0
                    if (r0 != 0) goto L8
                    return r1
                L8:
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r0 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.this
                    com.onyx.android.sdk.universal.editor.EditorBundle r0 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.access$getEditorBundle(r0)
                    if (r0 != 0) goto L11
                    return r1
                L11:
                    com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager r2 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.handlerManager(r0)
                    boolean r2 = r2.isGestureMoved()
                    if (r2 != 0) goto L1c
                    return r1
                L1c:
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r2 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.this
                    com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout r3 = r2
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.access$loadPaperTemplateThumbnail(r2, r3)
                    com.onyx.android.sdk.universal.editor.UIBundle r0 = r0.getUiBundle()
                    com.onyx.android.sdk.universal.editor.data.UIStateInfo r0 = r0.getUiStateInfo()
                    r0.setDragStateIdle(r1)
                    com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout r4 = r2
                    r4.requestDragViewInterceptTouchEvent()
                    r4 = 1
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$setViewDragCallback$1.canDrag():boolean");
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canDragByFinger(@NotNull MotionEvent event) {
                EditorBundle editorBundle;
                Intrinsics.checkNotNullParameter(event, "event");
                editorBundle = ShapeAndToolContainer.this.getEditorBundle();
                return editorBundle == null || !EditorBundleKt.handlerManager(editorBundle).isSupportFingerTouchEdit() || MotionEventKt.isMultiTouch(event);
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canDragByPen() {
                EditorBundle editorBundle;
                editorBundle = ShapeAndToolContainer.this.getEditorBundle();
                if (editorBundle == null) {
                    return false;
                }
                return !EditorBundleKt.handlerManager(editorBundle).isSupportTouchEdit();
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
            
                r2 = r2.f60897a.getEditorBundle();
             */
            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean canQuickDrag() {
                /*
                    r2 = this;
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r0 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.this
                    boolean r0 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.access$isDragAddEnable(r0)
                    r1 = 0
                    if (r0 != 0) goto La
                    return r1
                La:
                    com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer r2 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.this
                    com.onyx.android.sdk.universal.editor.EditorBundle r2 = com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer.access$getEditorBundle(r2)
                    if (r2 != 0) goto L13
                    return r1
                L13:
                    com.onyx.android.sdk.universal.editor.feature.ui.UIFeature r0 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.getUiFeature(r2)
                    boolean r0 = r0.supportMultiPage()
                    if (r0 != 0) goto L1e
                    return r1
                L1e:
                    boolean r2 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.isReachLimitEdge(r2)
                    if (r2 != 0) goto L25
                    return r1
                L25:
                    r2 = 1
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$setViewDragCallback$1.canQuickDrag():boolean");
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onInterceptTouchEvent(@NotNull MotionEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                super.onInterceptTouchEvent(event);
                m50140a(event);
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onTouchEvent(@NotNull MotionEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                super.onTouchEvent(event);
                m50140a(event);
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onViewDownTouch(@NotNull MotionEvent event) {
                EditorBundle editorBundle;
                Intrinsics.checkNotNullParameter(event, "event");
                editorBundle = ShapeAndToolContainer.this.getEditorBundle();
                if (editorBundle != null) {
                    dragLayout.setLayoutType(DocOptionsActionsKt.getLayoutType(editorBundle));
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int state) {
                EditorBundle editorBundle;
                editorBundle = ShapeAndToolContainer.this.getEditorBundle();
                if (editorBundle != null && state == 0) {
                    editorBundle.getUiBundle().getUiStateInfo().setDragStateIdle(true);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onViewMaxReleased(@NotNull View releasedChild) {
                EditorBundle editorBundle;
                Intrinsics.checkNotNullParameter(releasedChild, "releasedChild");
                editorBundle = ShapeAndToolContainer.this.getEditorBundle();
                if (editorBundle == null) {
                    return;
                }
                editorBundle.getUiBundle().getUiStateInfo().setDragAppendingPage(true);
                RxTimerUtil.INSTANCE.shortTimer(new ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1(editorBundle));
            }
        });
    }

    public final void bindPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.setPenViewModel(penViewModel);
    }

    public final void coordinateToolbarAnimation(final boolean show) {
        final FrameLayout shapeContentView = getShapeContentView();
        final int measuredHeight = shapeContentView.getMeasuredHeight();
        final int measuredWidth = shapeContentView.getMeasuredWidth();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, getToolDragView().getLayoutParams().height);
        ofFloat.setDuration(300L);
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$coordinateToolbarAnimation$lambda$3$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                ViewKt.setLayoutHeight(shapeContentView, -1);
                ViewKt.setLayoutWidth(shapeContentView, -1);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.qlm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShapeAndToolContainer.m50130c(ShapeAndToolContainer.this, measuredWidth, measuredHeight, show, valueAnimator);
            }
        });
        if (show) {
            ofFloat.setStartDelay(300L);
        }
        ofFloat.start();
    }

    /* renamed from: d */
    public final void m50132d() {
        LayoutShpaeAndToolContainerBinding inflate = LayoutShpaeAndToolContainerBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        setViewDragCallback(getContainerView());
        setViewDragCallback(getContainerView2());
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding2 = null;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.driveTokenExpiredTipContainer.setTipVisibilityChangeListener(new Function1<Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                ShapeAndToolContainer.this.getEditorContainerChangeCallback().invoke();
            }
        });
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding3 = this.binding;
        if (layoutShpaeAndToolContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutShpaeAndToolContainerBinding2 = layoutShpaeAndToolContainerBinding3;
        }
        TintImageView ivFullScreen = layoutShpaeAndToolContainerBinding2.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        com.onyx.android.sdk.extension.ViewKt.click$default(ivFullScreen, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rlm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapeAndToolContainer.m50131e(ShapeAndToolContainer.this, view);
            }
        }, 1, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@Nullable MotionEvent ev) {
        Integer valueOf = ev != null ? Integer.valueOf(ev.getActionMasked()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            this.hasHovered = false;
            this.isStylusPress = ev.getToolType(0) == 2;
        } else {
            if ((valueOf == null || valueOf.intValue() != 1) && (valueOf == null || valueOf.intValue() != 3)) {
                r1 = false;
            }
            if (r1) {
                this.isStylusPress = false;
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    /* renamed from: f */
    public final boolean m50133f() {
        return NoteConfigManager.INSTANCE.getSlideToAdd().get();
    }

    public final void flushUI() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding2 = null;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.flushUI();
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding3 = this.binding;
        if (layoutShpaeAndToolContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutShpaeAndToolContainerBinding2 = layoutShpaeAndToolContainerBinding3;
        }
        layoutShpaeAndToolContainerBinding2.selectionMenus.flushUI();
    }

    /* renamed from: g */
    public final void m50134g(EditorViewDragLayout dragLayout) {
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        new LoadDocDefaultPageMarginAction(editorBundle).build().doOnNext(new C12522a(dragLayout)).flatMap(new C12523b(editorBundle)).doOnNext(new C12524c(dragLayout)).subscribe();
    }

    @NotNull
    public final LayoutShpaeAndToolContainerBinding getBinding() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding != null) {
            return layoutShpaeAndToolContainerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final EditorViewDragLayout getContainerView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        EditorViewDragLayout editorViewDragLayout = layoutShpaeAndToolContainerBinding.splitScreen.getBinding().editorViewDragLayout;
        Intrinsics.checkNotNullExpressionValue(editorViewDragLayout, "editorViewDragLayout");
        return editorViewDragLayout;
    }

    @NotNull
    public final EditorViewDragLayout getContainerView2() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        EditorViewDragLayout editorViewDragLayout2 = layoutShpaeAndToolContainerBinding.splitScreen.getBinding().editorViewDragLayout2;
        Intrinsics.checkNotNullExpressionValue(editorViewDragLayout2, "editorViewDragLayout2");
        return editorViewDragLayout2;
    }

    @NotNull
    public final DragToolEffectView getDragEffectView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        DragToolEffectView dragEffectView = layoutShpaeAndToolContainerBinding.dragEffectView;
        Intrinsics.checkNotNullExpressionValue(dragEffectView, "dragEffectView");
        return dragEffectView;
    }

    @NotNull
    public final DriveTokenExpiredTipContainer getDriveTokenExpiredTipContainer() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        DriveTokenExpiredTipContainer driveTokenExpiredTipContainer = layoutShpaeAndToolContainerBinding.driveTokenExpiredTipContainer;
        Intrinsics.checkNotNullExpressionValue(driveTokenExpiredTipContainer, "driveTokenExpiredTipContainer");
        return driveTokenExpiredTipContainer;
    }

    @NotNull
    public final Function0<Unit> getEditorContainerChangeCallback() {
        return this.editorContainerChangeCallback;
    }

    @NotNull
    public final View getEditorView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        return layoutShpaeAndToolContainerBinding.splitScreen.getBinding().editorViewDragLayout.getEditorView();
    }

    @NotNull
    public final View getEditorView2() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        return layoutShpaeAndToolContainerBinding.splitScreen.getBinding().editorViewDragLayout2.getEditorView();
    }

    @NotNull
    public final AppCompatImageView getEraseCircle() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        AppCompatImageView eraseCircle = layoutShpaeAndToolContainerBinding.eraseCircle;
        Intrinsics.checkNotNullExpressionValue(eraseCircle, "eraseCircle");
        return eraseCircle;
    }

    @NotNull
    public final View getFullScreenView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        TintImageView ivFullScreen = layoutShpaeAndToolContainerBinding.ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        return ivFullScreen;
    }

    @NotNull
    public final PagedSelectionMenu getSelectionMenuView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        PagedSelectionMenu selectionMenus = layoutShpaeAndToolContainerBinding.selectionMenus;
        Intrinsics.checkNotNullExpressionValue(selectionMenus, "selectionMenus");
        return selectionMenus;
    }

    @NotNull
    public final FrameLayout getShapeContentView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        FrameLayout flShapeContent = layoutShpaeAndToolContainerBinding.flShapeContent;
        Intrinsics.checkNotNullExpressionValue(flShapeContent, "flShapeContent");
        return flShapeContent;
    }

    @NotNull
    public final SplitScreenLayout getSplitScreenLayout() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        SplitScreenLayout splitScreen = layoutShpaeAndToolContainerBinding.splitScreen;
        Intrinsics.checkNotNullExpressionValue(splitScreen, "splitScreen");
        return splitScreen;
    }

    @NotNull
    public final TextBoxView getTextBoxView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        TextBoxView textBoxView = layoutShpaeAndToolContainerBinding.textBoxView;
        Intrinsics.checkNotNullExpressionValue(textBoxView, "textBoxView");
        return textBoxView;
    }

    @NotNull
    public final ToolDragView getToolDragView() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        ToolDragView dragTool = layoutShpaeAndToolContainerBinding.dragTool;
        Intrinsics.checkNotNullExpressionValue(dragTool, "dragTool");
        return dragTool;
    }

    /* renamed from: h */
    public final void m50135h(final int initialWidth, final int initialHeight, final boolean show, final float value) {
        final float f = getToolDragView().getLayoutParams().height;
        int i = WhenMappings.$EnumSwitchMapping$0[getToolDragView().getDockType().ordinal()];
        if (i == 1) {
            m50136i(new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$updateShapeContentViewLayout$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                    invoke2(marginLayoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams layoutParams) {
                    Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
                    if (show) {
                        float f2 = initialHeight;
                        float f3 = value;
                        layoutParams.height = (int) (f2 - f3);
                        layoutParams.topMargin = (int) f3;
                        return;
                    }
                    float f4 = initialHeight;
                    float f5 = value;
                    layoutParams.height = (int) (f4 + f5);
                    layoutParams.topMargin = (int) (f - f5);
                }
            });
            return;
        }
        if (i == 2) {
            m50136i(new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$updateShapeContentViewLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                    invoke2(marginLayoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams layoutParams) {
                    Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
                    if (show) {
                        float f2 = initialHeight;
                        float f3 = value;
                        layoutParams.height = (int) (f2 - f3);
                        layoutParams.bottomMargin = (int) f3;
                        return;
                    }
                    float f4 = initialHeight;
                    float f5 = value;
                    layoutParams.height = (int) (f4 + f5);
                    layoutParams.bottomMargin = (int) (f - f5);
                }
            });
        } else if (i == 3) {
            m50136i(new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$updateShapeContentViewLayout$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                    invoke2(marginLayoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams layoutParams) {
                    Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
                    if (show) {
                        float f2 = initialWidth;
                        float f3 = value;
                        layoutParams.width = (int) (f2 - f3);
                        layoutParams.leftMargin = (int) f3;
                        return;
                    }
                    float f4 = initialWidth;
                    float f5 = value;
                    layoutParams.width = (int) (f4 + f5);
                    layoutParams.leftMargin = (int) (f - f5);
                }
            });
        } else {
            if (i != 4) {
                return;
            }
            m50136i(new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$updateShapeContentViewLayout$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                    invoke2(marginLayoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.MarginLayoutParams layoutParams) {
                    Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
                    if (show) {
                        float f2 = initialWidth;
                        float f3 = value;
                        layoutParams.width = (int) (f2 - f3);
                        layoutParams.rightMargin = (int) f3;
                        return;
                    }
                    float f4 = initialWidth;
                    float f5 = value;
                    layoutParams.width = (int) (f4 + f5);
                    layoutParams.rightMargin = (int) (f - f5);
                }
            });
        }
    }

    /* renamed from: i */
    public final void m50136i(Function1<? super ViewGroup.MarginLayoutParams, Unit> block) {
        ViewGroup.LayoutParams layoutParams = getShapeContentView().getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            block.invoke(marginLayoutParams);
        }
        getShapeContentView().setLayoutParams(marginLayoutParams);
    }

    public final boolean isClickValid() {
        return (this.hasHovered || this.isStylusPress) ? false : true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(@Nullable MotionEvent event) {
        Integer valueOf = event != null ? Integer.valueOf(event.getActionMasked()) : null;
        if (valueOf != null && valueOf.intValue() == 9) {
            this.hasHovered = true;
        }
        return super.onHoverEvent(event);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w == oldw && h == oldh) {
            return;
        }
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.updateView();
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.setEditorBundle(editorBundle);
    }

    public final void setEditorContainerChangeCallback(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.editorContainerChangeCallback = function0;
    }

    public final void setSelectByType(@Nullable ShapeToolType shapeToolType, boolean postEvent) {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.setSelectByType(shapeToolType, postEvent);
    }

    public final void showTapeSizeContainer() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.showTapeSizeContainer();
    }

    public final void updateEraserTypeUi(int eraserType) {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.updateEraserTypeUi(eraserType);
    }

    public final void updateExcerptTypeUi() {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.updateExcerptTypeUi();
    }

    public final void updateLassoTypeUi(int lassoType) {
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding = this.binding;
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding2 = null;
        if (layoutShpaeAndToolContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutShpaeAndToolContainerBinding = null;
        }
        layoutShpaeAndToolContainerBinding.dragTool.flushUI();
        LayoutShpaeAndToolContainerBinding layoutShpaeAndToolContainerBinding3 = this.binding;
        if (layoutShpaeAndToolContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutShpaeAndToolContainerBinding2 = layoutShpaeAndToolContainerBinding3;
        }
        layoutShpaeAndToolContainerBinding2.dragTool.updateLassoTypeUi(lassoType);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeAndToolContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeAndToolContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeAndToolContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.editorContainerChangeCallback = new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer$editorContainerChangeCallback$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        m50132d();
    }

    public /* synthetic */ ShapeAndToolContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
