.class public final Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/onyx/harfbuzz/collections/FloatList;

.field public d:Lcom/onyx/harfbuzz/collections/IntList;

.field public e:[Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->d:Lcom/onyx/harfbuzz/collections/IntList;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->d:Lcom/onyx/harfbuzz/collections/IntList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    move v5, v2

    move v7, v3

    move v8, v7

    move v6, v4

    :goto_0
    if-gt v6, v0, :cond_9

    if-eq v6, v0, :cond_1

    iget-object v9, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->d:Lcom/onyx/harfbuzz/collections/IntList;

    invoke-virtual {v9, v6}, Lcom/onyx/harfbuzz/collections/IntList;->get(I)I

    move-result v9

    add-int/2addr v9, v4

    iget-object v10, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->e:[Z

    if-eqz v10, :cond_0

    add-int/lit8 v11, v6, -0x1

    aget-boolean v10, v10, v11

    if-nez v10, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    iget-boolean v9, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->a:Z

    if-eqz v9, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->c:Lcom/onyx/harfbuzz/collections/FloatList;

    invoke-virtual {v9}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v9

    add-int/2addr v9, v4

    :goto_1
    if-eq v9, v2, :cond_8

    iget-boolean v2, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->a:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    move v2, v10

    :goto_2
    if-le v5, v9, :cond_3

    iget-object v11, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->c:Lcom/onyx/harfbuzz/collections/FloatList;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v11

    add-float/2addr v2, v11

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    move v12, v4

    move v11, v10

    goto :goto_4

    :cond_4
    move v2, v10

    :goto_3
    if-ge v5, v9, :cond_3

    iget-object v11, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->c:Lcom/onyx/harfbuzz/collections/FloatList;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v11

    add-float/2addr v2, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :goto_4
    if-ge v8, v6, :cond_7

    iget-object v13, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->e:[Z

    if-eqz v13, :cond_6

    aget-boolean v13, v13, v8

    if-nez v13, :cond_6

    add-int/lit8 v13, v0, -0x1

    if-ne v8, v13, :cond_5

    goto :goto_5

    :cond_5
    move v13, v11

    move v11, v10

    goto :goto_6

    :cond_6
    :goto_5
    int-to-float v13, v12

    mul-float/2addr v13, v2

    int-to-float v14, v7

    div-float/2addr v13, v14

    sub-float v11, v13, v11

    add-int/lit8 v12, v12, 0x1

    :goto_6
    aput v11, v1, v8

    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_4

    :cond_7
    move v7, v3

    :cond_8
    :goto_7
    move v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    return-object v1
.end method

.method public build()Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->d:Lcom/onyx/harfbuzz/collections/IntList;

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/collections/IntList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->a()[F

    move-result-object v1

    iget-boolean p0, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    aput v3, v1, v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    aget p0, v1, v0

    add-float/2addr v3, p0

    aput v3, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget v4, v1, p0

    aput v3, v1, p0

    :goto_1
    if-gt v2, v0, :cond_1

    add-float/2addr v3, v4

    aget v4, v1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/onyx/harfbuzz/collections/FloatList;->of([F)Lcom/onyx/harfbuzz/collections/FloatList;

    move-result-object p0

    return-object p0
.end method

.method public setBackward(Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->a:Z

    return-object p0
.end method

.method public setCaretStops([Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
    .locals 0
    .param p1    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->e:[Z

    return-object p0
.end method

.method public setClusterMap(Lcom/onyx/harfbuzz/collections/IntList;)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->d:Lcom/onyx/harfbuzz/collections/IntList;

    return-object p0
.end method

.method public setGlyphAdvances(Lcom/onyx/harfbuzz/collections/FloatList;)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->c:Lcom/onyx/harfbuzz/collections/FloatList;

    return-object p0
.end method

.method public setRTL(Z)Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/harfbuzz/internal/layout/CaretEdgesBuilder;->b:Z

    return-object p0
.end method
