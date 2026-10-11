.class public final Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRulerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n332#2:253\n332#2:257\n1747#3,3:254\n*S KotlinDebug\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n*L\n114#1:253\n213#1:257\n204#1:254,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0017\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007\u00a2\u0006\u0004\u0008;\u0010<J\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\nJ \u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\"\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J*\u0010\u0014\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J*\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J \u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u001e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\"0\'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001bH\u0002R\u0016\u0010*\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010+R\u0016\u0010.\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010-R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010/R\u0016\u00101\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00100R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00102R\u0016\u00103\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010+R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00105R\u0016\u00107\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010-R\u0016\u00108\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010)R\u001c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\"0\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00109\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/graphics/RectF;",
        "rulerRectF",
        "Landroid/graphics/Matrix;",
        "rulerMatrix",
        "",
        "handleDownAction",
        "Landroid/view/MotionEvent;",
        "event",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "hitTestPoint",
        "e",
        "g",
        "h",
        "Landroid/graphics/PointF;",
        "downPoint",
        "point",
        "j",
        "k",
        "l",
        "",
        "f",
        "c",
        "rectF",
        "",
        "b",
        "firstPoint",
        "secondPoint",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "drawingArgs",
        "",
        "d",
        "",
        "start",
        "steps",
        "",
        "a",
        "I",
        "downDirection",
        "Z",
        "enableAdsorb",
        "F",
        "lineWidth",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Landroid/graphics/RectF;",
        "rulerRect",
        "Landroid/graphics/Matrix;",
        "isRectangle",
        "Landroid/graphics/PointF;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastValidTouchPoint",
        "adsorbThreshold",
        "adsorbCount",
        "Ljava/util/List;",
        "exponentialDecayValues",
        "<init>",
        "()V",
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
        "SMAP\nRulerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n332#2:253\n332#2:257\n1747#3,3:254\n*S KotlinDebug\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n*L\n114#1:253\n213#1:257\n204#1:254,3\n*E\n"
    }
.end annotation


# static fields
.field public static final ADSORB_DECAY_FACTOR:D = 4.0

.field public static final BOTTOM:I = 0x2

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RADIX_CM:I = 0xa

.field public static final RADIX_IN:I = 0x10

.field public static final TOP:I = 0x1

.field public static final m:Lkotlin/ranges/IntRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:F

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->Companion:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;

    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->m:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f:Landroid/graphics/Matrix;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getADSORB_DECAY_COUNT_RANGE$cp()Lkotlin/ranges/IntRange;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->m:Lkotlin/ranges/IntRange;

    return-object v0
.end method


# virtual methods
.method public final a(DI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    int-to-double v1, v0

    add-int/lit8 v3, p3, -0x1

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, -0x3ff0000000000000L    # -4.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, p1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(Landroid/graphics/PointF;Landroid/graphics/RectF;)I
    .locals 0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Z
    .locals 1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p2, v0, p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b(Landroid/graphics/PointF;Landroid/graphics/RectF;)I

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    if-eq p1, p0, :cond_0

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

.method public final d(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->d:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeWidth()F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeWidth()F

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result p1

    :goto_0
    mul-float/2addr p1, p0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getStrokeWidth()F

    move-result p1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result p1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentMinScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result p0

    goto :goto_0
.end method

.method public final e(Landroid/view/MotionEvent;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->h:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b(Landroid/graphics/PointF;Landroid/graphics/RectF;)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b:Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->d:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->d(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v3, v2, v3

    iput v3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->c:F

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->j:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentShapeType()I

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getSubShapeType()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->g:Z

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->k:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->g(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->j:F

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->c:F

    sub-float p3, p1, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->m:Lkotlin/ranges/IntRange;

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result p1

    float-to-double p2, p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a(DI)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l:Ljava/util/List;

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l:Ljava/util/List;

    :goto_2
    return-void
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 5

    invoke-virtual {p0, p3, p4}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->i(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object p3

    const/4 p4, 0x4

    new-array p4, p4, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v0, p4, v1

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v0, p4, v2

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v0, p4, v3

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p3, 0x3

    aput-object v0, p4, p3

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    instance-of p4, p3, Ljava/util/Collection;

    if-eqz p4, :cond_0

    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p4}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Z

    move-result p4

    if-eqz p4, :cond_1

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final g(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-static {v0, v1, p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b(Landroid/graphics/PointF;Landroid/graphics/RectF;)I

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    if-ne p1, v2, :cond_2

    iget p1, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->j:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l:Ljava/util/List;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->k:I

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    if-ne v2, v1, :cond_4

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->c:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_4
    int-to-float v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->c:F

    add-float/2addr v0, v2

    add-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/PointF;->y:F

    :goto_3
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->k:I

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->b:Z

    invoke-static {p2, p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, p2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p1
.end method

.method public final h(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->h:Landroid/graphics/PointF;

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->j(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->k(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final handleDownAction(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rulerRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rulerMatrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->d:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public final hitTestPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e(Landroid/view/MotionEvent;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->h(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->g(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 4

    new-instance p0, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public final j(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;

    move-result-object p4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    :goto_0
    invoke-static {p2, p4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p4

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v0, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->l(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final l(Landroid/graphics/PointF;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object v0
.end method
