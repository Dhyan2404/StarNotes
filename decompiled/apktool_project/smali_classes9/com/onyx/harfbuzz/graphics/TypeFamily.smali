.class public Lcom/onyx/harfbuzz/graphics/TypeFamily;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "familyName"

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typefaces"

    invoke-static {p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Typefaces list cannot be empty"

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/onyx/harfbuzz/graphics/TypeSlope;Lcom/onyx/harfbuzz/graphics/TypeSlope;)I
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/graphics/TypeSlope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/harfbuzz/graphics/TypeSlope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x2
        0x0
        0x1
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public static b(Lcom/onyx/harfbuzz/graphics/TypeWeight;Lcom/onyx/harfbuzz/graphics/TypeWeight;)I
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/graphics/TypeWeight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/harfbuzz/graphics/TypeWeight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x51

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p0, p0, 0x9

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x1
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x2
        0x1
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x4
        0x3
        0x2
        0x0
        0x1
        0x5
        0x6
        0x7
        0x8
        0x4
        0x3
        0x2
        0x1
        0x0
        0x5
        0x6
        0x7
        0x8
        0x8
        0x7
        0x6
        0x5
        0x4
        0x0
        0x1
        0x2
        0x3
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x0
        0x1
        0x2
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x0
        0x1
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public static c(Lcom/onyx/harfbuzz/graphics/TypeWidth;Lcom/onyx/harfbuzz/graphics/TypeWidth;)I
    .locals 0
    .param p0    # Lcom/onyx/harfbuzz/graphics/TypeWidth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/harfbuzz/graphics/TypeWidth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/onyx/harfbuzz/graphics/TypeFamily;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTypefaceByStyle(Lcom/onyx/harfbuzz/graphics/TypeWidth;Lcom/onyx/harfbuzz/graphics/TypeWeight;Lcom/onyx/harfbuzz/graphics/TypeSlope;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 4
    .param p1    # Lcom/onyx/harfbuzz/graphics/TypeWidth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/harfbuzz/graphics/TypeWeight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/harfbuzz/graphics/TypeSlope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "typeWidth"

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeWeight"

    invoke-static {p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSlope"

    invoke-static {p3, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWidth()Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->c(Lcom/onyx/harfbuzz/graphics/TypeWidth;Lcom/onyx/harfbuzz/graphics/TypeWidth;)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWidth()Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->c(Lcom/onyx/harfbuzz/graphics/TypeWidth;Lcom/onyx/harfbuzz/graphics/TypeWidth;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a(Lcom/onyx/harfbuzz/graphics/TypeSlope;Lcom/onyx/harfbuzz/graphics/TypeSlope;)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a(Lcom/onyx/harfbuzz/graphics/TypeSlope;Lcom/onyx/harfbuzz/graphics/TypeSlope;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b(Lcom/onyx/harfbuzz/graphics/TypeWeight;Lcom/onyx/harfbuzz/graphics/TypeWeight;)I

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b(Lcom/onyx/harfbuzz/graphics/TypeWeight;Lcom/onyx/harfbuzz/graphics/TypeWeight;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getTypefaces()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeFamily{familyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typefaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/TypeFamily;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
