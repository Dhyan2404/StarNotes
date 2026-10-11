.class public Lcom/onyx/harfbuzz/graphics/GlyphImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIJJJJJJ)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->b:I

    iput p3, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->c:I

    iput-wide p4, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->d:J

    iput-wide p6, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->e:J

    iput-wide p8, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->f:J

    iput-wide p10, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->g:J

    iput-wide p12, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->h:J

    iput-wide p14, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->i:J

    iput-object p1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public bitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public bottom()I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->c:I

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getHoriAdvance()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->h:J

    return-wide v0
.end method

.method public getVertAdvance()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->i:J

    return-wide v0
.end method

.method public horiBearingX()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->f:J

    return-wide v0
.end method

.method public horiBearingY()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->g:J

    return-wide v0
.end method

.method public left()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->b:I

    return p0
.end method

.method public right()I
    .locals 1

    iget v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->b:I

    iget-object p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlyphImage{bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vertBearingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vertBearingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", horiBearingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", horiBearingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", horiAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vertAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public top()I
    .locals 0

    iget p0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->c:I

    return p0
.end method

.method public vertBearingX()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->d:J

    return-wide v0
.end method

.method public vertBearingY()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/harfbuzz/graphics/GlyphImage;->e:J

    return-wide v0
.end method
