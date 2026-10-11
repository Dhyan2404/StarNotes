.class public Lcom/onyx/harfbuzz/graphics/GlyphCache$a;
.super Lcom/onyx/harfbuzz/utils/LruCache$Segment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/harfbuzz/utils/LruCache$Segment<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:I = 0x44


# instance fields
.field public final b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/utils/LruCache;Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;-><init>(Lcom/onyx/harfbuzz/utils/LruCache;)V

    iput-object p2, p0, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->b:Lcom/onyx/harfbuzz/graphics/GlyphRasterizer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/onyx/harfbuzz/graphics/Glyph;

    invoke-virtual {p2}, Lcom/onyx/harfbuzz/graphics/Glyph;->a()Lcom/onyx/harfbuzz/graphics/GlyphImage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->bitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->e(Landroid/graphics/Bitmap;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x44

    return p0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache$a;->a(Ljava/lang/Integer;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
