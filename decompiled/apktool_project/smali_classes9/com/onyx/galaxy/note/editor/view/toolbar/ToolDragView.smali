.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;,
        Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolDragView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,830:1\n256#2,2:831\n254#2:833\n338#2:834\n356#2:835\n256#2,2:836\n256#2,2:838\n254#2:840\n256#2,2:841\n256#2,2:843\n256#2,2:845\n256#2,2:847\n256#2,2:849\n256#2,2:851\n256#2,2:853\n256#2,2:855\n277#2,2:861\n53#3,4:857\n*S KotlinDebug\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n*L\n242#1:831,2\n263#1:833\n265#1:834\n265#1:835\n467#1:836,2\n468#1:838,2\n572#1:840\n573#1:841,2\n574#1:843,2\n575#1:845,2\n576#1:847,2\n598#1:849,2\n599#1:851,2\n600#1:853,2\n601#1:855,2\n826#1:861,2\n699#1:857,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u00b2\u0001B\u0015\u0008\u0016\u0012\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001B#\u0008\u0016\u0012\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001\u0012\u000c\u0008\u0002\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00ad\u0001\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00af\u0001B,\u0008\u0016\u0012\u0008\u0010\u00aa\u0001\u001a\u00030\u00a9\u0001\u0012\u000c\u0008\u0002\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00ad\u0001\u0012\u0007\u0010\u00b0\u0001\u001a\u00020\u000b\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00b1\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0008\u0010\u001d\u001a\u00020\u000eH\u0002J\u0008\u0010\u001e\u001a\u00020\u000eH\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0008\u0010 \u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020!H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0$H\u0002J\u0018\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000eH\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0008\u0010*\u001a\u00020\u0002H\u0002J\u0008\u0010+\u001a\u00020\u000bH\u0002J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000eH\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0018\u00103\u001a\u00020\u00022\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0016H\u0002J\u0006\u00105\u001a\u000204J\u000e\u00106\u001a\u00020\u00022\u0006\u00101\u001a\u000200J\u0006\u00107\u001a\u00020\u0007J\u0008\u00108\u001a\u0004\u0018\u000100J\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00162\u0006\u0010?\u001a\u00020>J\u0006\u0010A\u001a\u00020\u0002J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u0016J\u0006\u0010D\u001a\u00020\u0016J\u0010\u0010E\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010F\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0014H\u0017J\u0008\u0010G\u001a\u00020\u0002H\u0014J\u0008\u0010H\u001a\u00020\u0002H\u0014J\u000e\u0010K\u001a\u00020\u00022\u0006\u0010J\u001a\u00020IJ\u000e\u0010M\u001a\u00020\u00022\u0006\u0010L\u001a\u00020\u000bJ\u0006\u0010N\u001a\u00020\u0002J\u000e\u0010P\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u000bJ\u0018\u0010T\u001a\u00020\u00022\u0008\u0010R\u001a\u0004\u0018\u00010Q2\u0006\u0010S\u001a\u00020\u0016J\u0006\u0010U\u001a\u00020\u0002J\u0010\u0010W\u001a\u00020\u00022\u0008\u0010V\u001a\u0004\u0018\u00010QJ\u0006\u0010X\u001a\u00020\u0002J\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u000eJ\u000e\u0010[\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u000eJ\u0016\u0010^\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u000e2\u0006\u0010]\u001a\u00020\u000eJ\u000e\u0010_\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000eJ\u0006\u0010`\u001a\u00020\u0002J\u0010\u0010b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020aH\u0007J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020cH\u0007J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020eH\u0007R$\u0010n\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u0018\u0010J\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\"\u0010r\u001a\u00020q8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u0016\u0010{\u001a\u00020x8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010D\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0017\u0010\u0080\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010\u007fR\u0018\u0010\u0084\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010\u007fR\u0018\u0010\u0086\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010\u007fR\u0018\u0010\u0088\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010\u007fR\u0017\u0010,\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010\u007fR)\u0010\u0012\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u00078\u0002@BX\u0082\u000e\u00a2\u0006\u0010\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0094\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0091\u0001R\u0019\u0010\u0097\u0001\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u009a\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u001a\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u001a\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u0018\u0010\u00a0\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009f\u0001\u0010}R\u0019\u0010\u00a2\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u0099\u0001R\u0019\u0010\u00a4\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u0099\u0001R\u0018\u0010\u00a6\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a5\u0001\u0010\u007fR\u001c\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u0091\u0001\u00a8\u0006\u00b3\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "E",
        "J",
        "I",
        "D",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "sideType",
        "setOrientation",
        "P",
        "",
        "widthByOrientation",
        "setChildSize",
        "",
        "shapeMaxWidth",
        "paramsMaxWidth",
        "N",
        "dockType",
        "K",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "w",
        "event",
        "x",
        "A",
        "setDownTransOffset",
        "M",
        "getOffsetXByType",
        "getOffsetYByType",
        "L",
        "O",
        "Landroid/graphics/PointF;",
        "getTransPosition",
        "B",
        "Lkotlin/Pair;",
        "getParentWidthHeight",
        "xInParent",
        "yInParent",
        "C",
        "s",
        "u",
        "getWidthByOrientation",
        "bottomOffsetY",
        "Q",
        "S",
        "y",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "lock",
        "z",
        "Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;",
        "getBinding",
        "setEditorBundle",
        "getDockType",
        "getEditorBundle",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;",
        "getParamsContainer",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;",
        "listener",
        "setOnDragListener",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "type",
        "isToolbarAlignedWithSidebar",
        "flushUI",
        "visible",
        "updateFullScreenVisible",
        "isDragging",
        "onInterceptTouchEvent",
        "onTouchEvent",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "setPenViewModel",
        "lassoType",
        "updateLassoTypeUi",
        "updateExcerptTypeUi",
        "eraserType",
        "updateEraserTypeUi",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "postEvent",
        "setSelectByType",
        "onPenTypeRecover",
        "toolType",
        "onPenTypeChanged",
        "showTapeSizeContainer",
        "widthOffset",
        "updateTranslateXOffsetWithAnimation",
        "updateTranslateXOffset",
        "left",
        "right",
        "updateSideBarWidth",
        "updateBottomYOffset",
        "updateView",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;",
        "onDocumentStateEvent",
        "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;",
        "onScreenOnEvent",
        "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;",
        "onCheckEditorAutoReLockEvent",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;",
        "v0",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;",
        "getAnimateCallBack",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;",
        "setAnimateCallBack",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;)V",
        "animateCallBack",
        "w0",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "Landroid/view/View;",
        "toolContainer",
        "Landroid/view/View;",
        "getToolContainer",
        "()Landroid/view/View;",
        "setToolContainer",
        "(Landroid/view/View;)V",
        "Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "x0",
        "Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "ivHolderIcon",
        "y0",
        "Z",
        "z0",
        "F",
        "sideWidth",
        "A0",
        "dragWidth",
        "B0",
        "toolContainerWidthOffset",
        "C0",
        "leftSideBarWidth",
        "D0",
        "rightSideBarWidth",
        "E0",
        "value",
        "F0",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setDockType",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "Landroid/animation/ValueAnimator;",
        "G0",
        "Landroid/animation/ValueAnimator;",
        "valueAnimatorShow",
        "H0",
        "valueAnimatorHide",
        "I0",
        "Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;",
        "binding",
        "J0",
        "Landroid/graphics/PointF;",
        "interceptDown",
        "K0",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;",
        "L0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "M0",
        "lastFullScreenVisible",
        "N0",
        "downScrollPosition",
        "O0",
        "downTransOffset",
        "P0",
        "rightSideOriginWidth",
        "Q0",
        "rightSideAnimator",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "AnimateCallBack",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToolDragView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,830:1\n256#2,2:831\n254#2:833\n338#2:834\n356#2:835\n256#2,2:836\n256#2,2:838\n254#2:840\n256#2,2:841\n256#2,2:843\n256#2,2:845\n256#2,2:847\n256#2,2:849\n256#2,2:851\n256#2,2:853\n256#2,2:855\n277#2,2:861\n53#3,4:857\n*S KotlinDebug\n*F\n+ 1 ToolDragView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ToolDragView\n*L\n242#1:831,2\n263#1:833\n265#1:834\n265#1:835\n467#1:836,2\n468#1:838,2\n572#1:840\n573#1:841,2\n574#1:843,2\n575#1:845,2\n576#1:847,2\n598#1:849,2\n599#1:851,2\n600#1:853,2\n601#1:855,2\n826#1:861,2\n699#1:857,4\n*E\n"
    }
.end annotation


# instance fields
.field public A0:F

.field public B0:F

.field public C0:F

.field public D0:F

.field public E0:F

.field public F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G0:Landroid/animation/ValueAnimator;

.field public H0:Landroid/animation/ValueAnimator;

.field public I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

.field public J0:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public M0:Z

.field public N0:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public O0:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public P0:F

.field public Q0:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public toolContainer:Landroid/view/View;

.field public v0:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

.field public y0:Z

.field public z0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_30:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->N0:Landroid/graphics/PointF;

    .line 9
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    .line 10
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->P0:F

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->E()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J()V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I()V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;-><init>(Z)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final R(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->B0:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M()V

    return-void
.end method

.method public static final synthetic access$checkEditorAutoReLock(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->z(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    return-object p0
.end method

.method public static final synthetic access$setOrientation(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setOrientation(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static final synthetic access$setViewPosition(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->P()V

    return-void
.end method

.method private final getOffsetXByType()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->B0:F

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final getOffsetYByType()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->E0:F

    neg-float p0, p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final getParentWidthHeight()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    new-instance v1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getTransPosition()Landroid/graphics/PointF;
    .locals 6

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getParentWidthHeight()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v4

    invoke-direct {v2, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->drag_view_divider_stroke_width:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v4

    invoke-direct {v2, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-direct {v1, v4, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private final getWidthByOrientation()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->R(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->v(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->t(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final setChildSize(I)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivFullScreen"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_4

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    sub-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_6

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_6
    sub-int/2addr p1, v4

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llUndoRedoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v4, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_a
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llToolContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    sub-int/2addr p1, v4

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DragToolConst;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/toolbar/DragToolConst;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DragToolConst;->getTOOL_SHAPE_PERCENT()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DragToolConst;->getTOOL_PARAMS_PERCENT()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/common/view/MaxWidthFrameLayout;->setMaxWidth(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v2, v0

    :goto_4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, v3, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->N(FF)V

    return-void
.end method

.method private final setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->D()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getNoteConfig()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->saveDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getDockType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final setDownTransOffset(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :goto_1
    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_3
    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private final setOrientation(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->clDragContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    const/16 v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llToolContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->clDragContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llToolContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-interface {p1, p2, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;->onDragStateChange(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->S()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->s()V

    return-void
.end method

.method public final B(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->C(FF)V

    return-void
.end method

.method public final C(FF)V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getParentWidthHeight()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    cmpg-float v3, p2, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, p2, :cond_3

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    sub-float/2addr v0, v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->E0:F

    sub-float/2addr v0, v3

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, p2, :cond_3

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->C0:F

    add-float/2addr p2, v2

    cmpg-float p2, p1, p2

    const/high16 v0, 0x42b40000    # 90.0f

    if-gtz p2, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, p2, :cond_3

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    int-to-float p2, v1

    sub-float/2addr p2, v2

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->D0:F

    sub-float/2addr p2, v1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq p1, p2, :cond_3

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->imageShapeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_7
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->setOrientationChanged(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->stickerParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;->setOrientationChanged(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivDragHolderIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public final E()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    sget v0, Lcom/onyx/galaxy/note/R$id;->ll_tool_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setToolContainer(Landroid/view/View;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_drag_holder_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v4, "setDuration(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G0:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H0:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_120:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->z0:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/bjn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/bjn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/cjn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cjn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/djn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/djn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$initView$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$initView$4;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->addShapeToolChildChangeCallback(Lkotlin/jvm/functions/Function0;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final I()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->guardRedoing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final J()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->guardUndoing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final K(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/statistics/R$string;->dock_type_name_right:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/statistics/R$string;->dock_type_name_left:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/statistics/R$string;->dock_type_name_bottom:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/statistics/R$string;->dock_type_name_top:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "drag_galaxy_toolbar_setting_0001"

    invoke-virtual {v0, p0, v1, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportToolMenuDragEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final L()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerTop:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v3, "toolContainerDividerTop"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v1, "toolContainerDividerBottom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-eq v1, v2, :cond_4

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final M()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getTransPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getOffsetXByType()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getOffsetYByType()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final N(FF)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->getShapeToolWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v5, v4, p1

    if-lez v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    sub-float v4, p1, v4

    :goto_1
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_3
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v7, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_4
    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    add-float/2addr v4, p2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final O()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/high16 v2, 0x42b40000    # 90.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public final P()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getWidthByOrientation()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_height:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setChildSize(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->ensureToolVisible()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-interface {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;->onDragStateChange(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_1
    return-void
.end method

.method public final Q(F)V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->B0:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->P0:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sunia/HTREnginev2/fjn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/fjn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$startRightSideAnimation$1$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$startRightSideAnimation$1$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->Q0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final S()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->Q0:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final flushUI()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$flushUI$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$flushUI$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final getAnimateCallBack()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->v0:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;

    return-object p0
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getParamsContainer()Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    const-string v0, "scrollParamsContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getToolContainer()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->toolContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "toolContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    return p0
.end method

.method public final isToolbarAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SlideBarType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/data/SlideBarTypeKt;->toShortcutType(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p0, v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onCheckEditorAutoReLockEvent(Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "valueAnimatorHide"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const-string v0, "valueAnimatorShow"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->S()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onDocumentStateEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;->getDocumentState()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/DocumentState;->OPENED:Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->N0:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setDownTransOffset(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    return p0
.end method

.method public final onPenTypeChanged(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    const-string v3, "paramsContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->showTapeSizeContainer()V

    goto/16 :goto_9

    :pswitch_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-static {p0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :pswitch_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, p0

    :goto_3
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->stickerParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :pswitch_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v1, p0

    :goto_4
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :pswitch_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v1, p0

    :goto_5
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :pswitch_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object v1, p0

    :goto_6
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :pswitch_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    move-object v1, p0

    :goto_7
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->imageShapeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_9

    :cond_a
    move-object v1, p0

    :goto_8
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPenTypeRecover()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onScreenOnEvent(Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->B(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->N0:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->N0:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->u()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->O0:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v10, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getToolContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v10}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :goto_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public final s()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivFullScreen"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M0:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerTop:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v5, "toolContainerDividerTop"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v6, "toolContainerDividerBottom"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivHolderIcon"

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->tint()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;

    if-eqz v0, :cond_7

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-interface {v0, v3, v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;->onDragStateChange(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_7
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getWidthByOrientation()I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H0:Landroid/animation/ValueAnimator;

    const-string v4, "valueAnimatorHide"

    if-nez v3, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H0:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    new-instance v5, Lcom/sunia/HTREnginev2/ejn;

    invoke-direct {v5, p0, v0, v1}, Lcom/sunia/HTREnginev2/ejn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;II)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->H0:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final setAnimateCallBack(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->v0:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$AnimateCallBack;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->imageShapeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->stickerParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->setCommandDataInfo(Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y()V

    return-void
.end method

.method public final setOnDragListener(Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;

    return-void
.end method

.method public final setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getDockType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getShapeShowList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$3;

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$3;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$4;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$setPenViewModel$4;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->onPenTypeChanged(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShapeToolTypeChangedEvent;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setToolContainer(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->toolContainer:Landroid/view/View;

    return-void
.end method

.method public final showTapeSizeContainer()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getTapePropertyOption()Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->getTapeType()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->setShowSizeContainer(Z)V

    return-void
.end method

.method public final u()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerTop:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v3, "toolContainerDividerTop"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v4, "toolContainerDividerBottom"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivFullScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M0:Z

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivHolderIcon"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->getWidthByOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->setChildSize(I)V

    sub-int v1, v0, v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G0:Landroid/animation/ValueAnimator;

    const-string v4, "valueAnimatorShow"

    if-nez v3, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G0:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    new-instance v5, Lcom/sunia/HTREnginev2/ajn;

    invoke-direct {v5, p0, v0, v1}, Lcom/sunia/HTREnginev2/ajn;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;II)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->G0:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final updateBottomYOffset(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->E0:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M()V

    return-void
.end method

.method public final updateEraserTypeUi(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->updateEraserTypeUI(I)V

    return-void
.end method

.method public final updateExcerptTypeUi()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;->updateExcerptTypeUi()V

    return-void
.end method

.method public final updateFullScreenVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M0:Z

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivFullScreen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateLassoTypeUi(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;->updateLassoTypeUi(I)V

    return-void
.end method

.method public final updateSideBarWidth(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->C0:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->D0:F

    return-void
.end method

.method public final updateTranslateXOffset(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->B0:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->P0:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->M()V

    return-void
.end method

.method public final updateTranslateXOffsetWithAnimation(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->Q(F)V

    return-void
.end method

.method public final updateView()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->flushUI()V

    return-void
.end method

.method public final w(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->J0:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    neg-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A0:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->A()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->y0:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->K0:Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->F0:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-interface {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;->onDragStateChange(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/VibratorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/VibratorUtils;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->vibrator_time_milliseconds:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->vibrator_amplitude:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/VibratorUtils;->vibrator(JF)V

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->L0:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEditorAutoReLockObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView$a;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final z(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->w0:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->isVisibleShapeParams()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->enableShapeToolViewAuto(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->I0:Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    if-nez p0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    const-string v2, "paramsContainer"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez p2, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_5

    const/4 v1, 0x4

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
