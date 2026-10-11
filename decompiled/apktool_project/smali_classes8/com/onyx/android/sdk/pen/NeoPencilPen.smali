.class public final Lcom/onyx/android/sdk/pen/NeoPencilPen;
.super Lcom/onyx/android/sdk/pen/NeoNativePen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0008\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J)\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0010\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoPencilPen;",
        "Lcom/onyx/android/sdk/pen/NeoNativePen;",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "result",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "buildPenResult$sdk_pen_release",
        "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;",
        "buildPenResult",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "ink",
        "Lcom/onyx/android/sdk/pen/PenBrushResult;",
        "a",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;",
        "b",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;",
        "getMaskGenerator",
        "()Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;",
        "maskGenerator",
        "",
        "penHandle",
        "<init>",
        "(JLcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;)V",
        "Companion",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;",
            "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(JLcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;-><init>(J)V

    .line 3
    iput-object p3, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->b:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/pen/NeoPencilPen;-><init>(JLcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;)V

    return-void
.end method

.method public static final synthetic access$getMaskBitmaps$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getRotatedBitmaps$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenBrushResult;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_1

    if-le v5, v6, :cond_2

    :cond_1
    if-gez v3, :cond_4

    if-gt v6, v5, :cond_4

    :cond_2
    move-object v7, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    aget v15, v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v9

    add-int/lit8 v10, v5, 0x2

    aget v16, v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v9

    add-int/lit8 v10, v5, 0x3

    aget v9, v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/pennative/PenInk;->getPoints()[F

    move-result-object v10

    add-int/lit8 v11, v5, 0x4

    aget v10, v10, v11

    const/16 v11, 0xff

    int-to-float v12, v11

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-static {v10, v4, v11}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v10

    int-to-byte v10, v10

    invoke-static {v10}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v14

    sget-object v10, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/MathUtils;

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->normalizeAngleTo36-Wa3L5BU(D)B

    move-result v13

    iget-object v9, v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->b:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->getConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->getWidth()F

    move-result v9

    div-float v9, v16, v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v9

    float-to-int v9, v9

    int-to-byte v9, v9

    invoke-static {v9}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v12

    new-instance v11, Lcom/onyx/android/sdk/pen/PenBrushInk;

    const/16 v17, 0x0

    move-object v9, v11

    move v10, v8

    move-object v4, v11

    move v11, v15

    move v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lcom/onyx/android/sdk/pen/PenBrushInk;-><init>(FFBBBLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_3

    new-instance v7, Landroid/graphics/RectF;

    add-float v4, v8, v16

    add-float v15, v1, v16

    invoke-direct {v7, v8, v1, v4, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    invoke-virtual {v7, v8, v1}, Landroid/graphics/RectF;->union(FF)V

    add-float v8, v8, v16

    add-float v15, v1, v16

    invoke-virtual {v7, v8, v15}, Landroid/graphics/RectF;->union(FF)V

    if-eq v5, v6, :cond_5

    add-int/2addr v5, v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    :cond_5
    if-nez v7, :cond_6

    const/4 v1, 0x0

    return-object v1

    :cond_6
    new-instance v1, Lcom/onyx/android/sdk/pen/PenBrushResult;

    iget-object v0, v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->b:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;

    invoke-direct {v1, v2, v0, v7}, Lcom/onyx/android/sdk/pen/PenBrushResult;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;Landroid/graphics/RectF;)V

    return-object v1
.end method

.method public buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInkResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pennative/PenInkResult;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/pen/NeoPencilPen;->a(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenBrushResult;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/pen/NeoPencilPen;->a(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenBrushResult;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getMaskGenerator()Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->b:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;

    return-object p0
.end method
