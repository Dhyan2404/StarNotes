.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPenShapeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n30#2:303\n91#2,14:304\n52#2:318\n91#2,14:319\n1864#3,3:333\n*S KotlinDebug\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n*L\n151#1:303\n151#1:304,14\n156#1:318\n156#1:319,14\n232#1:333,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 j2\u00020\u0001:\u0001jB\u0013\u0008\u0016\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008e\u0010fB\u001d\u0008\u0016\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0010!\u001a\u0004\u0018\u00010 \u00a2\u0006\u0004\u0008e\u0010gB%\u0008\u0016\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010h\u001a\u00020\u0006\u00a2\u0006\u0004\u0008e\u0010iJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0014J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012J(\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\u0008\u0010\u001d\u001a\u00020\u0004H\u0014J\u001c\u0010\"\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0002J\u0008\u0010#\u001a\u00020\u0004H\u0002J\u0018\u0010\'\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$H\u0002J\u0008\u0010(\u001a\u00020\u0004H\u0002J\u0008\u0010)\u001a\u00020\u0004H\u0002J\u0008\u0010*\u001a\u00020\u0004H\u0002J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010.\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u00100\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u00102\u001a\u000201H\u0002J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00104R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00106R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u00106R\u0016\u00109\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00106R&\u0010=\u001a\u0012\u0012\u0004\u0012\u0002010:j\u0008\u0012\u0004\u0012\u000201`;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010<R\u0017\u0010B\u001a\u00020>8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010?\u001a\u0004\u0008@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010I\u001a\u00020G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010HR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010RR\u0016\u0010V\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0016\u0010^\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0014\u0010b\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010X\u00a8\u0006k"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;",
        "Landroid/view/View;",
        "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;",
        "previewData",
        "",
        "setPointsData",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "",
        "isSelected",
        "isFromClick",
        "setViewSelect",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "previewTouchData",
        "initShapeData",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "onPenArgsChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "onDetachedFromWindow",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "e",
        "f",
        "",
        "width",
        "height",
        "l",
        "p",
        "j",
        "b",
        "g",
        "i",
        "n",
        "c",
        "m",
        "o",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "d",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "animPaint",
        "renderPaint",
        "bgPaint",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "touchDataList",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Landroid/animation/ValueAnimator;",
        "k",
        "Landroid/animation/ValueAnimator;",
        "alphaAnimator",
        "Landroid/graphics/Matrix;",
        "Landroid/graphics/Matrix;",
        "scaleMatrix",
        "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "drawArgs",
        "q",
        "Z",
        "isViewSelected",
        "r",
        "I",
        "previewBgColorResId",
        "s",
        "parentBgColorResId",
        "t",
        "F",
        "bgRadius",
        "Landroid/graphics/Path;",
        "u",
        "Landroid/graphics/Path;",
        "bgRoundRectPath",
        "v",
        "mirrorOffsetResId",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
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
        "SMAP\nPenShapeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n30#2:303\n91#2,14:304\n52#2:318\n91#2,14:319\n1864#3,3:333\n*S KotlinDebug\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n*L\n151#1:303\n151#1:304,14\n156#1:318\n156#1:319,14\n232#1:333,3\n*E\n"
    }
.end annotation


# static fields
.field public static final ANIM_ALPHA_END_VALUE:F = 1.0f

.field public static final ANIM_ALPHA_START_VALUE:F = 0.0f

.field public static final ANIM_DURATION:J = 0x12cL

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PEN_WIDTH_RATIO_INCREMENT:F = 2.0f

.field public static final SHAPE_MARKER_DISPLAY_WITH:F = 12.0f


# instance fields
.field public e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z

.field public r:I

.field public s:I

.field public t:F

.field public final u:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->Companion:Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
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
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->g:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->h:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->i:Ljava/util/ArrayList;

    .line 8
    sget-object p3, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p3

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->j:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 9
    fill-array-data p3, :array_0

    .line 10
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x12c

    .line 11
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v0, "apply(...)"

    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    .line 14
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    .line 15
    new-instance p3, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    .line 16
    new-instance p3, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;-><init>(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    .line 17
    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_04:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->r:I

    .line 18
    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_background_popup_color_01:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->s:I

    .line 19
    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->t:F

    .line 20
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->u:Landroid/graphics/Path;

    .line 21
    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->v:I

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getAnimPaint$p(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final k(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;Landroid/animation/ValueAnimator;)V
    .locals 3

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

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private final setPointsData(Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->g(Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPointList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)F
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result p0

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x41400000    # 12.0f

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p0

    return p0
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->s:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isLowContrastRatio$default(IIFILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->r:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->u:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/R$styleable;->ShapeIconView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->PenShapeView_previewBg:I

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_04:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->r:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->PenShapeView_parentBg:I

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_background_popup_color_01:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->s:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->PenShapeView_cornerRadius:I

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->t:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->r:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPreviewWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPreviewHeight()F

    move-result p1

    float-to-int p1, p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->createBitmap(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->j:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :goto_0
    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->m(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public final initShapeData(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewTouchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->m:Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->j:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->setPointsData(Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->b()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sunia/HTREnginev2/b2l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b2l;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$showShapeAnim$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$showShapeAnim$$inlined$doOnEnd$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$showShapeAnim$$inlined$doOnCancel$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView$showShapeAnim$$inlined$doOnCancel$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final l(FF)V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->u:Landroid/graphics/Path;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->t:F

    sget-object p2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p0, p0, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setCurrentShapeType(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->c(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setStrokeWidth(F)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->createFreeShape(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p:Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeArgs(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->c(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    :goto_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->MARKER_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    :cond_4
    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->eraseBitmap()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->i:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->h(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->b()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->n:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearLowLatencyData()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->d(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->e:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o()V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->m:Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPreviewWidth()F

    move-result v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->m:Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPreviewWidth()F

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->m:Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;->getPreviewHeight()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->u:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->v:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->o()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->f:Landroid/graphics/Paint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/ui/R$dimen;->alpha_255:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setViewSelect(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->q:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->q:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;->p()V

    return-void
.end method
