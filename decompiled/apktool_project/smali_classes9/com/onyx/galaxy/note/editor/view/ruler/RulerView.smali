.class public final Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$Companion;,
        Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRulerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,732:1\n121#2,8:733\n30#2,7:741\n332#3:748\n1#4:749\n*S KotlinDebug\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n*L\n200#1:733,8\n204#1:741,7\n291#1:748\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u0098\u00012\u00020\u0001:\u0004\u0098\u0001\u0099\u0001B\u0015\u0008\u0016\u0012\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001B\u001f\u0008\u0016\u0012\u0008\u0010\u0092\u0001\u001a\u00030\u0091\u0001\u0012\u0008\u0010\u0096\u0001\u001a\u00030\u0095\u0001\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0097\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J0\u0010!\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J(\u0010$\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u000f\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u001dH\u0002J \u0010\'\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001dH\u0002J(\u0010)\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002J(\u0010*\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002J@\u0010-\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J \u0010.\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001dH\u0002J\u0008\u0010/\u001a\u00020\u0019H\u0002J\u0008\u00100\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0007H\u0002J\u0008\u00103\u001a\u00020\u0002H\u0002J\u0010\u00104\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001dH\u0002J\u0008\u00101\u001a\u00020\u0002H\u0002J\u0008\u00105\u001a\u00020\u0002H\u0002J\u0008\u00106\u001a\u00020\u0002H\u0002J\u0010\u00109\u001a\u00020\u00132\u0006\u00108\u001a\u000207H\u0002J\u000e\u0010:\u001a\u00020\u00022\u0006\u00108\u001a\u000207J\u0006\u0010;\u001a\u00020\u0019J\u0006\u0010<\u001a\u000207J\u0016\u0010?\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\u001dJ\u0010\u0010B\u001a\u00020\u00022\u0008\u0010A\u001a\u0004\u0018\u00010@J0\u0010H\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00132\u0006\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u00020\u00132\u0006\u0010G\u001a\u00020\u0013H\u0014J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J\u0010\u0010J\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u0016\u0010K\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u0010L\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00102R\u0016\u0010M\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u00102R\u0016\u0010N\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u00102R\u0016\u0010O\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u00102R\u0016\u0010P\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u00102R\u0014\u0010Q\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u00102R\u0016\u0010R\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u00102R\u0016\u0010T\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010SR\u0016\u0010U\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010SR\u0014\u0010V\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010SR\u0014\u0010W\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00102R\u0014\u0010X\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010SR\u0014\u0010Y\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010SR\u0014\u0010Z\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u00102R\u0016\u0010\\\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010[R\u0016\u0010^\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010]R\u0016\u0010_\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010[R\u0016\u0010b\u001a\u00020`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010aR\u0016\u0010c\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u00102R\u0016\u0010e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010dR2\u0010j\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020g0fj\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020g`h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010iR\u0016\u0010l\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010]R\u0016\u0010n\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010]R\u0016\u0010p\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010]R\u0016\u0010r\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010]R\u0016\u0010t\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010]R\u0016\u0010v\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010]R\u0016\u0010x\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010]R\u0016\u0010z\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010]R\u0016\u0010}\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0017\u0010\u0080\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u001a\u0010\u0084\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u008a\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010]R\u0019\u0010\u008d\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010kR\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;",
        "Landroid/view/View;",
        "",
        "G",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "type",
        "H",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "t",
        "u",
        "v",
        "s",
        "y",
        "x",
        "z",
        "A",
        "r",
        "",
        "b",
        "E",
        "D",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/RectF;",
        "rect",
        "l",
        "m",
        "",
        "height",
        "Landroid/graphics/Paint;",
        "paint",
        "n",
        "",
        "value",
        "o",
        "centerX",
        "centerY",
        "g",
        "radius",
        "h",
        "j",
        "angle",
        "lineLength",
        "i",
        "k",
        "p",
        "w",
        "e",
        "F",
        "f",
        "c",
        "B",
        "d",
        "Landroid/graphics/Matrix;",
        "matrix",
        "q",
        "setRulerMatrix",
        "getRulerRect",
        "getRulerMatrix",
        "width",
        "millimeter",
        "updatePageSize",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;",
        "listener",
        "setRulerListener",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "onDraw",
        "onTouchEvent",
        "pageWidth",
        "pageMillimeter",
        "rulerHeight",
        "smallScaleHeight",
        "middleScaleHeight",
        "bigScaleHeight",
        "angleRadius",
        "scaleInterval",
        "Landroid/graphics/Paint;",
        "backgroundPaint",
        "scalePaint",
        "scaleTextPaint",
        "scaleTextSize",
        "anglePaint",
        "angleTextPaint",
        "angleTextSize",
        "Z",
        "angleMode",
        "I",
        "anglePointId",
        "visibleAngleLine",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;",
        "rulerScaleType",
        "angleScaleHeight",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "unitsType",
        "Ljava/util/HashMap;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "touchEventMap",
        "J",
        "rulerBackgroundColor",
        "O",
        "rulerBackgroundBorderColor",
        "Q",
        "textColor",
        "k0",
        "originalScaleColor",
        "q0",
        "scaleColor",
        "t0",
        "angleBackgroundColor",
        "u0",
        "angleColor",
        "v0",
        "angleSelectedColor",
        "w0",
        "Landroid/graphics/RectF;",
        "rulerRect",
        "x0",
        "Landroid/graphics/Matrix;",
        "rulerMatrix",
        "Landroid/view/GestureDetector;",
        "y0",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;",
        "z0",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;",
        "rulerUnitsPopupWindow",
        "A0",
        "multiHandleMode",
        "",
        "B0",
        "multiHandleModeLastTime",
        "C0",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;",
        "rulerListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Companion",
        "RulerListener",
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
        "SMAP\nRulerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,732:1\n121#2,8:733\n30#2,7:741\n332#3:748\n1#4:749\n*S KotlinDebug\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n*L\n200#1:733,8\n204#1:741,7\n291#1:748\n*E\n"
    }
.end annotation


# static fields
.field public static final ADSORB_LIMIT:I = 0x2d

.field public static final ADSORB_MIN_CHANGE:I = 0x2

.field public static final ANGLE_DOUBLE_CLICK_VALUE:I = 0x5a

.field public static final ANGLE_SCALE_STEP:I = 0xf

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ROTATION_CHANGE_MIN_ANGLE:D = 0.2

.field public static final RULER_HITTEST_SCALE_RANGE:F = 40.0f

.field public static final RULER_MULTI_HANDLE_DEFAULT_MODE:I = 0x0

.field public static final RULER_MULTI_HANDLE_ROTATION_MODE:I = 0x1

.field public static final RULER_MULTI_HANDLE_TRANSFORM_MODE:I = 0x2


# instance fields
.field public A0:I

.field public B0:J

.field public C0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public J:I

.field public O:I

.field public Q:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public final k:F

.field public k0:I

.field public l:F

.field public m:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:F

.field public final q:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q0:I

.field public final r:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:F

.field public t:Z

.field public t0:I

.field public u:I

.field public u0:I

.field public v:Z

.field public v0:I

.field public w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w0:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:F

.field public x0:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y0:Landroid/view/GestureDetector;

.field public z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_height:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->g:F

    .line 3
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_small_scale:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->h:F

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_middle_scale:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i:F

    .line 5
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_big_scale:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j:F

    .line 6
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_radius:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    .line 8
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_scale_text_size:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->p:F

    .line 9
    sget v1, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_text_size:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->s:F

    .line 10
    sget-object v2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    .line 11
    sget v2, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_scale:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    .line 12
    sget-object v2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    .line 14
    sget v2, Lcom/onyx/galaxy/note/R$color;->ruler_background:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    .line 15
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->O:I

    .line 16
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_01:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    .line 17
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_01:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k0:I

    .line 18
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_03:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q0:I

    .line 19
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_07:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t0:I

    .line 20
    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u0:I

    .line 21
    sget v2, Lcom/onyx/galaxy/note/R$color;->warning_200:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v0:I

    .line 22
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    .line 23
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 25
    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    .line 28
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    sget v4, Lcom/onyx/galaxy/note/R$dimen;->ruler_scale_width:I

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    .line 32
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 33
    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->o:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 43
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget v1, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_width:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_height:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->g:F

    .line 50
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_small_scale:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->h:F

    .line 51
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_middle_scale:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i:F

    .line 52
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_big_scale:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j:F

    .line 53
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_radius:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 54
    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    .line 55
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->ruler_scale_text_size:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->p:F

    .line 56
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_text_size:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->s:F

    .line 57
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->CM_DEFAULT:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    .line 58
    sget v1, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_scale:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    .line 59
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    .line 61
    sget v1, Lcom/onyx/galaxy/note/R$color;->ruler_background:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    .line 62
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->O:I

    .line 63
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_01:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    .line 64
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_01:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k0:I

    .line 65
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_03:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q0:I

    .line 66
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_07:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t0:I

    .line 67
    sget v1, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u0:I

    .line 68
    sget v1, Lcom/onyx/galaxy/note/R$color;->warning_200:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v0:I

    .line 69
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    .line 70
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 72
    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 76
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    sget v3, Lcom/onyx/galaxy/note/R$dimen;->ruler_scale_width:I

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 80
    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->o:Landroid/graphics/Paint;

    .line 84
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 85
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->Q:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    .line 89
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 90
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->ruler_angle_width:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w()V

    return-void
.end method

.method public static final C(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "$lastValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {v1, v0, v2, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput p3, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->C(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getUnitsType$p(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    return-object p0
.end method

.method public static final synthetic access$isInAngle(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isInRuler(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onAngleDoubleClick(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->B()V

    return-void
.end method

.method public static final synthetic access$showRulerUnitsWindow(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->F(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static final synthetic access$updateUnits(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->H(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/16 v4, 0x168

    div-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v3, v3

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    div-float/2addr v2, v3

    int-to-float v3, v4

    rem-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->c(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v4, v2, v5, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->f()V

    return-void
.end method

.method public final B()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v1, 0x0

    const/16 v2, 0x5a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v3, Lcom/sunia/HTREnginev2/dul;

    invoke-direct {v3, v2, p0, v0}, Lcom/sunia/HTREnginev2/dul;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final D(Landroid/view/MotionEvent;)V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v5, :cond_1

    return-void

    :cond_1
    new-instance v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {v6, v7, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v7, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p1, v4, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v2

    invoke-virtual {p1, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v7

    sub-float/2addr v2, v7

    invoke-virtual {p1, v5, v6}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v7

    invoke-virtual {p1, v5, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    sub-float/2addr v7, p1

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->c(F)F

    move-result p1

    invoke-virtual {p0, v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->c(F)F

    move-result v2

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v7}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v8}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v8, p1, v9, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-direct {v4, v9, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    cmpl-double p1, v3, v11

    if-ltz p1, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v8, v2, p1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->B0:J

    iput-object v8, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->f()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final E(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    sub-float/2addr v8, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    move v4, v7

    :cond_2
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v5, v8

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    :cond_5
    move v4, v2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    :cond_7
    move v5, v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    new-instance v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    cmpg-float p1, v5, v2

    const/4 v0, 0x1

    if-nez p1, :cond_b

    move p1, v0

    goto :goto_3

    :cond_b
    move p1, v1

    :goto_3
    if-eqz p1, :cond_d

    cmpg-float p1, v4, v2

    if-nez p1, :cond_c

    move v1, v0

    :cond_c
    if-eqz v1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->B0:J

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->f()V

    return-void
.end method

.method public final F(Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$showRulerUnitsWindow$1;-><init>(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public final G()V
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->f:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->getMillimeter()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->getRadix()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType$Companion;->loadRulerScaleType(FLandroid/graphics/Paint;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final H(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->G()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v4, v5, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sub-float/2addr p1, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    sub-float/2addr v4, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v5, 0x5

    int-to-float v5, v5

    cmpg-float p0, p0, v5

    if-gez p0, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_2

    return v0

    :cond_2
    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_3

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v2
.end method

.method public final c(F)F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q(Landroid/graphics/Matrix;)I

    move-result p0

    rem-int/lit8 p0, p0, 0x2d

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p0, p0, v0

    const/4 v0, 0x0

    if-gez p0, :cond_1

    return v0

    :cond_1
    cmpl-float p0, p1, v0

    if-lez p0, :cond_2

    const p0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_2
    const p0, -0x41b33333    # -0.2f

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q(Landroid/graphics/Matrix;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    cmpg-float v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-eqz v3, :cond_6

    cmpg-float v2, v0, v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    if-nez v4, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;FF)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->h(Landroid/graphics/Canvas;FFF)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public final getRulerMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getRulerRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;FFF)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    rem-int/lit8 v1, v0, 0x5a

    if-nez v1, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    :goto_1
    move v7, v1

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i(Landroid/graphics/Canvas;FFFIFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;FFFIFLandroid/graphics/Paint;)V
    .locals 6

    int-to-double v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p0, v4

    mul-float/2addr p0, p4

    add-float/2addr p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float/2addr p4, p0

    add-float/2addr p3, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float/2addr p0, p6

    sub-float p0, p2, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    double-to-float p4, p4

    mul-float/2addr p6, p4

    sub-float p5, p3, p6

    move p4, p0

    move-object p6, p7

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;FFF)V
    .locals 10

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q(Landroid/graphics/Matrix;)I

    move-result v0

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v8, v0, 0xb4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    rsub-int v5, v8, 0x168

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    const/4 v1, 0x2

    int-to-float v9, v1

    mul-float v6, v0, v9

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i(Landroid/graphics/Canvas;FFFIFLandroid/graphics/Paint;)V

    rsub-int v5, v8, 0xb4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x:F

    mul-float v6, v0, v9

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i(Landroid/graphics/Canvas;FFFIFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final k(Landroid/graphics/Canvas;FF)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, -0xb4

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0xb4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xba

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const-string v3, "getFontMetrics(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    div-float/2addr v2, v4

    sub-float/2addr p3, v2

    div-float/2addr v1, v4

    sub-float/2addr p2, v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->J:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->O:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final m(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    div-float/2addr v0, v1

    float-to-int v11, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v1

    float-to-int v12, v0

    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    iget v1, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v4, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j:F

    iget-object v5, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v4, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j:F

    sub-float v3, v9, v4

    iget-object v5, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    iget v1, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-gt v11, v12, :cond_5

    :goto_0
    if-nez v11, :cond_1

    :cond_0
    :goto_1
    move-object v1, p1

    goto :goto_4

    :cond_1
    int-to-float v0, v11

    iget v1, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l:F

    mul-float/2addr v0, v1

    add-float v7, v10, v0

    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getBigScaleStep()I

    move-result v0

    rem-int v0, v11, v0

    if-nez v0, :cond_2

    iget v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->j:F

    :goto_2
    move v13, v0

    goto :goto_3

    :cond_2
    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getMiddleScaleStep()I

    move-result v0

    rem-int v0, v11, v0

    if-nez v0, :cond_3

    iget v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->i:F

    goto :goto_2

    :cond_3
    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getSmallScaleStep()I

    move-result v0

    rem-int v0, v11, v0

    if-nez v0, :cond_0

    iget v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->h:F

    goto :goto_2

    :goto_3
    iget-object v5, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    sub-float v3, v9, v13

    iget-object v5, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->n(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w:Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;->getScaleTextStep()I

    move-result v0

    rem-int v0, v11, v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v6, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->getRadix()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    add-float/2addr v13, v8

    move-object v1, p1

    invoke-virtual {p0, p1, v0, v7, v13}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->o(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :goto_4
    if-eq v11, v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final n(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 6

    add-float v4, p3, p4

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final o(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->p:F

    add-float/2addr p4, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->l(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->m(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->g(Landroid/graphics/Canvas;FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->p()Landroid/graphics/RectF;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    cmpg-float p2, p2, p3

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p4

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object p5, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    cmpg-float p2, p2, p5

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p3, p4

    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->q(Landroid/graphics/Matrix;)I

    move-result p4

    int-to-float p4, p4

    new-instance p5, Landroid/graphics/Matrix;

    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p5, p4, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    sub-float/2addr p4, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p1, p3

    invoke-virtual {p5, p4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->s(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->d()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->C0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-interface {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;->onTransform(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u(Landroid/view/MotionEvent;)V

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->d()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->C0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-interface {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;->onTransform(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Landroid/graphics/Matrix;)V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->g:F

    float-to-int v1, v1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->localVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->getDiagonalLength(Landroid/graphics/RectF;)F

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v2

    int-to-float v1, v1

    invoke-direct {v3, v4, v0, p0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public final q(Landroid/graphics/Matrix;)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final r(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->b(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->A0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->D(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->E(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->E(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final s(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y0:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    const-string v0, "gestureDetector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v:Z

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRulerListener(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->C0:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;

    return-void
.end method

.method public final setRulerMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->A0:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y0:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    const-string v0, "gestureDetector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v:Z

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public final u(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y0:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    const-string v0, "gestureDetector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->A(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->r(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method public final updatePageSize(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->e:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->f:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->G()V

    return-void
.end method

.method public final v(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y0:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    const-string v1, "gestureDetector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->v:Z

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->t:Z

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->u:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final w()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$initGestureListener$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$initGestureListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->y0:Landroid/view/GestureDetector;

    return-void
.end method

.method public final x(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->k:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->inCircle(FFFFF)Z

    move-result p0

    return p0
.end method

.method public final y(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->x0:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->w0:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final z(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->getToolType(Landroid/view/MotionEvent;)I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
