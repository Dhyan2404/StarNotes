.class public final Lsun/font/TextLabelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bidi:Ljava/text/Bidi;

.field private final flags:I

.field private final frc:Ljava/awt/font/FontRenderContext;

.field private lineBidi:Ljava/text/Bidi;

.field private lineLimit:I

.field private lineStart:I

.field private final text:[C


# direct methods
.method public constructor <init>(Ljava/awt/font/FontRenderContext;[CLjava/text/Bidi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/TextLabelFactory;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lsun/font/TextLabelFactory;->text:[C

    iput-object p3, p0, Lsun/font/TextLabelFactory;->bidi:Ljava/text/Bidi;

    iput p4, p0, Lsun/font/TextLabelFactory;->flags:I

    iput-object p3, p0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    const/4 p1, 0x0

    iput p1, p0, Lsun/font/TextLabelFactory;->lineStart:I

    array-length p1, p2

    iput p1, p0, Lsun/font/TextLabelFactory;->lineLimit:I

    return-void
.end method


# virtual methods
.method public createExtended(Ljava/awt/Font;Lsun/font/CoreMetrics;Lsun/font/Decoration;II)Lsun/font/ExtendedTextLabel;
    .locals 12

    move-object v0, p0

    move/from16 v2, p4

    move/from16 v1, p5

    if-ge v2, v1, :cond_5

    iget v3, v0, Lsun/font/TextLabelFactory;->lineStart:I

    if-lt v2, v3, :cond_5

    iget v4, v0, Lsun/font/TextLabelFactory;->lineLimit:I

    if-gt v1, v4, :cond_5

    iget-object v4, v0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    sub-int v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v3

    move v6, v3

    :goto_0
    iget-object v3, v0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    :cond_2
    :goto_1
    iget v3, v0, Lsun/font/TextLabelFactory;->flags:I

    and-int/lit8 v3, v3, -0xa

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_3

    or-int/lit8 v3, v3, 0x1

    :cond_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    move v7, v3

    new-instance v11, Lsun/font/StandardTextSource;

    iget-object v3, v0, Lsun/font/TextLabelFactory;->text:[C

    sub-int v4, v1, v2

    iget v5, v0, Lsun/font/TextLabelFactory;->lineStart:I

    iget v1, v0, Lsun/font/TextLabelFactory;->lineLimit:I

    sub-int v8, v1, v5

    iget-object v9, v0, Lsun/font/TextLabelFactory;->frc:Ljava/awt/font/FontRenderContext;

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, p4

    move v3, v4

    move v4, v5

    move v5, v8

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lsun/font/StandardTextSource;-><init>([CIIIIIILjava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/CoreMetrics;)V

    new-instance v0, Lsun/font/ExtendedTextSourceLabel;

    move-object v1, p3

    invoke-direct {v0, v11, p3}, Lsun/font/ExtendedTextSourceLabel;-><init>(Lsun/font/TextSource;Lsun/font/Decoration;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or limit: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSimple(Ljava/awt/Font;Lsun/font/CoreMetrics;II)Lsun/font/TextLabel;
    .locals 12

    move-object v0, p0

    move v2, p3

    move/from16 v1, p4

    if-ge v2, v1, :cond_5

    iget v3, v0, Lsun/font/TextLabelFactory;->lineStart:I

    if-lt v2, v3, :cond_5

    iget v4, v0, Lsun/font/TextLabelFactory;->lineLimit:I

    if-gt v1, v4, :cond_5

    iget-object v4, v0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    sub-int v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v3

    move v6, v3

    :goto_0
    iget-object v3, v0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    :cond_2
    :goto_1
    iget v3, v0, Lsun/font/TextLabelFactory;->flags:I

    and-int/lit8 v3, v3, -0xa

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_3

    or-int/lit8 v3, v3, 0x1

    :cond_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    move v7, v3

    new-instance v11, Lsun/font/StandardTextSource;

    iget-object v3, v0, Lsun/font/TextLabelFactory;->text:[C

    sub-int v4, v1, v2

    iget v5, v0, Lsun/font/TextLabelFactory;->lineStart:I

    iget v1, v0, Lsun/font/TextLabelFactory;->lineLimit:I

    sub-int v8, v1, v5

    iget-object v9, v0, Lsun/font/TextLabelFactory;->frc:Ljava/awt/font/FontRenderContext;

    move-object v0, v11

    move-object v1, v3

    move v2, p3

    move v3, v4

    move v4, v5

    move v5, v8

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lsun/font/StandardTextSource;-><init>([CIIIIIILjava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/CoreMetrics;)V

    new-instance v0, Lsun/font/TextSourceLabel;

    invoke-direct {v0, v11}, Lsun/font/TextSourceLabel;-><init>(Lsun/font/TextSource;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or limit: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 0

    iget-object p0, p0, Lsun/font/TextLabelFactory;->frc:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public getLineBidi()Ljava/text/Bidi;
    .locals 0

    iget-object p0, p0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    return-object p0
.end method

.method public setLineContext(II)V
    .locals 1

    iput p1, p0, Lsun/font/TextLabelFactory;->lineStart:I

    iput p2, p0, Lsun/font/TextLabelFactory;->lineLimit:I

    iget-object v0, p0, Lsun/font/TextLabelFactory;->bidi:Ljava/text/Bidi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object p1

    iput-object p1, p0, Lsun/font/TextLabelFactory;->lineBidi:Ljava/text/Bidi;

    :cond_0
    return-void
.end method
