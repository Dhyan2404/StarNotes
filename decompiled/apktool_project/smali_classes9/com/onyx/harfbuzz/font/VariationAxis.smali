.class public final Lcom/onyx/harfbuzz/font/VariationAxis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/font/VariationAxis$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_HIDDEN_AXIS:I = 0x1


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:I

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(ILjava/lang/String;IFFF)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->a:I

    iput-object p2, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->b:Ljava/lang/String;

    iput p3, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->c:I

    iput p4, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->d:F

    iput p5, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->e:F

    iput p6, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->f:F

    return-void
.end method

.method public static of(ILjava/lang/String;IFFF)Lcom/onyx/harfbuzz/font/VariationAxis;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/font/VariationAxis;

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/onyx/harfbuzz/font/VariationAxis;-><init>(ILjava/lang/String;IFFF)V

    return-object v0
.end method


# virtual methods
.method public defaultValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->d:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/harfbuzz/font/VariationAxis;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/font/VariationAxis;

    iget v2, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->a:I

    iget v3, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->c:I

    iget v3, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->d:F

    iget v3, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->e:F

    iget v3, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->e:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/onyx/harfbuzz/font/VariationAxis;->f:F

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->f:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public flags()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->c:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->f:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public maxValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->f:F

    return p0
.end method

.method public minValue()F
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->e:F

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->b:Ljava/lang/String;

    return-object p0
.end method

.method public tag()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/font/VariationAxis;->a:I

    return p0
.end method
