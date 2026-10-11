.class public final Lcom/onyx/harfbuzz/graphics/Glyph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/graphics/Glyph$Type;
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field public a:I

.field public b:Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/harfbuzz/graphics/GlyphOutline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/harfbuzz/graphics/GlyphImage;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->b:Lcom/onyx/harfbuzz/graphics/GlyphImage;

    return-object p0
.end method

.method public b()Lcom/onyx/harfbuzz/graphics/GlyphOutline;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->c:Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    return-object p0
.end method

.method public c()Landroid/graphics/Path;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->e:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->a:I

    return p0
.end method

.method public f()Z
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->a:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/graphics/Glyph;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->e:I

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public h(Lcom/onyx/harfbuzz/graphics/GlyphImage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->b:Lcom/onyx/harfbuzz/graphics/GlyphImage;

    return-void
.end method

.method public i(Lcom/onyx/harfbuzz/graphics/GlyphOutline;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->c:Lcom/onyx/harfbuzz/graphics/GlyphOutline;

    return-void
.end method

.method public j(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->d:Landroid/graphics/Path;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->e:I

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/harfbuzz/graphics/Glyph;->a:I

    return-void
.end method
