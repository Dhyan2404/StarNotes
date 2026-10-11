.class public final Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;,
        Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;,
        Lcom/onyx/android/sdk/textbox/widget/TextBoxView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextBoxView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,677:1\n172#2,2:678\n172#2,2:680\n*S KotlinDebug\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n*L\n157#1:678,2\n159#1:680,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00bb\u00012\u00020\u0001:\u0004\u00bb\u0001\u00bc\u0001B\u0015\u0008\u0016\u0012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b2\u0001\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001B!\u0008\u0016\u0012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b2\u0001\u0012\n\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b6\u0001\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00b8\u0001B*\u0008\u0016\u0012\u0008\u0010\u00b3\u0001\u001a\u00030\u00b2\u0001\u0012\n\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u00b6\u0001\u0012\u0007\u0010\u00b9\u0001\u001a\u00020\u0004\u00a2\u0006\u0006\u0008\u00b4\u0001\u0010\u00ba\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0003J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J \u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u001e\u0010\u001f\u001a\u00020\u00022\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001d2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010!\u001a\u00020 H\u0002J \u0010#\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\"\u001a\u00020 H\u0002J\u0006\u0010$\u001a\u00020\u0002J\u0010\u0010\'\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010%J\u0006\u0010(\u001a\u00020\u0002J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020\u0007J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020\u000bJ\u0006\u0010/\u001a\u00020\u000bJ\u0006\u00100\u001a\u00020\u000bJ\u0006\u00101\u001a\u00020\u000bJ\u0006\u00102\u001a\u00020\u000bJ\u0006\u00103\u001a\u00020\u000bJ\u0006\u00104\u001a\u00020\u000bJ\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205J\u0008\u00108\u001a\u0004\u0018\u000105J\u0008\u0010:\u001a\u0004\u0018\u000109J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u000209J\u0006\u0010=\u001a\u00020\u0002J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u000bJ\u0006\u0010A\u001a\u00020@J\u001e\u0010B\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010C\u001a\u00020\u000bJ\u0008\u0010D\u001a\u0004\u0018\u00010@J.\u0010L\u001a\u00020J2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020E2\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010K\u001a\u00020JJ\u0016\u0010O\u001a\u00020\u00022\u0006\u0010M\u001a\u00020E2\u0006\u0010N\u001a\u00020EJ\u0016\u0010R\u001a\u00020\u00022\u0006\u0010P\u001a\u00020E2\u0006\u0010Q\u001a\u00020EJ\u0006\u0010S\u001a\u00020\u000bJ\u0006\u0010T\u001a\u00020\u000bJ\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u000bJ\u0006\u0010W\u001a\u00020\u0004J\u0006\u0010X\u001a\u00020EJ\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020@J\u000e\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\u000bJ\u000e\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020EJ\u0006\u0010_\u001a\u00020EJ\u000e\u0010`\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000bJ\u0016\u0010b\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020EJ\u0016\u0010e\u001a\u00020\u00022\u0006\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u00020EJ\u0006\u0010f\u001a\u00020\u0002J\u0006\u0010g\u001a\u00020\u0002J\u001e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u0016\u0010j\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010k\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010l\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010m\u001a\u00020@J\u0006\u0010n\u001a\u00020EJ\u0006\u0010o\u001a\u00020EJ\u0006\u0010p\u001a\u00020EJ\u0006\u0010q\u001a\u00020EJ\u0006\u0010r\u001a\u00020EJ\u0006\u0010s\u001a\u00020EJ\u0006\u0010t\u001a\u00020\u0004J\u0006\u0010u\u001a\u00020\u0004J\u0006\u0010v\u001a\u00020EJ\u0006\u0010w\u001a\u00020EJ\u0006\u0010x\u001a\u00020EJ\u0006\u0010y\u001a\u00020EJ\u0006\u0010z\u001a\u00020\u0004J\u0014\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u000b0{2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010}\u001a\u00020\u0002J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0008\u0010\u007f\u001a\u0004\u0018\u00010~J\u0010\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010\u0081\u0001\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u0002J\u0007\u0010\u0084\u0001\u001a\u00020\u0002J\u0007\u0010\u0085\u0001\u001a\u00020\u0002R\u0016\u0010\u0087\u0001\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010\u001fR\u0016\u0010\u0089\u0001\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010\u001fR\u0016\u0010\u008b\u0001\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010\u001fR\u0019\u0010\u008e\u0001\u001a\u00020,8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u007f\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0097\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001a\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u0017\u0010c\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u0010\u0019R\u0016\u0010d\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0019R\u0017\u0010\u009b\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0017\u0010\u009c\u0001\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019R\u001a\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001b\u0010\u00a1\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0018\u0010\u00a5\u0001\u001a\u00030\u00a2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0018\u0010\u00a7\u0001\u001a\u00030\u00a2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a4\u0001R \u0010\u00ac\u0001\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\u001a\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u001c\u0010\u00b1\u0001\u001a\u00030\u00ad\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0008\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u00a8\u0006\u00bd\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "Landroid/widget/FrameLayout;",
        "",
        "p",
        "",
        "getBorderMargin",
        "getContentPadding",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "H",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "type",
        "B",
        "D",
        "C",
        "E",
        "moved",
        "setTextBoxMoved",
        "n",
        "view",
        "width",
        "height",
        "F",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "args",
        "G",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "subject",
        "I",
        "Landroidx/core/view/GestureDetectorCompat;",
        "o",
        "gestureDetector",
        "A",
        "enterEditingMode",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "holder",
        "setEventBusHolder",
        "ensureCreateEditor",
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "getEditor",
        "getEditorView",
        "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;",
        "getViewBinding",
        "isVertical",
        "isReadOnly",
        "isEditing",
        "isOperable",
        "isPrepared",
        "isRendering",
        "isIdleState",
        "Lcom/onyx/android/sdk/textbox/data/EditorState;",
        "editorState",
        "setEditorState",
        "getEditorState",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getLastPoint",
        "lastPoint",
        "updateLastPoint",
        "reset",
        "isDarkTheme",
        "resetEditorBorder",
        "Landroid/graphics/RectF;",
        "getTouchLimitRect",
        "handleTouch",
        "isLimitTranslateRect",
        "getLimitRect",
        "",
        "textBoxOldX",
        "textBoxOldY",
        "richWidth",
        "richHeight",
        "Landroid/graphics/PointF;",
        "offsetXY",
        "adjustTranslateOffsetValue",
        "dx",
        "dy",
        "updatePosition",
        "x",
        "y",
        "resetPosition",
        "isTextBoxMoved",
        "isTextBoxMovable",
        "movable",
        "setTextBoxMovable",
        "getPadding",
        "getNonClickPadding",
        "limitRect",
        "setLimitRect",
        "limitTranslateRect",
        "setLimitTranslateRect",
        "rotate",
        "setEditorRotate",
        "getEditorRotate",
        "changeOrientation",
        "rotateAngle",
        "setOrientation",
        "scaleX",
        "scaleY",
        "setScale",
        "clearTouchLimitRect",
        "clear",
        "newAdded",
        "resetMinimumSize",
        "resetSize",
        "updateWidth",
        "updateHeight",
        "getEditorRect",
        "getEditorContentWidth",
        "getEditorContentHeight",
        "getEditorViewWidth",
        "getEditorViewHeight",
        "getEditorScaleWidth",
        "getEditorScaleHeight",
        "getEditorScaleWidthInt",
        "getEditorScaleHeightInt",
        "getEditorMinWidth",
        "getEditorMinHeight",
        "getEditorScaleX",
        "getEditorScaleY",
        "getEditorCursorBottom",
        "Lio/reactivex/rxjava3/core/Observable;",
        "startEdit",
        "finishEdit",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;",
        "transformListener",
        "setTransformListener",
        "enableHandleTouchEvent",
        "setEnableHandleTouchEvent",
        "showEditorView",
        "enterEditLayout",
        "exitEditLayout",
        "e",
        "TOUCH_SLOP",
        "f",
        "TEXT_ORIENTATION_HORIZONTAL",
        "g",
        "TEXT_ORIENTATION_VERTICAL",
        "h",
        "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;",
        "binding",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;",
        "i",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;",
        "textBoxProps",
        "j",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;",
        "k",
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "editor",
        "l",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "m",
        "padding",
        "paddingNonClick",
        "q",
        "Lcom/onyx/android/sdk/textbox/data/EditorState;",
        "r",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "s",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "textBoxMoved",
        "t",
        "textBoxMovable",
        "u",
        "Lkotlin/Lazy;",
        "getTransformGesture",
        "()Landroidx/core/view/GestureDetectorCompat;",
        "transformGesture",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "getMode",
        "()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "mode",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "OnTransformListener",
        "sdk-textbox_overseasRelease"
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
        "SMAP\nTextBoxView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,677:1\n172#2,2:678\n172#2,2:680\n*S KotlinDebug\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n*L\n157#1:678,2\n159#1:680,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:I

.field public static final x:Z


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

.field public final i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/textbox/editor/IEditor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:F

.field public n:F

.field public o:I

.field public p:F

.field public q:Lcom/onyx/android/sdk/textbox/data/EditorState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->Companion:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;

    const/16 v0, 0xb4

    sput v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->w:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->e:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->u:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p()V

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

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->e:I

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    .line 13
    new-instance p1, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance p1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->u:Lkotlin/Lazy;

    .line 17
    new-instance p1, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    .line 18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p()V

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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 20
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->e:I

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    .line 22
    new-instance p1, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance p1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$transformGesture$2;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->u:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    .line 27
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p()V

    return-void
.end method

.method public static final J(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->I(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->u(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$ensureTransformGesture(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->o()Landroidx/core/view/GestureDetectorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getORIENTATION_VERTICAL_ANGLE$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->w:I

    return v0
.end method

.method public static final synthetic access$getUSING_NATIVE_EDITOR$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->x:Z

    return v0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->J(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->m(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->y(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->x(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->z(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final getBorderMargin()I
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/textbox/R$integer;->note_textbox_border_margin_dp:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private final getContentPadding()I
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/textbox/R$integer;->note_textbox_content_padding_dp:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private final getTransformGesture()Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->w(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->r(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final m(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setOrientation(ZF)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final r(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTransformGesture()Landroidx/core/view/GestureDetectorCompat;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->A(Landroid/view/View;Landroid/view/MotionEvent;Landroidx/core/view/GestureDetectorCompat;)Z

    move-result p0

    return p0
.end method

.method public static final s(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_L:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method private final setTextBoxMoved(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_R:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final u(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_T:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final v(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_B:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final w(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_TL:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final x(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_TR:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final y(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_BL:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method

.method public static final z(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->RESIZE_BR:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Landroid/view/View;Landroid/view/MotionEvent;Landroidx/core/view/GestureDetectorCompat;)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->onEditorTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isCancelAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMovable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    move-result p3

    :cond_2
    return p3
.end method

.method public final B(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateLastPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMoved(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMovable(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->j:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;->onTransformStart(Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    :cond_1
    return-void
.end method

.method public final C(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMovable(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v3

    const-string v4, ", y="

    const-string v5, ", x="

    const-class v6, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMoved(Z)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", transform finish: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v6, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", illegal finish event: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v6, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->j:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;->onTransformFinish(Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    :cond_1
    return-void
.end method

.method public final D(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMovable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->n(Lcom/onyx/android/sdk/textbox/data/TransformType;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->onStartMoving()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMoved(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->E(Lcom/onyx/android/sdk/textbox/data/TransformType;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/textbox/data/TransformType;Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->setMotionEvent(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;->setMotionEvent(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;->setType(Lcom/onyx/android/sdk/textbox/data/TransformType;)Lcom/onyx/android/sdk/textbox/action/TextBoxResizeAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final F(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p0, p2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final G(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float/2addr p1, v2

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p0, v1, v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->F(Landroid/view/View;II)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editor size, w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final H(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limit rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, p0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter event: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", event: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final I(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->PREPARE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->isDarkTheme()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->resetEditorBorder(Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->resetPosition(FF)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRotation()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setOrientation(ZF)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setLimitRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getType()Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;->isAdaptive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->setIsAdaptiveMode(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->startEdit(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getShowEditorDirectly()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->showEditorView()V

    :cond_2
    return-void
.end method

.method public final adjustTranslateOffsetValue(FFIILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8
    .param p5    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "offsetXY"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isLimitTranslateRect()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p5

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int v5, p3, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int v6, p4, p3

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v3, p1

    move v4, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/onyx/android/sdk/base/utils/RectUtils;->limitOffsetInLimitRect(Landroid/graphics/RectF;FFIILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final changeOrientation(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->supportMultiTextOrientation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->isVertical()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorRotate()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setVertical(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidthInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeightInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->resetMinimumSize(ZII)V

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->resetSize(II)V

    new-instance v1, Lcom/sunia/HTREnginev2/qbn;

    invoke-direct {v1, p0, p1, v0}, Lcom/sunia/HTREnginev2/qbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->clearTouchLimitRect()V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    return-void
.end method

.method public final clearTouchLimitRect()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setTouchLimitRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final ensureCreateEditor()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    return-void
.end method

.method public final enterEditLayout()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final enterEditingMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->enterEditLayout()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->enableEdit(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->showForcedInputKeyboard(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final exitEditLayout()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final finishEdit()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->clearTouchLimitRect()V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->finishEdit()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->exitEditLayout()V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->x:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v3, v3, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    const-string v4, "editorContainer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getContentPadding()I

    move-result v5

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-object v3, v3, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getBorderMargin()I

    move-result v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    iget-object v3, v3, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    const-string v4, "touchContainer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getContentPadding()I

    move-result v5

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    iget-object v3, v3, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getBorderMargin()I

    move-result v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v2, v3

    :goto_2
    iget-object v1, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getEditorContentHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditorContentHeight()F

    move-result p0

    return p0
.end method

.method public final getEditorContentWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditorContentWidth()F

    move-result p0

    return p0
.end method

.method public final getEditorCursorBottom()I
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getContentPadding()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getCursorPosition(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1

    :cond_0
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    add-int/2addr v1, p0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/textbox/R$dimen;->android_selection_handle_height:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_0
.end method

.method public final getEditorMinHeight()F
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/textbox/R$dimen;->move_selection_handler_icon_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sget v2, Lcom/onyx/android/sdk/textbox/R$dimen;->textbox_selection_handler_icon_size:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorMinHeight()F

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getEditorMinWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorMinWidth()F

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getEditorMinWidth()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getEditorRect()Landroid/graphics/RectF;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getTextBoxRect(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getLocationInParent(Landroid/view/View;)[I

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-direct {v3, v4, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->rotatePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidth()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeight()F

    move-result p0

    add-float/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public final getEditorRotate()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getRotate()F

    move-result p0

    return p0
.end method

.method public final getEditorScaleHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleY()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getEditorScaleHeightInt()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeight()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getEditorScaleWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getEditorScaleWidthInt()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidth()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getEditorScaleX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->m:F

    return p0
.end method

.method public final getEditorScaleY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->n:F

    return p0
.end method

.method public final getEditorState()Lcom/onyx/android/sdk/textbox/data/EditorState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    return-object p0
.end method

.method public final getEditorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getEditorViewHeight()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorViewHeight()F

    move-result p0

    return p0
.end method

.method public final getEditorViewWidth()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorViewWidth()F

    move-result p0

    return p0
.end method

.method public final getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    return-object p0
.end method

.method public final getNonClickPadding()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p:F

    return p0
.end method

.method public final getPadding()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->o:I

    return p0
.end method

.method public final getTouchLimitRect()Landroid/graphics/RectF;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v5, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    aget v1, v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-direct {v3, v5, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setTouchLimitRect(Landroid/graphics/RectF;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isFingerTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getEnableHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->H(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    const-string v4, "processFinishEvent, out limit rect."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->C(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->D(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->C(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->B(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    :goto_0
    return v3
.end method

.method public final isEditing()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorState;->isEditing()Z

    move-result p0

    return p0
.end method

.method public final isIdleState()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorState;->isIdleState()Z

    move-result p0

    return p0
.end method

.method public final isLimitTranslateRect()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->isLimitTranslateRect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOperable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorState;->isPrepared()Z

    move-result p0

    return p0
.end method

.method public final isReadOnly()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorState;->isReadOnly()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRendering()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/EditorState;->isRendering()Z

    move-result p0

    return p0
.end method

.method public final isTextBoxMovable()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isTextBoxMoved()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->isVertical()Z

    move-result p0

    return p0
.end method

.method public final n(Lcom/onyx/android/sdk/textbox/data/TransformType;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    iget p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->e:I

    sget-object v1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    cmpl-float p1, p1, p0

    if-gez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final o()Landroidx/core/view/GestureDetectorCompat;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v1, v1, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    const-string v2, "touchContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;)V

    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method public final p()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->btnMove:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/obn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/obn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    new-instance v3, Lcom/sunia/HTREnginev2/rbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionLeftHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/sbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/sbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionRightHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/tbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/tbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionTopHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/ubn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ubn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionBottomHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/vbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/vbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftTopHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/wbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/wbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightTopHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/xbn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftBottomHandle:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/ybn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ybn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightBottomHandle:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/zbn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getBorderMargin()I

    move-result v0

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getContentPadding()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->o:I

    int-to-float v0, v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/textbox/R$dimen;->selection_handler_click_padding:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->m:F

    iput v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->n:F

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->IDLE:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorRotate(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->ensureCreateEditor()V

    return-void
.end method

.method public final resetEditorBorder(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->h:Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    if-eqz p1, :cond_1

    sget v1, Lcom/onyx/android/sdk/textbox/R$drawable;->textbox_square_border_white:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/onyx/android/sdk/textbox/R$drawable;->textbox_square_border_primary:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/high16 p1, -0x1000000

    :goto_1
    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setCaretColor(I)V

    return-void
.end method

.method public final resetMinimumSize(ZII)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->resetMinimumSize(ZII)V

    return-void
.end method

.method public final resetPosition(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final resetSize(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateWidth(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->F(Landroid/view/View;II)V

    return-void
.end method

.method public final setEditorRotate(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setRotate(F)V

    return-void
.end method

.method public final setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->q:Lcom/onyx/android/sdk/textbox/data/EditorState;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->r:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/TextInputStateChangeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/event/TextInputStateChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setEnableHandleTouchEvent(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setEnableHandleTouchEvent(Z)V

    return-void
.end method

.method public final setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->r:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V

    return-void
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)V
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "limitRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->p:F

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v2

    invoke-direct {p1, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setLimitRect(Landroid/graphics/RectF;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/textbox/R$dimen;->selection_handler_click_padding:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/onyx/android/sdk/textbox/R$dimen;->textbox_selection_handler_icon_size:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->translate(Landroid/graphics/RectF;FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setLimitRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setLimitTranslateRect(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setLimitTranslateRect(Z)V

    return-void
.end method

.method public final setOrientation(ZF)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setVertical(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->f:I

    :goto_0
    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setTextOrientation(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorRotate(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->v:Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->onOrientationChanged(Z)V

    return-void
.end method

.method public final setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->m:F

    iput p2, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->n:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->setScale(FF)V

    return-void
.end method

.method public final setTextBoxMovable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final setTransformListener(Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->j:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;

    return-void
.end method

.method public final showEditorView()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->enterEditLayout()V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->k:Lcom/onyx/android/sdk/textbox/editor/IEditor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->showEditorView()V

    :cond_1
    return-void
.end method

.method public final startEdit(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editor scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getRenderRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->i:Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->g:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;->setVertical(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v3, v6

    :cond_2
    invoke-virtual {p0, v3, v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->resetMinimumSize(ZII)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getScaleY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setScale(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->G(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/pbn;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunia/HTREnginev2/pbn;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final updateHeight(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    div-float/2addr v2, v0

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final updateLastPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lastPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->l:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final updatePosition(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final updateWidth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    div-float/2addr v2, v0

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getPadding()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
