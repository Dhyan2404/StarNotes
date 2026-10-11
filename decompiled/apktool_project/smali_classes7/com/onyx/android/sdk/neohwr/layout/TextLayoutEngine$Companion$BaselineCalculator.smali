.class public final Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaselineCalculator"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,766:1\n1549#2:767\n1620#2,3:768\n1549#2:771\n1620#2,3:772\n766#2:775\n857#2,2:776\n1549#2:778\n1620#2,3:779\n3837#3:782\n4357#3,2:783\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n*L\n88#1:767\n88#1:768,3\n89#1:771\n89#1:772,3\n98#1:775\n98#1:776,2\n98#1:778\n98#1:779,3\n114#1:782\n114#1:783,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u0008J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;",
        "",
        "()V",
        "calculateBaseline",
        "",
        "chars",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBoxList;",
        "median",
        "values",
        "",
        "percentile",
        "sdk-neohwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextLayoutEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,766:1\n1549#2:767\n1620#2,3:768\n1549#2:771\n1620#2,3:772\n766#2:775\n857#2,2:776\n1549#2:778\n1620#2,3:779\n3837#3:782\n4357#3,2:783\n*S KotlinDebug\n*F\n+ 1 TextLayoutEngine.kt\ncom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator\n*L\n88#1:767\n88#1:768,3\n89#1:771\n89#1:772,3\n98#1:775\n98#1:776,2\n98#1:778\n98#1:779,3\n114#1:782\n114#1:783,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final median([F)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->sorted([F)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method private final percentile([FF)F
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->sorted([F)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    if-ne p1, v1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    int-to-float v2, p1

    sub-float/2addr p2, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p2

    add-float/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public final calculateBaseline(Ljava/util/List;)F
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chars"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v5

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-direct {v0, v5, v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->percentile([FF)F

    move-result v7

    const/high16 v8, 0x42960000    # 75.0f

    invoke-direct {v0, v5, v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->percentile([FF)F

    move-result v5

    sub-float v9, v5, v7

    float-to-double v10, v7

    float-to-double v12, v9

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    float-to-double v14, v5

    add-double/2addr v14, v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    float-to-double v12, v13

    cmpg-double v16, v10, v12

    if-gtz v16, :cond_3

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_2

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v1

    int-to-double v4, v2

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v4

    double-to-int v2, v10

    const/4 v7, 0x3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v7, v1

    if-ge v7, v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-direct {v0, v3, v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->percentile([FF)F

    move-result v1

    invoke-direct {v0, v3, v8}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->percentile([FF)F

    move-result v2

    sub-float v6, v2, v1

    float-to-double v7, v1

    float-to-double v10, v6

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    float-to-double v1, v2

    add-double/2addr v1, v10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v3

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_9

    aget v12, v3, v11

    float-to-double v13, v12

    cmpg-double v15, v7, v13

    if-gtz v15, :cond_7

    cmpg-double v13, v13, v1

    if-gtz v13, :cond_7

    move v13, v9

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_8

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    const/4 v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, v1

    if-ge v4, v2, :cond_a

    goto :goto_8

    :cond_a
    move-object v3, v1

    :goto_8
    invoke-direct {v0, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion$BaselineCalculator;->median([F)F

    move-result v0

    return v0
.end method
