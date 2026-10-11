.class public final Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u0000 \u0099\u00012\u00020\u0001:\u0002\u0099\u0001B\u000b\u0008\u0017\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001B\u0013\u0008\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0096\u0001B\u001f\u0008\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010#\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0097\u0001B\u0015\u0008\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0098\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J*\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010H\u0002J \u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010 \u001a\u00020\u000eH\u0002J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0002J\u0018\u0010\'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0002J\u0008\u0010(\u001a\u00020\u000eH\u0002J\u0018\u0010+\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J\u0018\u0010,\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J \u0010/\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u00172\u0006\u0010.\u001a\u00020-H\u0002J\u0018\u00100\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J\u000e\u00102\u001a\u0002012\u0006\u0010*\u001a\u00020\u0017J\u000e\u00104\u001a\u0002012\u0006\u00103\u001a\u00020\u0017J\u000e\u00106\u001a\u0002012\u0006\u00105\u001a\u00020\u0004J\u0010\u00107\u001a\u0002012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0006\u00108\u001a\u00020\u0017J\u0010\u00109\u001a\u0002012\u0008\u0010$\u001a\u0004\u0018\u00010#J\u0010\u0010<\u001a\u0002012\u0008\u0010;\u001a\u0004\u0018\u00010:J\u0008\u0010=\u001a\u0004\u0018\u00010:J\u000e\u0010?\u001a\u0002012\u0006\u0010>\u001a\u00020\u0010J\u0006\u0010@\u001a\u00020\u0010J\u000e\u0010B\u001a\u0002012\u0006\u0010A\u001a\u00020\u0004J\u0006\u0010C\u001a\u00020\u0004J\u0006\u0010D\u001a\u00020\u0004J\u000e\u0010F\u001a\u0002012\u0006\u0010E\u001a\u00020\u0004J\u0008\u0010G\u001a\u0004\u0018\u00010#J\u0006\u0010H\u001a\u00020#J\u0006\u0010I\u001a\u00020\u0010J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020!J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010M\u001a\u00020!J\u0006\u0010O\u001a\u00020\u0004J\u0014\u0010R\u001a\u00020\u00002\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020-0PJ\u0006\u0010S\u001a\u00020\u0004J\u0016\u0010U\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u0004J\u000e\u0010V\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010Y\u001a\u00020T2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020W0P2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010[\u001a\u00020Z2\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\\\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u000e\u0010]\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010^\u001a\u00020\u0010J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010a\u001a\u00020\u0010J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0010J\u0010\u0010e\u001a\u0002012\u0008\u0008\u0002\u0010d\u001a\u00020\u0010J\u0006\u0010f\u001a\u00020\u0010J\u0006\u0010g\u001a\u00020!J\u000e\u0010i\u001a\u0002012\u0006\u0010h\u001a\u00020!J\u000e\u0010k\u001a\u00020\u00002\u0006\u0010j\u001a\u00020\u0010J\u0006\u0010l\u001a\u00020\u000eJ\u000e\u0010m\u001a\u0002012\u0006\u0010$\u001a\u00020#J\u000e\u0010o\u001a\u00020\u00172\u0006\u0010n\u001a\u00020\u0017J\u0006\u0010p\u001a\u00020\u000eJ\u0006\u0010q\u001a\u00020\u000eJ\u0016\u0010t\u001a\u00020\u00022\u0006\u0010r\u001a\u00020\u00102\u0006\u0010s\u001a\u00020\u0010J\u0006\u0010u\u001a\u00020\u0017J\u0016\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010J\u000e\u0010x\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0010J\u000e\u0010z\u001a\u00020\u00042\u0006\u0010.\u001a\u00020yJ\u0016\u0010}\u001a\u00020\u000e2\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0016\u0010~\u001a\u00020\u000e2\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0010\u0010\u007f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010$\u001a\u00020#J\u0011\u0010\u0080\u0001\u001a\u00020\u000e2\u0008\u0008\u0002\u0010$\u001a\u00020#J\u0007\u0010\u0081\u0001\u001a\u00020#J\u0007\u0010\u0082\u0001\u001a\u00020\u0017J\u0007\u0010\u0083\u0001\u001a\u00020\u0004J\u0017\u0010\u0084\u0001\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0007\u0010\u0085\u0001\u001a\u00020\u0000R\u0018\u0010\u0087\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008/\u0010\u0088\u0001R\u0019\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00080\u0010\u0088\u0001R\u0017\u0010*\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008%\u0010\u0086\u0001R\u0018\u0010\u008a\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\'\u0010\u0086\u0001R\u0017\u0010>\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0016\u0010\u008b\u0001R\u0017\u0010C\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008(\u0010\u008c\u0001R\u0017\u0010D\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008,\u0010\u008c\u0001R\u0017\u0010J\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008 \u0010\u008b\u0001R\u0017\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008+\u0010\u008b\u0001R\u0017\u0010b\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0014\u0010\u008b\u0001R\u0017\u0010j\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u008b\u0001R\u0017\u0010M\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u008d\u0001R\u0019\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\t\u0010\u008e\u0001R\u0018\u0010\u008f\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\n\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000c\u0010\u008d\u0001R\u001e\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020-0P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000b\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0005\u0010\u008c\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "",
        "r",
        "hitTestPoint",
        "Lcom/onyx/android/sdk/base/data/SizeF;",
        "selectionRenderSize",
        "n",
        "o",
        "q",
        "p",
        "m",
        "Landroid/graphics/PointF;",
        "centerPoint",
        "",
        "radius",
        "v",
        "l",
        "k",
        "value",
        "f",
        "Landroid/graphics/RectF;",
        "rect",
        "s",
        "u",
        "sx",
        "sy",
        "t",
        "rectF",
        "a",
        "i",
        "",
        "position",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "d",
        "handlerPosition",
        "e",
        "g",
        "pos",
        "originRect",
        "j",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;",
        "type",
        "b",
        "c",
        "",
        "setOriginRect",
        "visibleRectF",
        "setVisibleRect",
        "limit",
        "setScaleInUnRotateLimitRect",
        "setLimitRect",
        "getLimitRect",
        "setRenderMatrix",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "trackPointList",
        "setTrackPointList",
        "getTrackPointList",
        "renderScale",
        "setRenderScale",
        "getRenderScale",
        "singleSelection",
        "setSingleSelection",
        "isSingleSelection",
        "isTextSelection",
        "textSelection",
        "setTextSelection",
        "getRenderMatrix",
        "getSelectionMatrix",
        "getSelectionHandleHeight",
        "selectionHandleHeight",
        "setSelectionHandleHeight",
        "getOrientation",
        "orientation",
        "setOrientation",
        "isVertical",
        "",
        "types",
        "setSelectionHandleTypes",
        "isQuickCopyEnable",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "textInputTouchPointHitTest",
        "V2TouchPointHitTest",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "V3TouchPointHitTest",
        "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;",
        "touchCornerPointHitTest",
        "hitTestTranslate",
        "hitTestTrackPoint",
        "getTouchDeviationRange",
        "touchDeviationRange",
        "setTouchDeviationRange",
        "getSelectionRotateCircleRadius",
        "selectionRotateCircleRadius",
        "setSelectionRotateCircleRadius",
        "scale",
        "expandSelectionRect",
        "getSelectionCircleRadius",
        "getSelectionMinSize",
        "size",
        "setCustomSelectionMinSize",
        "selectionCircleRadius",
        "setSelectionCircleRadius",
        "getRotateHandlerPoint",
        "updateRotationPosition",
        "selectRectF",
        "redressSelectionRect",
        "getNoteRotateHandlerPoint",
        "getCenterPoint",
        "dx",
        "dy",
        "onTranslate",
        "getBoundRect",
        "onScale",
        "addedAngle",
        "onRotate",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "onMirror",
        "x",
        "y",
        "getMatrixPoint",
        "getRenderMatrixPoint",
        "getCurrentRenderRotationPoint",
        "getCurrentRenderQuickCopyPoint",
        "getMatrix",
        "getOriginRect",
        "isEmpty",
        "isPointInLimitRect",
        "copy",
        "Landroid/graphics/RectF;",
        "limitRect",
        "Landroid/graphics/Matrix;",
        "matrix",
        "visibleRect",
        "F",
        "Z",
        "I",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "customSelectionMinSize",
        "scaleHandlerPosition",
        "Ljava/util/List;",
        "selectionHandleTypes",
        "scaleInUnRotateLimitRect",
        "<init>",
        "()V",
        "(Landroid/graphics/RectF;)V",
        "(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V",
        "(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIMIT_SELECTION_BITMAP_SIZE:J = 0x2800000L

.field public static final SCALE_HANDLER_POS_BOTTOM:I = 0x3

.field public static final SCALE_HANDLER_POS_LEFT:I = 0x0

.field public static final SCALE_HANDLER_POS_RIGHT:I = 0x2

.field public static final SCALE_HANDLER_POS_TOP:I = 0x1

.field public static final SELECTION_CIRCLE_RADIUS:F = 10.0f

.field public static final SELECTION_HANDLE_HEIGHT:F = 50.0f

.field public static final SELECTION_RECT_PADDING:F = 0.0f

.field public static final SELECTION_SIZE_LIMIT_VALUE_FOR_TRIGGER_TOUCH_DEVIATION:I = 0x4b

.field public static final SELECTION_TRACK_PADDING:F = 8.0f

.field public static final TOUCH_DEVIATION_RANGE:F = 30.0f

.field public static s:F

.field public static t:F

.field public static u:F

.field public static final v:F

.field public static final w:F

.field public static final x:F

.field public static final y:F


# instance fields
.field public a:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:F

.field public g:Z

.field public h:Z

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_handler_icon_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_handler_icon_space:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->t:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_handler_icon_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_rect_stretch_rect_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_rect_stretch_rect_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->x:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_rotation_handle_offset:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->y:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    .line 6
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    .line 9
    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    .line 10
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_circle_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    .line 13
    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    .line 20
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 21
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 22
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    .line 23
    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    .line 24
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_circle_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    .line 27
    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    .line 29
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    .line 35
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 36
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 37
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    .line 38
    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    .line 39
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_circle_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    const/4 v0, 0x2

    .line 41
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    .line 42
    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    .line 51
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 52
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    const/high16 v0, 0x41f00000    # 30.0f

    .line 53
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    .line 54
    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    .line 55
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->selection_circle_radius:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    .line 58
    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    .line 63
    iget-boolean v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->g:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->g:Z

    .line 64
    iget-boolean v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h:Z

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    .line 66
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 67
    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setRenderScale(F)V

    .line 70
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionHandleHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setSelectionHandleHeight(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 71
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionCircleRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setSelectionCircleRadius(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 72
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionRotateCircleRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setSelectionRotateCircleRadius(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 73
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getTouchDeviationRange()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setTouchDeviationRange(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 74
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getTrackPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setTrackPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    .line 75
    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->m:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setOrientation(I)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 76
    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setSelectionHandleTypes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 77
    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    .line 78
    iget p1, p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    return-void
.end method

.method public static final synthetic access$getROTATION_HANDLE_OFFSET$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->y:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_RECT_HANDLER_SIZE$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_RECT_HANDLER_SPACE_SIZE$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->t:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_RECT_STRETCH_RECT_HEIGHT$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->x:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_RECT_STRETCH_RECT_WIDTH$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_RECT_STROKE_WIDTH$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v:F

    return v0
.end method

.method public static final synthetic access$getSELECTION_ROTATE_CIRCLE_RADIUS$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    return v0
.end method

.method public static final synthetic access$setSELECTION_RECT_HANDLER_SIZE$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    return-void
.end method

.method public static final synthetic access$setSELECTION_RECT_HANDLER_SPACE_SIZE$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->t:F

    return-void
.end method

.method public static final synthetic access$setSELECTION_ROTATE_CIRCLE_RADIUS$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u:F

    return-void
.end method

.method public static synthetic expandSelectionRect$default(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string p2, "FLOAT_ONE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->expandSelectionRect(F)V

    return-void
.end method

.method public static synthetic getCurrentRenderQuickCopyPoint$default(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/PointF;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCurrentRenderQuickCopyPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCurrentRenderRotationPoint$default(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/PointF;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCurrentRenderRotationPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionCircleRadius()F

    move-result p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v(Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;F)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final V2TouchPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k()Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionRotateCircleRadius()F

    move-result v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v(Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;F)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->hitTestTranslate(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :goto_0
    return-object p0
.end method

.method public final V3TouchPointHitTest(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k()Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object p2

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasTextShape(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasExcerptShape(Ljava/util/List;)Z

    move-result v3

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasExcerptShape(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->isQuickCopyEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->hasExcerptShape(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->QuickCopy:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->hitTestTranslate(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :goto_0
    return-object p0
.end method

.method public final a(FFLandroid/graphics/RectF;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionMinSize()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    mul-float/2addr v4, v5

    int-to-float v0, v0

    cmpg-float v4, v4, v0

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    move p2, v3

    :goto_2
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    mul-float/2addr v1, v5

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    return v3

    :cond_4
    if-eqz v4, :cond_5

    if-nez v0, :cond_9

    :cond_5
    return v2

    :cond_6
    if-eqz p1, :cond_7

    if-nez v4, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    :cond_8
    return v3

    :cond_9
    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v2, v3

    :cond_b
    :goto_4
    return v2
.end method

.method public final b(ILandroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;)Landroid/graphics/PointF;
    .locals 9

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->y:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v4

    :goto_0
    sget v5, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->t:F

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v5

    div-float/2addr v5, v4

    sget v6, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result p0

    div-float/2addr p0, v4

    int-to-float v4, v2

    mul-float/2addr v4, p0

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v4

    int-to-float v7, v3

    div-float/2addr v2, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v7

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v4

    invoke-static {}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v4, 0x0

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-float/2addr v5, p0

    int-to-float p3, p3

    mul-float/2addr v5, p3

    div-float/2addr p0, v7

    add-float/2addr v5, p0

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v3, :cond_1

    new-instance p0, Landroid/graphics/PointF;

    add-float/2addr v2, v5

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v0

    invoke-direct {p0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v1

    add-float/2addr v8, v5

    invoke-direct {p0, p1, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    add-float/2addr v2, v5

    iget p1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    invoke-direct {p0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    add-float/2addr v8, v5

    invoke-direct {p0, p1, v8}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    return-object p0
.end method

.method public final c(ILandroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 3

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->y:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p0

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p0

    add-float/2addr v1, v2

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v0

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p0

    add-float/2addr v1, p2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p0

    add-float/2addr v1, v2

    iget p0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v0

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p0

    add-float/2addr v1, p2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p1
.end method

.method public final copy()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;-><init>(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-object v0
.end method

.method public final d(ILandroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-object p1
.end method

.method public final e(ILandroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d(ILandroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p2

    :goto_0
    const/4 v0, 0x1

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    div-float/2addr v0, p0

    div-float/2addr v0, p2

    sget p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    mul-float/2addr p0, v0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final expandSelectionRect(F)V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionMinSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, p1

    int-to-float v0, v0

    cmpg-float v3, v1, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-gez v3, :cond_0

    sub-float v1, v0, v1

    int-to-float v3, v4

    div-float/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    cmpg-float v3, v2, v0

    if-gez v3, :cond_1

    sub-float/2addr v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_1
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, v0, v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    return-void
.end method

.method public final f(F)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderScale()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final g()Landroid/graphics/PointF;
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundRect()Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public final getCenterPoint()Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentRenderQuickCopyPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method public final getCurrentRenderRotationPoint(Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method public final getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getMatrixPoint(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p0, Landroid/graphics/PointF;

    aget p2, v0, v1

    aget p1, v0, p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getNoteRotateHandlerPoint()Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->m:I

    return p0
.end method

.method public final getOriginRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRenderMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getRenderMatrixPoint(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    aget p2, v0, v1

    aget p1, v0, p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getRenderScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    return p0
.end method

.method public final getRotateHandlerPoint()Landroid/graphics/PointF;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionHandleHeight()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p0

    iget p0, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    cmpl-float p0, p0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-lez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v5

    :goto_0
    mul-float/2addr v2, p0

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    mul-float/2addr v4, v3

    new-instance p0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v4

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getSelectionCircleRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    return p0
.end method

.method public final getSelectionHandleHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    return p0
.end method

.method public final getSelectionMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-object v0
.end method

.method public final getSelectionMinSize()I
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->selection_size_limit_value:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSelectionRotateCircleRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    return p0
.end method

.method public final getTouchDeviationRange()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    return p0
.end method

.method public final getTrackPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final h(ILandroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->QUICK_COPY:Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b(ILandroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final hitTestTrackPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v1, v4

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    aget p0, v1, v2

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    new-instance v2, Landroid/graphics/Region;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :goto_0
    return-object p0
.end method

.method public final hitTestTranslate(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v3

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    aget p0, v0, v4

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final i()Landroid/graphics/PointF;
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j(ILandroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isPointInLimitRect(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

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

.method public final isQuickCopyEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->QUICK_COPY:Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSingleSelection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->g:Z

    return p0
.end method

.method public final isTextSelection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->m:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(ILandroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;->ROTATE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->b(ILandroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lcom/onyx/android/sdk/base/data/SizeF;
    .locals 7

    new-instance v0, Lcom/onyx/android/sdk/base/data/SizeF;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/SizeF;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getRenderMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object p0

    sget-object v3, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointDistance(FFFF)F

    move-result v2

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1, v5, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointDistance(FFFF)F

    move-result p0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/SizeF;->setWidth(F)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/SizeF;->setHeight(F)V

    return-object v0
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/SizeF;)F
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SizeF;->getWidth()F

    move-result v0

    const/high16 v1, 0x42960000    # 75.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SizeF;->getHeight()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getTouchDeviationRange()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->g()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionRotateCircleRadius()F

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v(Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;F)Z

    move-result p0

    return p0
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionRotateCircleRadius()F

    move-result v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->v(Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;F)Z

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

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

.method public final onMirror(Lcom/onyx/android/sdk/geometry/data/MirrorType;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->mirror(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/geometry/data/MirrorType;Landroid/graphics/PointF;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onRotate(F)Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    neg-float p1, p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public final onScale(FF)Z
    .locals 7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getDistanceXAfterScale(Landroid/graphics/RectF;F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getDistanceYAfterScale(Landroid/graphics/RectF;F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->t(FF)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a(FFLandroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public final onTranslate(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getRectFSize(Landroid/graphics/RectF;)F

    move-result v3

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getRectFSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    return-object v1

    :cond_1
    sget-object v4, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v8, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v9, v0

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {v4 .. v10}, Lcom/onyx/android/sdk/base/utils/RectUtils;->limitOffsetInLimitRect(Landroid/graphics/RectF;FFIILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s(Landroid/graphics/RectF;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, p1

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->u(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, v4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    return-object v1
.end method

.method public final p(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

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

.method public final q(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

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

.method public final r(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getSelectionMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final redressSelectionRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "selectRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/16 v1, 0x168

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    const/16 v1, 0x2d

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/16 v1, 0x5a

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p0, v0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    sget v0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->s:F

    sget v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->y:F

    add-float/2addr v0, v1

    if-eq p0, v3, :cond_2

    if-eq p0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final s(Landroid/graphics/RectF;)Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final setCustomSelectionMinSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o:I

    return-void
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setOrientation(I)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->m:I

    return-object p0
.end method

.method public final setOriginRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRenderMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->c:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setRenderScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f:F

    return-void
.end method

.method public final setScaleInUnRotateLimitRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->r:Z

    return-void
.end method

.method public final setSelectionCircleRadius(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->l:F

    return-object p0
.end method

.method public final setSelectionHandleHeight(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->i:F

    return-object p0
.end method

.method public final setSelectionHandleTypes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q:Ljava/util/List;

    return-object p0
.end method

.method public final setSelectionRotateCircleRadius(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k:F

    return-object p0
.end method

.method public final setSingleSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->g:Z

    return-void
.end method

.method public final setTextSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->h:Z

    return-void
.end method

.method public final setTouchDeviationRange(F)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->j:F

    return-object p0
.end method

.method public final setTrackPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method

.method public final setVisibleRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "visibleRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public final t(FF)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

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

.method public final textInputTouchPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k()Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->o(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->hitTestTranslate(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    :goto_0
    return-object p0
.end method

.method public final touchCornerPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->k()Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->LeftTop:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->RightTop:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->LeftBottom:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrixPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->w(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;FILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->RightBottom:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;

    :goto_0
    return-object p0
.end method

.method public final u(Landroid/graphics/RectF;)Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final updateRotationPosition(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e(ILandroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e(ILandroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->p:I

    :cond_3
    return-void
.end method

.method public final v(Landroid/graphics/PointF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/SizeF;F)Z
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->f(F)F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->inCircle(FFFFF)Z

    move-result p0

    return p0
.end method
