.class public Lorg/apache/poi/xwpf/usermodel/TextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field anchor:Ljava/awt/geom/Rectangle2D;

.field indent:D

.field insets:Ljava/awt/Insets;

.field lineSpacing:Ljava/lang/Double;

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment;",
            ">;"
        }
    .end annotation
.end field

.field marginLeft:D

.field marginRight:D

.field rawText:Ljava/lang/String;

.field spaceAfter:D

.field spaceBefore:D

.field x:D

.field y:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->anchor:Ljava/awt/geom/Rectangle2D;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->insets:Ljava/awt/Insets;

    return-void
.end method

.method public static draw(Ljava/awt/Graphics2D;Ljava/util/List;DD)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/TextParagraph;",
            ">;DD)V"
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 19
    :cond_0
    iget-wide v6, v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->spaceBefore:D

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    mul-double/2addr v6, v2

    .line 20
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->getFirstLineHeight()D

    move-result-wide v8

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_1
    neg-double v6, v6

    :goto_1
    add-double/2addr p4, v6

    .line 21
    :goto_2
    invoke-virtual {v1, p2, p3, p4, p5}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->setPosition(DD)V

    .line 22
    invoke-virtual {v1, p0}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->draw(Ljava/awt/Graphics2D;)V

    .line 23
    iget-wide v6, v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->y:D

    add-double/2addr p4, v6

    .line 24
    iget-wide v6, v1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->spaceAfter:D

    cmpl-double v0, v6, v4

    if-lez v0, :cond_2

    mul-double/2addr v6, v2

    .line 25
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->getLastLineHeight()D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr p4, v6

    goto :goto_3

    :cond_2
    neg-double v0, v6

    add-double/2addr p4, v0

    :goto_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getWrappingWidth(Z)D
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->insets:Ljava/awt/Insets;

    iget v3, v2, Ljava/awt/Insets;->left:I

    int-to-double v3, v3

    sub-double/2addr v0, v3

    iget v2, v2, Ljava/awt/Insets;->right:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->marginLeft:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->marginRight:D

    sub-double/2addr v0, v2

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->indent:D

    sub-double/2addr v0, p0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public breakText(Ljava/awt/Graphics2D;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    new-instance v2, Ljava/text/AttributedString;

    const-string v3, "[\\r\\n]"

    const-string v4, " "

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;

    iget-object v4, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v5, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v6, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->beginIndex:I

    iget v7, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    iget-object v4, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v5, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v6, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->beginIndex:I

    iget v3, v3, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v2, v4, v5, v6, v3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p3

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    new-instance v2, Ljava/awt/font/LineBreakMeasurer;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p1

    invoke-direct {v2, p3, p1}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    :cond_1
    invoke-virtual {v2}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result p1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->getWrappingWidth(Z)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :cond_2
    const/4 v5, 0x0

    const-string v6, "\n"

    const/4 v7, 0x1

    if-nez p1, :cond_3

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    double-to-float v3, v3

    invoke-virtual {v2, v3, v7, v5}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_4

    invoke-interface {p3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v6

    :cond_4
    double-to-float v3, v3

    invoke-virtual {v2, v3, v6, v7}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v3, v6, v5}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v7

    invoke-interface {p3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v4

    if-ge v7, v4, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v4}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    :cond_7
    :goto_2
    new-instance v4, Ljava/text/AttributedString;

    invoke-direct {v4, v0, p1, v7}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object p1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    if-ne v7, p1, :cond_1

    :goto_3
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->rawText:Ljava/lang/String;

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->y:D

    .line 3
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    if-nez v2, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/sl/draw/DrawTextFragment;

    .line 6
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-lez v5, :cond_2

    .line 7
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v5, v9

    sub-double/2addr v0, v5

    .line 8
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v9

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v9

    float-to-int v9, v9

    int-to-double v9, v9

    mul-double/2addr v5, v9

    add-double/2addr v0, v5

    move-wide v5, v7

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    sub-double v5, v7, v5

    .line 10
    iget-object v9, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    sub-double/2addr v0, v9

    .line 11
    :goto_1
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v9

    float-to-double v9, v9

    sub-double/2addr v0, v9

    .line 12
    iget-wide v9, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->x:D

    iget-wide v11, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->marginLeft:D

    add-double/2addr v9, v11

    if-eqz v3, :cond_3

    .line 13
    iget-wide v11, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->indent:D

    add-double/2addr v9, v11

    const/4 v3, 0x0

    :cond_3
    add-double/2addr v5, v0

    .line 14
    invoke-virtual {v4, v9, v10, v5, v6}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    .line 15
    invoke-virtual {v4, p1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    .line 16
    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v4

    :goto_2
    float-to-double v4, v4

    add-double/2addr v0, v4

    goto/16 :goto_0

    .line 17
    :cond_5
    iget-wide v2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->y:D

    return-void
.end method

.method public getFirstLineHeight()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result p0

    float-to-double v0, p0

    :goto_0
    return-wide v0
.end method

.method public getFirstLineLeading()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result p0

    float-to-double v0, p0

    :goto_0
    return-wide v0
.end method

.method public getLastLineHeight()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result p0

    float-to-double v0, p0

    :goto_0
    return-wide v0
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->x:D

    iput-wide p3, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paragraph{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->rawText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
