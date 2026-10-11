.class public Lsun/font/AndroidGlyphVector;
.super Lsun/font/StandardGlyphVector;
.source "SourceFile"


# instance fields
.field private ci:Ljava/text/CharacterIterator;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/lang/String;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;Ljava/lang/String;Ljava/awt/font/FontRenderContext;)V

    .line 2
    iput-object p2, p0, Lsun/font/AndroidGlyphVector;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;Ljava/text/CharacterIterator;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;Ljava/text/CharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 9
    iput-object p2, p0, Lsun/font/AndroidGlyphVector;->ci:Ljava/text/CharacterIterator;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;)V

    .line 6
    invoke-static {p2, p3, p4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/AndroidGlyphVector;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[CLjava/awt/font/FontRenderContext;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;[CLjava/awt/font/FontRenderContext;)V

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/AndroidGlyphVector;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Font;[ILjava/awt/font/FontRenderContext;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lsun/font/StandardGlyphVector;-><init>(Ljava/awt/Font;[ILjava/awt/font/FontRenderContext;)V

    return-void
.end method


# virtual methods
.method public getCi()Ljava/text/CharacterIterator;
    .locals 0

    iget-object p0, p0, Lsun/font/AndroidGlyphVector;->ci:Ljava/text/CharacterIterator;

    return-object p0
.end method

.method public getGlyphMetrics(I)Ljava/awt/font/GlyphMetrics;
    .locals 0

    invoke-super {p0, p1}, Lsun/font/StandardGlyphVector;->getGlyphMetrics(I)Ljava/awt/font/GlyphMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/AndroidGlyphVector;->text:Ljava/lang/String;

    return-object p0
.end method
