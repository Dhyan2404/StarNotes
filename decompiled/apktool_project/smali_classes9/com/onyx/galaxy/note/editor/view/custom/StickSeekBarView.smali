.class public final Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickSeekBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickSeekBarView.kt\ncom/onyx/galaxy/note/editor/view/custom/StickSeekBarView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,409:1\n1#2:410\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u00084\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0008\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001B!\u0008\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u008a\u0001B*\u0008\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0007\u0010\u008b\u0001\u001a\u000204\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u008c\u0001J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0008H\u0002J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u0008H\u0002J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0008H\u0002J\u0014\u0010\'\u001a\u00020\u00052\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080%JS\u0010.\u001a\u00020\u00052K\u0010-\u001aG\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020\u00050(J\u000e\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0008J\u0012\u00103\u001a\u00020\r2\u0008\u00102\u001a\u0004\u0018\u000101H\u0017J\u0010\u00106\u001a\u00020\u00052\u0008\u0008\u0001\u00105\u001a\u000204J\u0010\u00108\u001a\u00020\u00052\u0008\u0008\u0001\u00107\u001a\u000204J\u0006\u00109\u001a\u00020\u0008J\u0018\u0010<\u001a\u00020\u00052\u0006\u0010:\u001a\u0002042\u0006\u0010;\u001a\u000204H\u0014J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0014J\u0008\u0010>\u001a\u00020\u0005H\u0016R\u0014\u0010@\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010BR\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010BR*\u0010+\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010?\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\"\u0010N\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u0016\u0010O\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010IR\u0016\u0010P\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010IR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010U\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010IR\u0016\u0010V\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010SR\u0014\u0010W\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010IR\u001c\u0010Y\u001a\n X*\u0004\u0018\u00010Q0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010SR\u0016\u0010[\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010?R\u0016\u0010]\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010?R\u0016\u0010_\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010?R\u0016\u0010a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010?R\u0016\u0010c\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010?R\u0016\u0010e\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010?R\u0016\u0010g\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010?R\u0016\u0010h\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010?R\u0016\u0010i\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010?R\u0016\u0010k\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010?R\u0016\u0010n\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\"\u0010p\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010m\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u0016\u0010u\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010mR]\u0010-\u001aI\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(+\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020\u0005\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\"\u0010{\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010?\u001a\u0004\u0008y\u0010F\"\u0004\u0008z\u0010HR\"\u0010\u007f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008|\u0010?\u001a\u0004\u0008}\u0010F\"\u0004\u0008~\u0010HR\u0018\u0010\u0081\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010?R\u0018\u0010\u0083\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010?R\u0018\u0010\u0085\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010?\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;",
        "Landroid/view/View;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "n",
        "p",
        "",
        "currentPosition",
        "o",
        "g",
        "stickPercent",
        "",
        "forceCallback",
        "k",
        "progressValue",
        "i",
        "m",
        "getTotalWidth",
        "Landroid/graphics/Canvas;",
        "canvas",
        "e",
        "f",
        "x",
        "y",
        "a",
        "Landroid/graphics/RectF;",
        "getThumbRectF",
        "getThumbTouchRectF",
        "getProgressPosition",
        "c",
        "b",
        "j",
        "segmentPosition",
        "d",
        "h",
        "Lorg/apache/commons/lang3/Range;",
        "range",
        "setValueRange",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "progress",
        "isFromUser",
        "callback",
        "setProgressChangeCallback",
        "value",
        "setProgressValue",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "",
        "backgroundRes",
        "setBackgroundColorRes",
        "progressRes",
        "setProgressColorRes",
        "getProgressValue",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "onDraw",
        "tint",
        "F",
        "maxProgress",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "strokePaint",
        "thumbPaint",
        "getProgress",
        "()F",
        "setProgress",
        "(F)V",
        "I",
        "getSegmentCount",
        "()I",
        "setSegmentCount",
        "(I)V",
        "segmentCount",
        "backgroundColorId",
        "progressColorId",
        "Landroid/graphics/drawable/Drawable;",
        "l",
        "Landroid/graphics/drawable/Drawable;",
        "segmentThumb",
        "thumbRes",
        "thumb",
        "disabledProgressColorId",
        "kotlin.jvm.PlatformType",
        "disabledThumb",
        "q",
        "progressHeight",
        "r",
        "thumbSize",
        "s",
        "thumbTouchSize",
        "t",
        "halfThumbSize",
        "u",
        "halfThumbTouchSize",
        "v",
        "segmentThumbSize",
        "w",
        "halfSegmentThumbSize",
        "centerY",
        "startX",
        "z",
        "endX",
        "J",
        "Z",
        "isDragging",
        "O",
        "isStick",
        "()Z",
        "setStick",
        "(Z)V",
        "Q",
        "isDrawSegment",
        "k0",
        "Lkotlin/jvm/functions/Function3;",
        "q0",
        "getMinValue",
        "setMinValue",
        "minValue",
        "t0",
        "getMaxValue",
        "setMaxValue",
        "maxValue",
        "u0",
        "lastProgress",
        "v0",
        "downPosition",
        "w0",
        "downX",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nStickSeekBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickSeekBarView.kt\ncom/onyx/galaxy/note/editor/view/custom/StickSeekBarView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,409:1\n1#2:410\n*E\n"
    }
.end annotation


# instance fields
.field public J:Z

.field public O:Z

.field public Q:Z

.field public final e:F

.field public final f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public k0:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:I

.field public n:Landroid/graphics/drawable/Drawable;

.field public final o:I

.field public final p:Landroid/graphics/drawable/Drawable;

.field public q:F

.field public q0:F

.field public r:F

.field public s:F

.field public t:F

.field public t0:F

.field public u:F

.field public u0:F

.field public v:F

.field public v0:F

.field public w:F

.field public w0:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_max_progress:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->g:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 7
    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    .line 8
    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_background_stick_progress_bar_color:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j:I

    .line 9
    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k:I

    .line 10
    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_03:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o:I

    .line 11
    sget p3, Lcom/onyx/galaxy/note/R$drawable;->ic_common_seek_bar_thumb_disabled:I

    invoke-static {p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->p:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q:F

    .line 13
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->Q:Z

    .line 14
    sget p3, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_max_progress:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    .line 15
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->n(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getProgressPosition()F
    .locals 3

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getTotalWidth()F

    move-result p0

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getTotalWidth()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method private final getThumbRectF()Landroid/graphics/RectF;
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->r:F

    add-float v3, v0, v2

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    sub-float/2addr p0, v1

    add-float/2addr v2, p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, p0, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private final getThumbTouchRectF()Landroid/graphics/RectF;
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->s:F

    add-float v3, v0, v2

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    sub-float/2addr p0, v1

    add-float/2addr v2, p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, p0, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private final getTotalWidth()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->s:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k(FZ)V

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getThumbTouchRectF()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getThumbTouchRectF()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o:I

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->z:F

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o:I

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v5

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;F)V
    .locals 8

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o:I

    :goto_1
    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o:I

    :goto_2
    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->w:F

    sub-float v4, v0, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "thumb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->p:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getThumbRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_04:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final g(F)F
    .locals 1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getTotalWidth()F

    move-result p1

    div-float/2addr v0, p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    mul-float/2addr v0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getTotalWidth()F

    move-result v0

    div-float/2addr p1, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    mul-float v0, p1, p0

    :goto_0
    return v0
.end method

.method public final getMaxValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    return p0
.end method

.method public final getMinValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    return p0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    return p0
.end method

.method public final getProgressValue()F
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i(F)F

    move-result p0

    return p0
.end method

.method public final getSegmentCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    return p0
.end method

.method public final h(F)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->w:F

    sub-float v2, p1, v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    sub-float v3, p0, v1

    add-float/2addr p1, v1

    add-float/2addr p0, v1

    invoke-direct {v0, v2, v3, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final i(F)F
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->times_100:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    sget v1, Lcom/onyx/galaxy/note/R$integer;->times_100:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sget v1, Lcom/onyx/galaxy/note/R$integer;->tens:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    rem-int/2addr p1, v1

    if-lez p1, :cond_0

    int-to-float v1, p1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->seek_smallest_unit:I

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->seek_smallest_unit:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    goto :goto_0

    :cond_0
    int-to-float v1, p1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->seek_smallest_unit:I

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->seek_smallest_unit:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$integer;->twice:I

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, p1

    int-to-float p1, v0

    add-float/2addr p1, v1

    sget v0, Lcom/onyx/galaxy/note/R$integer;->times_100:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final isStick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    return p0
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->Q:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getTotalWidth()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    int-to-float v4, v2

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    int-to-float v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->d(Landroid/graphics/Canvas;F)V

    if-eq v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(FZ)V
    .locals 8

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    rem-float v2, v1, v0

    mul-float/2addr p1, v0

    cmpg-float v3, v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    if-nez p2, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u0:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-boolean v7, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v3, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sub-float/2addr v0, v2

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    if-nez p2, :cond_4

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u0:F

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    cmpg-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_5

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->g:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final n(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_backgroundColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_03:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_progressColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_segmentThumb:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->l:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_android_thumb:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->m:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "getThemeDrawable(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->n:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_android_progress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_minValue:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_maxValue:I

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_max_progress:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_segmentCount:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_isStick:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_drawSegment:I

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->Q:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_progressHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_thumbIconSize:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->r:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->thumbSizeTime:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->s:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->r:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->s:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SegmentSeekBarView_segmentThumbSize:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->v:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->w:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->m()V

    return-void
.end method

.method public final o(F)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->g(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u0:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    cmpg-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    if-lez p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_stick_percent:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->l(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;FZILjava/lang/Object;)V

    :cond_2
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->x:F

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->z:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->z:F

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->a(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressPosition()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->v0:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->u0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getThumbTouchRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getThumbTouchRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->w0:F

    goto :goto_6

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->w0:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->v0:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->o(F)V

    goto :goto_6

    :cond_5
    :goto_2
    const/4 p1, 0x0

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    move v1, p1

    :goto_5
    if-eqz v1, :cond_a

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->p()V

    :cond_a
    :goto_6
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    return p0

    :cond_b
    return v1
.end method

.method public final p()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_stick_percent_up:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k(FZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setBackgroundColorRes(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->j:I

    return-void
.end method

.method public final setMaxValue(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    return-void
.end method

.method public final setMinValue(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    return-void
.end method

.method public final setProgress(F)V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->J:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setProgressColorRes(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k:I

    return-void
.end method

.method public final setProgressValue(F)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->times_100:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$dimen;->seek_bar_stick_percent:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->l(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;FZILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->k0:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSegmentCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->i:I

    return-void
.end method

.method public final setStick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->O:Z

    return-void
.end method

.method public final setValueRange(Lorg/apache/commons/lang3/Range;)V
    .locals 2
    .param p1    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMinimum(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->q0:F

    invoke-virtual {p1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getMaximum(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->t0:F

    return-void
.end method

.method public tint()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->m:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "getThemeDrawable(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
