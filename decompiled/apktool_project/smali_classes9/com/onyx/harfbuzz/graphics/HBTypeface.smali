.class public Lcom/onyx/harfbuzz/graphics/HBTypeface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/HBTypeface$d;,
        Lcom/onyx/harfbuzz/graphics/HBTypeface$b;,
        Lcom/onyx/harfbuzz/graphics/HBTypeface$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

.field public d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

.field public e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

.field nativeTypeface:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "assetManager"

    .line 2
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    .line 3
    invoke-static {p2, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nCreateWithAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 5
    iput-object p2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c(J)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified asset"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;[F)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetVariationInstance(J[F)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    .line 23
    iget-object p1, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    .line 25
    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    .line 26
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->k()V

    .line 27
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->h()V

    .line 28
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->i()V

    .line 29
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->l()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;[I)V
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-wide v0, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetColorInstance(J[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    .line 32
    iget-object p2, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iput-object p2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    .line 33
    iget-object p2, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iput-object p2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    .line 34
    iget-object p1, p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file"

    .line 9
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nCreateWithFile(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c(J)V

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stream"

    .line 15
    invoke-static {p1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nCreateFromStream(Ljava/io/InputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c(J)V

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create typeface from specified stream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nCreateFromStream(Ljava/io/InputStream;)J
.end method

.method private static native nCreateWithAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private static native nCreateWithFile(Ljava/lang/String;)J
.end method

.method private static native nDispose(J)V
.end method

.method private static native nGetAscent(J)I
.end method

.method private static native nGetAssociatedColors(J[I)V
.end method

.method private static native nGetBoundingBox(JLandroid/graphics/Rect;)V
.end method

.method private static native nGetColorInstance(J[I)J
.end method

.method private static native nGetDefaultFamilyName(J)Ljava/lang/String;
.end method

.method private static native nGetDefaultFullName(J)Ljava/lang/String;
.end method

.method private static native nGetDefaultSlope(J)I
.end method

.method private static native nGetDefaultStyleName(J)Ljava/lang/String;
.end method

.method private static native nGetDefaultWeight(J)I
.end method

.method private static native nGetDefaultWidth(J)I
.end method

.method private static native nGetDescent(J)I
.end method

.method private static native nGetGlyphAdvance(JIFZ)F
.end method

.method private static native nGetGlyphCount(J)I
.end method

.method private static native nGetGlyphId(JI)I
.end method

.method private static native nGetGlyphPath(JIF[F)Landroid/graphics/Path;
.end method

.method private static native nGetLeading(J)I
.end method

.method private static native nGetStrikeoutPosition(J)I
.end method

.method private static native nGetStrikeoutThickness(J)I
.end method

.method private static native nGetTableData(JI)[B
.end method

.method private static native nGetUnderlinePosition(J)I
.end method

.method private static native nGetUnderlineThickness(J)I
.end method

.method private static native nGetUnitsPerEm(J)I
.end method

.method private static native nGetVariationCoordinates(J[F)V
.end method

.method private static native nGetVariationInstance(J[F)J
.end method

.method private static native nSearchNameString(JI)Ljava/lang/String;
.end method

.method private static native nSetupColors(J[I)V
.end method

.method private static native nSetupCoordinates(J[F)V
.end method

.method private static native nSetupStrikeout(J)V
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStyleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object v0, v2, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iget-object v2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStyleName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()[F
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationAxes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/harfbuzz/font/VariationAxis;

    invoke-virtual {v3}, Lcom/onyx/harfbuzz/font/VariationAxis;->defaultValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->g()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->k()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->h()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->i()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->l()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->f()V

    return-void
.end method

.method public final d(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nSearchNameString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nDispose(J)V

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->b()[F

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nSetupCoordinates(J[F)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getPredefinedPalettes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/font/ColorPalette;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/font/ColorPalette;->colors()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nSetupColors(J[I)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->m()V

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->j()V

    return-void
.end method

.method public getAscent()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetAscent(J)I

    move-result p0

    return p0
.end method

.method public getAssociatedColors()[I
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getPaletteEntryNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetAssociatedColors(J[I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetBoundingBox(JLandroid/graphics/Rect;)V

    return-object v0
.end method

.method public getColorInstance([I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getPaletteEntryNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "colors"

    invoke-static {p1, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Palette should have exactly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " colors"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-direct {v0, p0, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;[I)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This typeface does not support color palettes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescent()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDescent(J)I

    move-result p0

    return p0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getGlyphAdvance(IFZ)F
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetGlyphAdvance(JIFZ)F

    move-result p0

    return p0
.end method

.method public getGlyphCount()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetGlyphCount(J)I

    move-result p0

    return p0
.end method

.method public getGlyphId(I)I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetGlyphId(JI)I

    move-result p0

    return p0
.end method

.method public getGlyphPath(IFLandroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 3
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p3, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2, p1, p2, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetGlyphPath(JIF[F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getLeading()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetLeading(J)I

    move-result p0

    return p0
.end method

.method public getNamedStyles()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/font/NamedStyle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPaletteEntryNames()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPredefinedPalettes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/font/ColorPalette;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->d:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->c:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    return-object p0
.end method

.method public getStrikeoutPosition()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetStrikeoutPosition(J)I

    move-result p0

    return p0
.end method

.method public getStrikeoutThickness()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetStrikeoutThickness(J)I

    move-result p0

    return p0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTableData(I)[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetTableData(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public getUnderlinePosition()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetUnderlinePosition(J)I

    move-result p0

    return p0
.end method

.method public getUnderlineThickness()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetUnderlineThickness(J)I

    move-result p0

    return p0
.end method

.method public getUnitsPerEm()I
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetUnitsPerEm(J)I

    move-result p0

    return p0
.end method

.method public getVariationAxes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/font/VariationAxis;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->a:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVariationCoordinates()[F
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationAxes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2, v0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetVariationCoordinates(J[F)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVariationInstance([F)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationAxes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "coordinates"

    invoke-static {p1, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The number of coordinates does not match with variation axes."

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-instance v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-direct {v0, p0, p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;[F)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This typeface does not support variations."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->a:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    return-object p0
.end method

.method public getWidth()Lcom/onyx/harfbuzz/graphics/TypeWidth;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->b:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    return-object p0
.end method

.method public final h()V
    .locals 3

    new-instance v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultWeight(J)I

    move-result v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/graphics/TypeWeight;->valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->a:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultWidth(J)I

    move-result v1

    invoke-static {v1}, Lcom/onyx/harfbuzz/graphics/TypeWidth;->valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->b:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultSlope(J)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/TypeSlope;->valueOf(I)Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->c:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    return-void
.end method

.method public final i()V
    .locals 4

    new-instance v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface$a;)V

    iput-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultFamilyName(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v1, v2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultStyleName(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v2, v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultFullName(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object v0, v3, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->a:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object v1, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->b:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object v2, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a()V

    :goto_0
    return-void
.end method

.method public isVariable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationAxes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->from(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->numPaletteEntries()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->numPalettes()I

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->colorRecords()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->paletteTypes()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->paletteLabels()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;

    move-result-object v6

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->paletteEntryLabels()Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    const v11, 0xffff

    const/4 v12, 0x0

    const-string v13, ""

    if-ge v10, v3, :cond_5

    new-array v14, v2, [I

    if-eqz v6, :cond_1

    invoke-virtual {v6, v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;->get(I)I

    move-result v15

    if-eq v15, v11, :cond_1

    invoke-virtual {v0, v15}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d(I)Ljava/lang/String;

    move-result-object v12

    :cond_1
    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    move-object v13, v12

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5, v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;->get(I)I

    move-result v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v1, v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorPaletteTable;->colorRecordIndexAt(I)I

    move-result v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v2, :cond_4

    add-int v9, v12, v15

    invoke-virtual {v4, v9}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/ColorRecordsArray;->get(I)I

    move-result v9

    aput v9, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v13, v11, v14}, Lcom/onyx/harfbuzz/font/ColorPalette;->of(Ljava/lang/String;I[I)Lcom/onyx/harfbuzz/font/ColorPalette;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v7, :cond_6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_9

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_9

    invoke-virtual {v7, v9}, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;->get(I)I

    move-result v3

    if-eq v3, v11, :cond_7

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object v3, v12

    :goto_6
    if-nez v3, :cond_8

    move-object v3, v13

    :cond_8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iput-object v8, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->c:Ljava/util/List;

    return-void
.end method

.method public final k()V
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v0, v1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nSetupStrikeout(J)V

    return-void
.end method

.method public final l()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationCoordinates()[F

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getNamedStyles()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    const-string v4, ""

    iput-object v4, v3, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->c:Ljava/lang/String;

    array-length v3, v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/harfbuzz/font/NamedStyle;

    invoke-virtual {v4}, Lcom/onyx/harfbuzz/font/NamedStyle;->styleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/harfbuzz/font/NamedStyle;->coordinates()[F

    move-result-object v4

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_4

    aget v7, v0, v6

    aget v8, v4, v6

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x37800000

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->e:Lcom/onyx/harfbuzz/graphics/HBTypeface$d;

    iput-object v5, v1, Lcom/onyx/harfbuzz/graphics/HBTypeface$d;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a()V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getVariationAxes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "ital"

    invoke-static {v4}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v4

    const-string v5, "slnt"

    invoke-static {v5}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v5

    const-string v6, "wdth"

    invoke-static {v6}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v6

    const-string v7, "wght"

    invoke-static {v7}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTag;->make(Ljava/lang/String;)I

    move-result v7

    :goto_3
    if-ge v2, v3, :cond_a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/harfbuzz/font/VariationAxis;

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/font/VariationAxis;->tag()I

    move-result v8

    if-ne v8, v4, :cond_6

    iget-object v8, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    aget v9, v0, v2

    invoke-static {v9}, Lcom/onyx/harfbuzz/graphics/TypeSlope;->fromItal(F)Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v9

    iput-object v9, v8, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->c:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    goto :goto_4

    :cond_6
    if-ne v8, v5, :cond_7

    iget-object v8, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    aget v9, v0, v2

    invoke-static {v9}, Lcom/onyx/harfbuzz/graphics/TypeSlope;->fromSlnt(F)Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v9

    iput-object v9, v8, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->c:Lcom/onyx/harfbuzz/graphics/TypeSlope;

    goto :goto_4

    :cond_7
    if-ne v8, v6, :cond_8

    iget-object v8, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    aget v9, v0, v2

    invoke-static {v9}, Lcom/onyx/harfbuzz/graphics/TypeWidth;->fromWdth(F)Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v9

    iput-object v9, v8, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->b:Lcom/onyx/harfbuzz/graphics/TypeWidth;

    goto :goto_4

    :cond_8
    if-ne v8, v7, :cond_9

    iget-object v8, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d:Lcom/onyx/harfbuzz/graphics/HBTypeface$c;

    aget v9, v0, v2

    invoke-static {v9}, Lcom/onyx/harfbuzz/graphics/TypeWeight;->fromWght(F)Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v9

    iput-object v9, v8, Lcom/onyx/harfbuzz/graphics/HBTypeface$c;->a:Lcom/onyx/harfbuzz/graphics/TypeWeight;

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method public final m()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->from(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->axisRecords()[Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/FontVariationsTable;->instanceRecords()[Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, ""

    if-ge v6, v4, :cond_2

    aget-object v8, v2, v6

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->axisTag()I

    move-result v9

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->minValue()F

    move-result v13

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->defaultValue()F

    move-result v12

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->maxValue()F

    move-result v14

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->flags()I

    move-result v11

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->axisNameId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v10, v7

    goto :goto_1

    :cond_1
    move-object v10, v8

    :goto_1
    invoke-static/range {v9 .. v14}, Lcom/onyx/harfbuzz/font/VariationAxis;->of(ILjava/lang/String;IFFF)Lcom/onyx/harfbuzz/font/VariationAxis;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v1

    move v6, v5

    move v8, v6

    :goto_2
    const/4 v9, 0x0

    if-ge v6, v4, :cond_8

    aget-object v10, v1, v6

    invoke-virtual {v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->subfamilyNameID()I

    move-result v11

    invoke-virtual {v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->coordinates()[F

    move-result-object v12

    invoke-virtual {v10}, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->postScriptNameID()I

    move-result v10

    invoke-virtual {v0, v11}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    move-object v11, v7

    :cond_3
    const/4 v13, -0x1

    if-le v10, v13, :cond_4

    invoke-virtual {v0, v10}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->d(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-nez v8, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    move v13, v5

    :goto_3
    const/4 v14, 0x1

    if-ge v13, v10, :cond_6

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/onyx/harfbuzz/font/VariationAxis;

    aget v16, v12, v13

    invoke-virtual {v15}, Lcom/onyx/harfbuzz/font/VariationAxis;->defaultValue()F

    move-result v15

    sub-float v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x37800000

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_5

    move v10, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    move v10, v14

    :goto_4
    if-eqz v10, :cond_7

    move v8, v14

    :cond_7
    invoke-static {v11, v12, v9}, Lcom/onyx/harfbuzz/font/NamedStyle;->of(Ljava/lang/String;[FLjava/lang/String;)Lcom/onyx/harfbuzz/font/NamedStyle;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    if-nez v8, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [F

    move v6, v5

    :goto_5
    if-ge v6, v1, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/harfbuzz/font/VariationAxis;

    invoke-virtual {v8}, Lcom/onyx/harfbuzz/font/VariationAxis;->defaultValue()F

    move-result v8

    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iget-wide v10, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nativeTypeface:J

    invoke-static {v10, v11}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->nGetDefaultStyleName(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    move-object v7, v1

    :goto_6
    invoke-static {v7, v4, v9}, Lcom/onyx/harfbuzz/font/NamedStyle;->of(Ljava/lang/String;[FLjava/lang/String;)Lcom/onyx/harfbuzz/font/NamedStyle;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_b
    iget-object v0, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->c:Lcom/onyx/harfbuzz/graphics/HBTypeface$b;

    iput-object v3, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->a:Ljava/util/List;

    iput-object v2, v0, Lcom/onyx/harfbuzz/graphics/HBTypeface$b;->b:Ljava/util/List;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Typeface{familyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/HBTypeface;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", styleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStyleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWeight()Lcom/onyx/harfbuzz/graphics/TypeWeight;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getWidth()Lcom/onyx/harfbuzz/graphics/TypeWidth;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getSlope()Lcom/onyx/harfbuzz/graphics/TypeSlope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unitsPerEm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnitsPerEm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getAscent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getDescent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getLeading()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", glyphCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getGlyphCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", underlinePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnderlinePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", underlineThickness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getUnderlineThickness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strikeoutPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStrikeoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strikeoutThickness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStrikeoutThickness()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
