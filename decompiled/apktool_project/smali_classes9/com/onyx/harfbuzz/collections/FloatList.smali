.class public abstract Lcom/onyx/harfbuzz/collections/FloatList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/collections/Primitive;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs of([F)Lcom/onyx/harfbuzz/collections/FloatList;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayList;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/onyx/harfbuzz/internal/collections/JFloatArrayList;-><init>([FII)V

    return-object v0
.end method


# virtual methods
.method public abstract copyTo([FI)V
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/harfbuzz/collections/FloatList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/collections/FloatList;

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v3

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public abstract get(I)F
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/onyx/harfbuzz/collections/FloatList;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public abstract size()I
.end method

.method public abstract subList(II)Lcom/onyx/harfbuzz/collections/FloatList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public toArray()[F
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/collections/FloatList;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/harfbuzz/collections/FloatList;->copyTo([FI)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/harfbuzz/internal/Description;->forFloatList(Lcom/onyx/harfbuzz/collections/FloatList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
