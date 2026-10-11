.class public Lorg/apache/poi/text/HBHighlight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/text/Highlight;


# instance fields
.field private advances:[F

.field private height:F

.field private metrics:[F

.field private textPart:Lorg/apache/poi/sl/draw/DrawTextPart;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apache/poi/text/HBHighlight;->height:F

    return-void
.end method

.method private getTextPartAdvancesAndMetrics()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/text/HBHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/apache/poi/text/HBHighlight;->advances:[F

    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/apache/poi/text/HBHighlight;->metrics:[F

    invoke-static {v0, v1, v2}, Lcom/trans/android/hb/HBUtils;->getMetrics(Ljava/text/AttributedCharacterIterator;[F[F)V

    iget-object v0, p0, Lorg/apache/poi/text/HBHighlight;->metrics:[F

    invoke-static {v0}, Lcom/onyx/common/util/ArrayUtils;->getSum([F)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/text/HBHighlight;->height:F

    return-void
.end method


# virtual methods
.method public getHeight()D
    .locals 2

    iget p0, p0, Lorg/apache/poi/text/HBHighlight;->height:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getHighlight(Ljava/awt/geom/Point2D;II)Ljava/awt/geom/Rectangle2D;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/HBHighlight;->advances:[F

    invoke-static {v0, p2, p3}, Lcom/onyx/common/util/ArrayUtils;->getSum([FII)F

    move-result p2

    new-instance p3, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lorg/apache/poi/text/HBHighlight;->metrics:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    float-to-double v5, p1

    sub-double/2addr v3, v5

    float-to-double v5, p2

    iget p0, p0, Lorg/apache/poi/text/HBHighlight;->height:F

    float-to-double v7, p0

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p3
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/HBHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lorg/apache/poi/sl/draw/DrawTextPart;Ljava/awt/geom/AffineTransform;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/text/HBHighlight;->release()V

    iput-object p1, p0, Lorg/apache/poi/text/HBHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-direct {p0}, Lorg/apache/poi/text/HBHighlight;->getTextPartAdvancesAndMetrics()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/text/HBHighlight;->textPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    iput-object v0, p0, Lorg/apache/poi/text/HBHighlight;->advances:[F

    iput-object v0, p0, Lorg/apache/poi/text/HBHighlight;->metrics:[F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apache/poi/text/HBHighlight;->height:F

    return-void
.end method
