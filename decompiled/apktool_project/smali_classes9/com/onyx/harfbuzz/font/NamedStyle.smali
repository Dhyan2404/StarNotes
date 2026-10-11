.class public Lcom/onyx/harfbuzz/font/NamedStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[FLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->b:[F

    iput-object p3, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;[FLjava/lang/String;)Lcom/onyx/harfbuzz/font/NamedStyle;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "styleName"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "The coordinates array is empty"

    invoke-static {v1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/font/NamedStyle;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/harfbuzz/font/NamedStyle;-><init>(Ljava/lang/String;[FLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public coordinates()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->b:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/font/NamedStyle;

    iget-object v2, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/harfbuzz/font/NamedStyle;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->b:[F

    iget-object v3, p1, Lcom/onyx/harfbuzz/font/NamedStyle;->b:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->b:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public postScriptName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->c:Ljava/lang/String;

    return-object p0
.end method

.method public styleName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/NamedStyle;->a:Ljava/lang/String;

    return-object p0
.end method
