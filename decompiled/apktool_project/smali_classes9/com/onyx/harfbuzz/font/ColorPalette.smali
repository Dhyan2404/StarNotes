.class public final Lcom/onyx/harfbuzz/font/ColorPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/font/ColorPalette$Flags;
    }
.end annotation


# static fields
.field public static final USABLE_WITH_DARK_BACKGROUND:I = 0x2

.field public static final USABLE_WITH_LIGHT_BACKGROUND:I = 0x1


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->b:I

    iput-object p3, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->c:[I

    return-void
.end method

.method public static of(Ljava/lang/String;I[I)Lcom/onyx/harfbuzz/font/ColorPalette;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "The colors array is empty"

    invoke-static {v1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/font/ColorPalette;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/harfbuzz/font/ColorPalette;-><init>(Ljava/lang/String;I[I)V

    return-object v0
.end method


# virtual methods
.method public colors()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->c:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/harfbuzz/font/ColorPalette;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/font/ColorPalette;

    iget-object v2, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/harfbuzz/font/ColorPalette;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->b:I

    iget v3, p1, Lcom/onyx/harfbuzz/font/ColorPalette;->b:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->c:[I

    iget-object p1, p1, Lcom/onyx/harfbuzz/font/ColorPalette;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

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

    iget p0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->c:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/font/ColorPalette;->a:Ljava/lang/String;

    return-object p0
.end method
