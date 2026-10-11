.class public Lcom/onyx/harfbuzz/graphics/GlyphCache;
.super Lcom/onyx/harfbuzz/utils/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/GlyphCache$b;,
        Lcom/onyx/harfbuzz/graphics/GlyphCache$c;,
        Lcom/onyx/harfbuzz/graphics/GlyphCache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/harfbuzz/utils/LruCache<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:I = 0xc

.field public static final f:I = 0x10


# instance fields
.field public final d:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/onyx/harfbuzz/graphics/GlyphKey;",
            "Lcom/onyx/harfbuzz/utils/LruCache$Segment<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache;-><init>(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic e(Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->k(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/onyx/harfbuzz/graphics/GlyphCache;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/onyx/harfbuzz/graphics/GlyphCache$b;->a()Lcom/onyx/harfbuzz/graphics/GlyphCache;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/harfbuzz/utils/LruCache;->clear()V

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/harfbuzz/utils/LruCache$Segment;

    instance-of v2, v1, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    iget-object v1, v1, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->dispose()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final f(Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;I)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 8
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->j(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$c;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/harfbuzz/graphics/GlyphImage;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    iget p1, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;->foregroundColor:I

    int-to-long v3, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->b(IJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final g(Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;Lcom/onyx/harfbuzz/graphics/GlyphOutline;I)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 8
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/harfbuzz/graphics/GlyphOutline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->j(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$c;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/harfbuzz/graphics/GlyphImage;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    iget v4, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineRadius:I

    iget v5, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineCap:I

    iget v6, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->lineJoin:I

    iget v7, p1, Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;->miterLimit:I

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->f(Lcom/onyx/harfbuzz/graphics/GlyphOutline;IIII)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getGlyphImage(Lcom/onyx/harfbuzz/graphics/GlyphAttributes;I[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 11
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->h(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->i(Lcom/onyx/harfbuzz/graphics/GlyphCache$a;I)Lcom/onyx/harfbuzz/graphics/Glyph;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object v2

    iget v2, v2, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    invoke-virtual {v1, v2}, Lcom/onyx/harfbuzz/graphics/Glyph;->g(I)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {v2, p2}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->e(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v4, v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object v5

    iget v5, v5, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    int-to-long v6, v5

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->isAntiAlias()Z

    move-result v8

    move v5, p2

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->b(IJZ[II)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object p4

    iget p4, p4, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    invoke-virtual {v1, p4}, Lcom/onyx/harfbuzz/graphics/Glyph;->g(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/onyx/harfbuzz/graphics/Glyph;->l(I)V

    invoke-virtual {v1, p3}, Lcom/onyx/harfbuzz/graphics/Glyph;->h(Lcom/onyx/harfbuzz/graphics/GlyphImage;)V

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object p3

    iget p3, p3, Lcom/onyx/harfbuzz/graphics/GlyphKey;->strength:I

    invoke-virtual {v1, p3}, Lcom/onyx/harfbuzz/graphics/Glyph;->k(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/Glyph;->e()I

    move-result p3

    if-ne p3, v3, :cond_3

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->colorKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;

    move-result-object p1

    iget-object p3, v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {p0, p1, p3, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->f(Lcom/onyx/harfbuzz/graphics/GlyphKey$Color;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;I)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/Glyph;->a()Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getGlyphPath(Lcom/onyx/harfbuzz/graphics/GlyphAttributes;I)Landroid/graphics/Path;
    .locals 3
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->h(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->i(Lcom/onyx/harfbuzz/graphics/GlyphCache$a;I)Lcom/onyx/harfbuzz/graphics/Glyph;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/Glyph;->c()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {v1, p2}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->d(I)Landroid/graphics/Path;

    move-result-object v1

    monitor-enter p0

    :try_start_1
    invoke-virtual {v0}, Lcom/onyx/harfbuzz/graphics/Glyph;->c()Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/harfbuzz/graphics/Glyph;->j(Landroid/graphics/Path;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getStrokeImage(Lcom/onyx/harfbuzz/graphics/GlyphAttributes;I)Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 4
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->dataKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Data;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->h(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->i(Lcom/onyx/harfbuzz/graphics/GlyphCache$a;I)Lcom/onyx/harfbuzz/graphics/Glyph;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/Glyph;->b()Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {v2, p2}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;->c(I)Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    move-result-object v2

    monitor-enter p0

    :try_start_1
    invoke-virtual {v1}, Lcom/onyx/harfbuzz/graphics/Glyph;->b()Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->remove(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/onyx/harfbuzz/graphics/Glyph;->i(Lcom/onyx/harfbuzz/graphics/GlyphOutline;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphAttributes;->strokeKey()Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;

    move-result-object p1

    iget-object v0, v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->g(Lcom/onyx/harfbuzz/graphics/GlyphKey$Stroke;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;Lcom/onyx/harfbuzz/graphics/GlyphOutline;I)Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final h(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$a;
    .locals 2
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    invoke-direct {v0, p1}, Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;-><init>(Lcom/onyx/harfbuzz/graphics/GlyphKey;)V

    new-instance v1, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;

    invoke-direct {v1, p0, v0}, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;-><init>(Lcom/onyx/harfbuzz/utils/LruCache;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final i(Lcom/onyx/harfbuzz/graphics/GlyphCache$a;I)Lcom/onyx/harfbuzz/graphics/Glyph;
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphCache$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/harfbuzz/graphics/Glyph;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/harfbuzz/graphics/Glyph;

    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/Glyph;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final j(Lcom/onyx/harfbuzz/graphics/GlyphKey;)Lcom/onyx/harfbuzz/graphics/GlyphCache$c;
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/graphics/GlyphKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$c;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/graphics/GlyphCache$c;-><init>(Lcom/onyx/harfbuzz/utils/LruCache;)V

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/GlyphKey;->copy()Lcom/onyx/harfbuzz/graphics/GlyphKey;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
