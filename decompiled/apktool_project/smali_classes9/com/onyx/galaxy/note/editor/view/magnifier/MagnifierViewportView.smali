.class public final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
.super Lcom/onyx/android/sdk/theme/widgets/TintView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;,
        Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;,
        Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;,
        Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifierViewportView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,437:1\n1#2:438\n310#3:439\n326#3,4:440\n311#3:444\n310#3:445\n326#3,4:446\n311#3:450\n310#3:451\n326#3,4:452\n311#3:456\n*S KotlinDebug\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n*L\n241#1:439\n241#1:440,4\n241#1:444\n259#1:445\n259#1:446,4\n259#1:450\n274#1:451\n274#1:452,4\n274#1:456\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0003ijkB\u0011\u0008\u0016\u0012\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008b\u0010cB\u001b\u0008\u0016\u0012\u0006\u0010a\u001a\u00020`\u0012\u0008\u0010e\u001a\u0004\u0018\u00010d\u00a2\u0006\u0004\u0008b\u0010fB#\u0008\u0016\u0012\u0006\u0010a\u001a\u00020`\u0012\u0008\u0010e\u001a\u0004\u0018\u00010d\u0012\u0006\u0010g\u001a\u00020\u0012\u00a2\u0006\u0004\u0008b\u0010hJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u0003H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J,\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001cH\u0002J\u000e\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fJ\u0008\u0010\"\u001a\u00020\u0003H\u0016J\u0008\u0010#\u001a\u00020\u0003H\u0014J\u0008\u0010$\u001a\u00020\u0003H\u0014JR\u0010/\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u0012H\u0016J\u0010\u00102\u001a\u00020\u00032\u0006\u00101\u001a\u000200H\u0014J\u0014\u00105\u001a\u00020\u00032\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\t03J\u0018\u00108\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u00172\u0008\u0008\u0002\u00107\u001a\u00020\u0007J\u000e\u00109\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u0017J \u0010:\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u00107\u001a\u00020\u0007J \u00108\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u00107\u001a\u00020\u0007J*\u0010=\u001a\u00020\u00032\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u00107\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020\u0003J\u0006\u0010?\u001a\u00020\u0003J\u0006\u0010@\u001a\u00020\u0003J\u000e\u0010A\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u001a\u0010A\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010B\u001a\u00020\tJ\u000e\u0010C\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u001a\u0010C\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010B\u001a\u00020\tJ\u000e\u0010D\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u000e\u0010E\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\u0017J\u0006\u0010G\u001a\u00020\tJ\u0006\u0010H\u001a\u00020\tJ\u0006\u0010I\u001a\u00020\tJ\u0006\u0010J\u001a\u00020\tR\u0016\u0010L\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010KR\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010MR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010MR\u0016\u0010R\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010QR\u0016\u0010S\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010QR\u0016\u0010U\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010MR\u0016\u0010V\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010MR:\u0010Z\u001a&\u0012\u000c\u0012\n W*\u0004\u0018\u00010\t0\t W*\u0012\u0012\u000c\u0012\n W*\u0004\u0018\u00010\t0\t\u0018\u000103038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010^\u00a8\u0006l"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintView;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "",
        "i",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "g",
        "",
        "x",
        "y",
        "e",
        "f",
        "o",
        "scaleFactor",
        "n",
        "p",
        "",
        "getParentWidth",
        "j",
        "Landroid/util/Size;",
        "getParentViewSize",
        "Landroid/graphics/RectF;",
        "oldRectF",
        "newRectF",
        "Landroid/graphics/PointF;",
        "offset",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "mode",
        "l",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;",
        "listener",
        "setOnViewStateChangedListener",
        "tint",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Landroid/view/View;",
        "v",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onLayoutChange",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "Lorg/apache/commons/lang3/Range;",
        "range",
        "setWidthLimitRange",
        "rectF",
        "notify",
        "moveTo",
        "moveToWithoutLimit",
        "moveCenterToPoint",
        "dx",
        "dy",
        "move",
        "newLine",
        "moveDefaultLeft",
        "moveDefaultRight",
        "moveLeft",
        "newLineOffset",
        "moveRight",
        "moveUp",
        "moveDown",
        "getLocationRect",
        "getNewLineOffset",
        "getNewLineMinOffset",
        "getDefaultXOffset",
        "getMinXOffset",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;",
        "touchMode",
        "F",
        "lastTouchX",
        "h",
        "lastTouchY",
        "I",
        "initialWidth",
        "initialHeight",
        "k",
        "parentMaxX",
        "parentMaxY",
        "kotlin.jvm.PlatformType",
        "m",
        "Lorg/apache/commons/lang3/Range;",
        "widthLimitRange",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        "indicatorBitmap",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;",
        "changedListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Mode",
        "OnViewStateChangedListener",
        "a",
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
        "SMAP\nMagnifierViewportView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,437:1\n1#2:438\n310#3:439\n326#3,4:440\n311#3:444\n310#3:445\n326#3,4:446\n311#3:450\n310#3:451\n326#3,4:452\n311#3:456\n*S KotlinDebug\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n*L\n241#1:439\n241#1:440,4\n241#1:444\n259#1:445\n259#1:446,4\n259#1:450\n274#1:451\n274#1:452,4\n274#1:456\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:Lorg/apache/commons/lang3/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, p2}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m:Lorg/apache/commons/lang3/Range;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i()V

    .line 7
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 8
    new-instance p1, Lcom/sunia/HTREnginev2/h7j;

    invoke-direct {p1, p2, p0}, Lcom/sunia/HTREnginev2/h7j;-><init>(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->h(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    return-void
.end method

.method public static final synthetic access$getParentWidth(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)I
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getParentWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$resize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n(F)V

    return-void
.end method

.method public static final synthetic access$setTouchMode$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->d(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final d(Landroid/view/ScaleGestureDetector;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p2, "$scaleGestureDetector"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->g(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final getParentViewSize()Landroid/util/Size;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private final getParentWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oldRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/PointFKt;->getEMPTY_POINTF()Landroid/graphics/PointF;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->l(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V

    return-void
.end method

.method public static synthetic move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move(FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;Z)V

    return-void
.end method

.method public static synthetic moveCenterToPoint$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveCenterToPoint(FFZ)V

    return-void
.end method

.method public static synthetic moveLeft$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result p1

    neg-float p1, p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result p2

    neg-float p2, p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveLeft(FF)V

    return-void
.end method

.method public static synthetic moveRight$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveRight(FF)V

    return-void
.end method

.method public static synthetic moveTo$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo(FFZ)V

    return-void
.end method

.method public static synthetic moveTo$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo(Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public final e(FF)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->DRAG:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    :goto_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->g:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->h:F

    sub-float/2addr v2, v4

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    iget v2, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iget v2, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->l:F

    invoke-static {v0, v4, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->h:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->o(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f(Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :cond_3
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    new-instance p1, Lcom/sunia/HTREnginev2/g7j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/g7j;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->e(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->h:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->j:I

    return v1
.end method

.method public final getDefaultXOffset()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getMinXOffset()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getLocationRect()Landroid/graphics/RectF;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getMinXOffset()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getNewLineMinOffset()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getNewLineOffset()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineMinOffset()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final i()V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_magnifier_scale_indicator:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->toBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n:Landroid/graphics/Bitmap;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->magnifier_viewport_rectangle_primary_bg:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final l(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;->onViewStateChanged(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V

    :cond_0
    return-void
.end method

.method public final move(FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;Z)V
    .locals 8
    .param p3    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    invoke-static {v2, v1, p1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    :goto_1
    cmpg-float v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, p2

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->l:F

    invoke-static {v2, v1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p2

    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p4, :cond_4

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    :cond_4
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    if-eqz p4, :cond_5

    new-instance p2, Lcom/sunia/HTREnginev2/f7j;

    invoke-direct {p2, p0, v0, p1}, Lcom/sunia/HTREnginev2/f7j;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public final moveCenterToPoint(FFZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo(FFZ)V

    return-void
.end method

.method public final moveDefaultLeft()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveLeft(F)V

    return-void
.end method

.method public final moveDefaultRight()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getDefaultXOffset()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveRight(F)V

    return-void
.end method

.method public final moveDown(F)V
    .locals 7

    const/4 v1, 0x0

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_DOWN:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final moveLeft(F)V
    .locals 7

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_LEFT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final moveLeft(FF)V
    .locals 8

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveLeft(F)V

    :goto_0
    return-void
.end method

.method public final moveRight(F)V
    .locals 7

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_RIGHT:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final moveRight(FF)V
    .locals 7

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    neg-float v1, p1

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveRight(F)V

    :goto_0
    return-void
.end method

.method public final moveTo(FFZ)V
    .locals 7

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 12
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 13
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->l:F

    invoke-static {p2, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 15
    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    .line 17
    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void
.end method

.method public final moveTo(Landroid/graphics/RectF;Z)V
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo(FFZ)V

    .line 3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getParentViewSize()Landroid/util/Size;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v4, v3, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p1, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->p()V

    .line 9
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final moveToWithoutLimit(Landroid/graphics/RectF;)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->f:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final moveUp(F)V
    .locals 7

    const/4 v1, 0x0

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_UP:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final n(F)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i:I

    int-to-float v2, v1

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->j:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m:Lorg/apache/commons/lang3/Range;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const/4 v7, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v7

    :goto_1
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$2;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m:Lorg/apache/commons/lang3/Range;

    invoke-virtual {v3}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Float;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v4, v8, v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    if-eqz v5, :cond_3

    move-object v7, v3

    :cond_3
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$4;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$newWidth$4;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    invoke-static {v7, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, p1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float v1, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->p()V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$2;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$resize$2;-><init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final newLine()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v2, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getNewLineOffset()F

    move-result v3

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->MOVE_NEW_LINE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->move$default(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;FFLcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final o(Landroid/view/MotionEvent;)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->g:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->p()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p0, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->j()V

    return-void
.end method

.method public final p()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->k:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->l:F

    return-void
.end method

.method public final setOnViewStateChangedListener(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->o:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;

    return-void
.end method

.method public final setWidthLimitRange(Lorg/apache/commons/lang3/Range;)V
    .locals 1
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m:Lorg/apache/commons/lang3/Range;

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->i()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
