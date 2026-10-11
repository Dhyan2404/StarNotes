.class public final Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->a:I

    iput p2, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->b:I

    return-void
.end method

.method public static of(II)Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;

    invoke-direct {v0, p0, p1}, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->a:I

    iget v3, p1, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->a:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->b:I

    iget p1, p1, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->b:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public tag()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->a:I

    return p0
.end method

.method public value()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/OpenTypeFeature;->b:I

    return p0
.end method
