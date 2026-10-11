.class public Lorg/apache/poi/sl/draw/DrawTextParagraph2;
.super Lorg/apache/poi/sl/draw/DrawTextParagraph;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LATEX_END:Ljava/lang/String; = "</latex>"

.field private static final LATEX_JC_END:Ljava/lang/String; = "</jc>"

.field private static final LATEX_JC_START:Ljava/lang/String; = "<jc>"

.field private static final LATEX_SIZE_END:Ljava/lang/String; = "</size>"

.field private static final LATEX_SIZE_START:Ljava/lang/String; = "<size>"

.field private static final LATEX_START:Ljava/lang/String; = "<latex>"

.field public static SMALL_CAP:Ljava/lang/String; = "\u1d00\u0299\u1d04\u1d05\u1d07\u0493\u0262\u029c\u026a\u1d0a\u1d0b\u029f\u1d0d\u0274\u1d0f\u1d18\u01eb\u0280s\u1d1b\u1d1c\u1d20\u1d21x\u028f\u1d22"


# instance fields
.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;-><init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lambda$getAttributedString2$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method private createCharacterBreakMeasurer(Ljava/awt/font/FontRenderContext;Ljava/text/AttributedCharacterIterator;I)Ljava/awt/font/LineBreakMeasurer;
    .locals 1

    new-instance p0, Ljava/awt/font/LineBreakMeasurer;

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/text/BreakIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p0, p3}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    return-object p0
.end method

.method private createTextFragment2(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/sl/draw/DrawTextFragment2;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextFragment2;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic d(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lambda$getAttributedString2$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method private getLeftAndIndent(Z)[D
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    iget-object v4, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [D

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-nez v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double p0, v5, v9

    if-gez p0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_1
    aput-wide v1, v4, v8

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    aput-wide p0, v4, v8

    goto/16 :goto_7

    :cond_4
    if-eqz p1, :cond_5

    move-object v0, v3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    aput-wide p0, v4, v8

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v5, v9, v11

    if-lez v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v5, v9, v1

    if-gez v5, :cond_7

    move-wide v9, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_2
    aput-wide v9, v4, v8

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result p0

    add-float/2addr p0, v6

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    aput-wide p0, v4, v7

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, p0, v1

    if-lez p0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double/2addr p0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_3
    aput-wide p0, v4, v7

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v4, v8

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v1, v8

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result p0

    add-float/2addr p0, v6

    float-to-double p0, p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    :cond_b
    aput-wide v1, v4, v7

    goto/16 :goto_7

    :cond_c
    iget-object v5, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-nez v5, :cond_11

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double p0, v5, v1

    if-gez p0, :cond_f

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr p0, v5

    cmpl-double p0, p0, v1

    if-lez p0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double v1, p0, v0

    :cond_d
    aput-wide v1, v4, v8

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    aput-wide p0, v4, v8

    goto/16 :goto_7

    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr p0, v0

    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_4
    aput-wide p0, v4, v8

    goto/16 :goto_7

    :cond_11
    iget-object v5, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v5, v9, v1

    if-gez v5, :cond_15

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpl-double v5, v9, v1

    if-lez v5, :cond_12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v9, v11

    goto :goto_5

    :cond_12
    move-wide v9, v1

    :goto_5
    aput-wide v9, v4, v8

    if-eqz p1, :cond_13

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result p0

    add-float/2addr p0, v6

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    aput-wide p0, v4, v7

    goto :goto_7

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr p0, v5

    cmpl-double p0, p0, v1

    if-lez p0, :cond_14

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    neg-double p0, p0

    goto :goto_6

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_6
    aput-wide p0, v4, v7

    goto :goto_7

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v4, v8

    if-eqz p1, :cond_16

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result p0

    add-float/2addr p0, v6

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    :cond_16
    aput-wide v1, v4, v7

    :goto_7
    return-object v4
.end method

.method private static synthetic lambda$getAttributedString2$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    invoke-direct {v0, p3, p4, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getAttributedString2$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setTextCapFont(Ljava/util/Map;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    const-string v3, "Times New Roman"

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public breakText(Ljava/awt/Graphics2D;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getAttributedString2(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/text/AttributedString;

    invoke-direct {v4, v2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/text/AttributedString;

    const-string v6, "[\\r\\n]"

    const-string v7, " "

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    iget-object v7, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v8, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v9, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v10, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v4, v7, v8, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    iget-object v7, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v8, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v9, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v6, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v5, v7, v8, v9, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    invoke-virtual {v5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getHangingPunct()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v12

    new-instance v13, Ljava/awt/font/LineBreakMeasurer;

    invoke-direct {v13, v3, v12}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    :cond_1
    iget-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createTextFragment2(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/sl/draw/DrawTextFragment2;

    move-result-object v6

    move-object v11, v6

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v13}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v7

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    move v8, v9

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v0, v8, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getWrappingWidth2(ZLjava/awt/Graphics2D;)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpg-double v8, v16, v20

    if-gez v8, :cond_3

    move-wide/from16 v9, v18

    goto :goto_3

    :cond_3
    move-wide/from16 v9, v16

    :goto_3
    if-nez v6, :cond_17

    const-string v8, "<latex>"

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    goto/16 :goto_c

    :cond_4
    const-string v15, "\n"

    if-nez v7, :cond_5

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    double-to-float v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v13, v8, v10, v9}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v8

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v25, v11

    move-object/from16 v21, v14

    const/4 v9, 0x1

    move-object v14, v12

    goto/16 :goto_a

    :cond_5
    invoke-virtual {v11}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getWidth()F

    move-result v6

    move-object/from16 v18, v4

    move/from16 v19, v5

    float-to-double v4, v6

    sub-double/2addr v9, v4

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v5

    :cond_6
    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    if-ge v4, v5, :cond_7

    move v5, v4

    :cond_7
    double-to-float v6, v9

    const/4 v8, 0x1

    invoke-virtual {v13, v6, v5, v8}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v15

    if-nez v15, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v13, v6, v5, v8}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v15

    :cond_8
    if-nez v15, :cond_9

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v13}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v8

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-ge v8, v1, :cond_c

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v20, v8

    const/16 v8, 0xa

    if-ne v1, v8, :cond_b

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move/from16 v5, v20

    if-ge v5, v1, :cond_a

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v13, v1}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    :cond_a
    move v1, v5

    goto/16 :goto_6

    :cond_b
    move/from16 v1, v20

    goto :goto_4

    :cond_c
    move v1, v8

    :goto_4
    if-ge v1, v4, :cond_d

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/StringUtil;->isPunct(C)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {v0, v12, v3, v7}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createCharacterBreakMeasurer(Ljava/awt/font/FontRenderContext;Ljava/text/AttributedCharacterIterator;I)Ljava/awt/font/LineBreakMeasurer;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v8}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v5

    invoke-virtual {v1}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    move v8, v1

    move-object v1, v5

    move-object/from16 v25, v11

    move-object/from16 v21, v14

    const/4 v5, 0x1

    move-object v14, v12

    goto/16 :goto_8

    :cond_d
    const/4 v8, 0x0

    if-eqz v19, :cond_11

    add-int/lit8 v8, v1, 0x1

    if-ge v8, v5, :cond_11

    move-object/from16 v20, v15

    invoke-direct {v0, v12, v3, v7}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createCharacterBreakMeasurer(Ljava/awt/font/FontRenderContext;Ljava/text/AttributedCharacterIterator;I)Ljava/awt/font/LineBreakMeasurer;

    move-result-object v15

    move-object/from16 v21, v14

    const/4 v14, 0x0

    invoke-virtual {v15, v6, v5, v14}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v22

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lorg/apache/poi/util/StringUtil;->isEndPunct(C)Z

    move-result v14

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    if-eqz v14, :cond_f

    invoke-virtual {v15}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v5

    if-ne v5, v8, :cond_e

    invoke-virtual/range {v22 .. v22}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v5

    move-object/from16 v25, v11

    move-object v14, v12

    float-to-double v11, v5

    cmpg-double v5, v11, v9

    if-gez v5, :cond_10

    add-int/lit8 v8, v1, 0x2

    invoke-virtual {v13, v8}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    invoke-virtual {v15, v7}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    mul-double v9, v9, v23

    double-to-float v1, v9

    const/4 v5, 0x0

    invoke-virtual {v15, v1, v8, v5}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v1

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v25, v11

    move-object v14, v12

    goto :goto_5

    :cond_f
    move-object/from16 v25, v11

    move-object v14, v12

    invoke-virtual/range {v22 .. v22}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v8

    float-to-double v11, v8

    cmpg-double v8, v11, v9

    if-gez v8, :cond_10

    invoke-virtual {v15}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v8

    if-ge v8, v5, :cond_10

    invoke-virtual {v15}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/StringUtil;->isEndPunct(C)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v15}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v1

    const/4 v5, 0x1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v13, v8}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    invoke-virtual {v15, v7}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    mul-double v9, v9, v23

    double-to-float v1, v9

    const/4 v9, 0x0

    invoke-virtual {v15, v1, v8, v9}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v1

    goto :goto_8

    :cond_10
    :goto_5
    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    :goto_6
    move-object/from16 v25, v11

    move-object/from16 v21, v14

    move-object/from16 v20, v15

    const/4 v5, 0x1

    move-object v14, v12

    :goto_7
    move v8, v1

    move-object/from16 v1, v20

    :goto_8
    if-ne v8, v4, :cond_12

    goto :goto_9

    :cond_12
    const/4 v5, 0x0

    :goto_9
    iget-object v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v4

    sget-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-eq v4, v9, :cond_13

    sget-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-ne v4, v9, :cond_14

    :cond_13
    invoke-virtual {v1, v6}, Ljava/awt/font/TextLayout;->getJustifiedLayout(F)Ljava/awt/font/TextLayout;

    move-result-object v1

    :cond_14
    move v6, v5

    move v9, v8

    move-object v8, v1

    :goto_a
    new-instance v1, Ljava/text/AttributedString;

    move-object/from16 v4, v18

    invoke-direct {v1, v4, v7, v9}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    new-instance v5, Lorg/apache/poi/sl/draw/DrawTextPart;

    move-object v12, v14

    invoke-direct {v5, v8, v1, v12}, Lorg/apache/poi/sl/draw/DrawTextPart;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;Ljava/awt/font/FontRenderContext;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v5}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->addPart(Lorg/apache/poi/sl/draw/DrawTextPart;)V

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v5

    if-ne v9, v5, :cond_15

    :goto_b
    move-object v6, v2

    goto/16 :goto_e

    :cond_15
    move-object/from16 v5, v21

    if-nez v6, :cond_16

    invoke-direct {v0, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createTextFragment2(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/sl/draw/DrawTextFragment2;

    move-result-object v1

    :cond_16
    move-object v11, v1

    move-object/from16 v1, p1

    move-object v14, v5

    goto/16 :goto_f

    :cond_17
    :goto_c
    move/from16 v19, v5

    move-object v1, v11

    move-object v5, v14

    add-int/lit8 v7, v7, 0x7

    const-string v6, "</latex>"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    if-ltz v14, :cond_1b

    const-string v6, "<size>"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, "</size>"

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Ljava/math/BigDecimal;

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    add-int/lit8 v7, v7, 0x7

    const-string v6, "<jc>"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    const-string v7, "</jc>"

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/common/MathJc;->from(Ljava/lang/String;)Lorg/apache/poi/common/MathJc;

    move-result-object v15

    add-int/lit8 v7, v7, 0x5

    new-instance v8, Ljava/text/AttributedString;

    invoke-direct {v8, v4, v7, v14}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    sget-object v6, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    sget-object v6, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    sget-object v7, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v8, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    new-instance v7, Ljava/awt/font/TextLayout;

    invoke-virtual {v8}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    invoke-direct {v7, v6, v12}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    new-instance v6, Lorg/apache/poi/sl/draw/DrawMathPart;

    move-object/from16 v16, v6

    move-object/from16 v25, v1

    move-object/from16 v18, v2

    move-wide v1, v9

    move-object v9, v12

    move v10, v11

    move-object/from16 v20, v25

    move-object v11, v15

    invoke-direct/range {v6 .. v11}, Lorg/apache/poi/sl/draw/DrawMathPart;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;Ljava/awt/font/FontRenderContext;FLorg/apache/poi/common/MathJc;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/sl/draw/DrawMathPart;->getWidth()F

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    cmpl-double v6, v6, v1

    if-lez v6, :cond_18

    invoke-direct {v0, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createTextFragment2(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/sl/draw/DrawTextFragment2;

    move-result-object v11

    move-object/from16 v6, v16

    goto :goto_d

    :cond_18
    move-object/from16 v6, v16

    move-object/from16 v11, v20

    :goto_d
    invoke-virtual {v11, v6}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->addPart(Lorg/apache/poi/sl/draw/DrawTextPart;)V

    add-int/lit8 v14, v14, 0x8

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v6

    if-ne v14, v6, :cond_19

    move-object/from16 v6, v18

    :goto_e
    iput-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    return-void

    :cond_19
    move-object/from16 v6, v18

    invoke-virtual {v13, v14}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    double-to-float v1, v1

    add-int/lit8 v2, v14, 0x1

    const/4 v7, 0x0

    invoke-virtual {v13, v1, v2, v7}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-direct {v0, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->createTextFragment2(Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/sl/draw/DrawTextFragment2;

    move-result-object v1

    move-object v11, v1

    :cond_1a
    invoke-virtual {v13, v14}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    move-object/from16 v1, p1

    move-object v14, v5

    move-object v2, v6

    move v6, v7

    :goto_f
    move/from16 v5, v19

    goto/16 :goto_1

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getLeftAndIndent(Z)[D

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getLeftAndIndent(Z)[D

    move-result-object v7

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :cond_1
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v10

    if-nez v10, :cond_2

    sget-object v10, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    :cond_2
    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v11

    invoke-static {v1, v11}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v12}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v12

    iget-wide v13, v12, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    move-object/from16 v16, v7

    iget-wide v6, v12, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    sget-object v12, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v12, v9

    const/4 v12, 0x2

    if-eq v9, v4, :cond_3

    if-eq v9, v12, :cond_3

    invoke-virtual {v11}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v17

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v17

    :goto_0
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Lorg/apache/poi/sl/draw/DrawTextFragment2;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmpl-double v19, v21, v23

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    if-lez v19, :cond_4

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getDescent()F

    move-result v12

    move-object/from16 v25, v5

    float-to-double v4, v12

    mul-double v4, v4, v21

    sub-double/2addr v2, v4

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v21, 0x3f847ae147ae147bL    # 0.01

    mul-double v4, v4, v21

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getHeight()F

    move-result v12

    float-to-int v12, v12

    move-wide/from16 v26, v6

    int-to-double v6, v12

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide/from16 v4, v23

    goto :goto_2

    :cond_4
    move-object/from16 v25, v5

    move-wide/from16 v26, v6

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getLeading()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getDescent()F

    move-result v6

    float-to-double v6, v6

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    sub-double v4, v23, v4

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v2, v6

    :goto_2
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getAscent()F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v2, v6

    const/4 v6, 0x0

    if-nez v11, :cond_5

    aget-wide v20, v25, v6

    goto :goto_3

    :cond_5
    aget-wide v20, v16, v6

    :goto_3
    iget-wide v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    add-double v6, v6, v20

    if-nez v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isEmptyParagraph()Z

    move-result v22

    if-nez v22, :cond_6

    iget-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-nez v12, :cond_6

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v12

    invoke-virtual {v12}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    :cond_6
    iget-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v12, :cond_7

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getAscent()F

    move-result v12

    move-object/from16 v28, v9

    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v9}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v9

    sub-float/2addr v12, v9

    move-object/from16 v29, v8

    float-to-double v8, v12

    iget-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    add-double v30, v2, v4

    add-double v8, v30, v8

    invoke-virtual {v12, v6, v7, v8, v9}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v8, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    goto :goto_4

    :cond_7
    move-object/from16 v29, v8

    move-object/from16 v28, v9

    :goto_4
    const/4 v8, 0x1

    if-nez v11, :cond_8

    aget-wide v30, v25, v8

    goto :goto_5

    :cond_8
    aget-wide v30, v16, v8

    :goto_5
    add-double v6, v6, v30

    sget-object v9, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v9, v9, v12

    if-eq v9, v8, :cond_a

    const/4 v12, 0x2

    if-eq v9, v12, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getWidth()F

    move-result v9

    float-to-double v8, v9

    sub-double v8, v17, v8

    sub-double/2addr v8, v13

    sub-double v8, v8, v26

    sub-double v8, v8, v20

    goto :goto_6

    :cond_a
    const/4 v12, 0x2

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getWidth()F

    move-result v8

    float-to-double v8, v8

    sub-double v8, v17, v8

    sub-double/2addr v8, v13

    sub-double v8, v8, v26

    sub-double v8, v8, v20

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v8, v8, v19

    :goto_6
    add-double/2addr v6, v8

    :goto_7
    add-double/2addr v4, v2

    invoke-virtual {v15, v6, v7, v4, v5}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->setPosition(DD)V

    invoke-virtual {v15, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v4, v23

    if-lez v4, :cond_b

    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getHeight()F

    move-result v4

    goto :goto_8

    :cond_b
    invoke-virtual {v15}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getAscent()F

    move-result v4

    :goto_8
    float-to-double v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v25

    move-wide/from16 v6, v26

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    iget-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    iget-object v0, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/text/TextUtils;->handleText(Ljava/awt/Graphics2D;Ljava/util/List;)V

    return-void
.end method

.method public getAttributedString2(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    :goto_0
    new-instance v10, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-virtual {v7, v8, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getRenderableText2(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v14, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->processTextCap(Lorg/apache/poi/sl/usermodel/TextRun;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->MATH:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    if-ne v1, v2, :cond_1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    invoke-interface {v11, v8, v1, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    invoke-virtual {v10, v8, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v2

    sget-object v3, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v5, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;

    if-eqz v2, :cond_3

    move-object v2, v5

    check-cast v2, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;->getHighlightColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v10, v8, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v2

    sget-object v3, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v2

    :cond_4
    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isUnderlined()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isStrikethrough()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isSubscript()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isSuperscript()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v2}, Lorg/apache/poi/common/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v2}, Lorg/apache/poi/common/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v1, :cond_c

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    sget-object v1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    iget-object v2, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v1, Lcom/sunia/HTREnginev2/hif;

    invoke-direct {v1, v13, v4, v0}, Lcom/sunia/HTREnginev2/hif;-><init>(Ljava/util/List;II)V

    invoke-interface {v12, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v13

    move v8, v4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V

    invoke-direct {v7, v14, v13, v8}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->setTextCapFont(Ljava/util/Map;Ljava/util/List;I)V

    move-object/from16 v8, p1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    iget-object v1, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance v1, Ljava/awt/Font;

    invoke-direct {v1, v12}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;->instance:Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/iif;

    invoke-direct {v0, v13}, Lcom/sunia/HTREnginev2/iif;-><init>(Ljava/util/List;)V

    invoke-interface {v12, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_e
    return-object v13
.end method

.method public getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->format(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletCharacter()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v4, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v4}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/Paint;

    goto :goto_1

    :cond_3
    new-instance v6, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v6, v4}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v6, p1, v5}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v4

    :goto_1
    sget-object v5, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_5

    float-to-double v7, p2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-float p2, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    neg-double v6, v6

    double-to-float p2, v6

    :goto_2
    if-nez v2, :cond_6

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFont()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance p0, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {p0, v1}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance v2, Ljava/awt/Font;

    invoke-direct {v2, v1}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/text/AttributedString;

    invoke-interface {v0, p1, p0, v3}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/c5i;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/c5i;-><init>(Ljava/text/AttributedString;)V

    invoke-interface {v1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {p2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public getFirstLineHeight()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getHeight()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getLastLineHeight()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->getHeight()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getRenderableText(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 p0, 0xb

    const/16 p1, 0xa

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRenderableText2(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 3

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getRenderableText(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_7

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/common/MathUtils;->omml2LaTeX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/common/MathUtils;->getSizeFromOMML(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0}, Lorg/apache/poi/common/MathUtils;->getJc(Ljava/lang/String;)Lorg/apache/poi/common/MathJc;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/common/MathUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<latex>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<size>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "</size>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<jc>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/common/MathJc;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</jc>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</latex>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholderDetails()Lorg/apache/poi/sl/usermodel/PlaceholderDetails;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getUserDate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getDateFormat()Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getRenderableText(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    return-object v2

    :cond_9
    const-string p1, "*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "\\*"

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public getWrappingWidth2(ZLjava/awt/Graphics2D;)D
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v1

    iget-wide v2, v1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v4, v1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->getLeftAndIndent(Z)[D

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getRightMargin()Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_0
    invoke-static {p2, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getWordWrap()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_1

    invoke-virtual {p0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    :goto_0
    sub-double/2addr p0, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_4

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    sub-double/2addr v6, v2

    sub-double/2addr v6, v4

    aget-wide v0, p1, v1

    aget-wide p1, p1, v8

    add-double/2addr v0, p1

    sub-double/2addr v6, v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    sub-double/2addr v6, v2

    sub-double/2addr v6, v4

    aget-wide v0, p1, v1

    aget-wide p1, p1, v8

    add-double/2addr v0, p1

    sub-double/2addr v6, v0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_1
    sub-double p0, v6, p0

    :goto_2
    return-wide p0
.end method

.method public processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/draw/DrawFontManager;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;I",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public processTextCap(Lorg/apache/poi/sl/usermodel/TextRun;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/draw/DrawTextParagraph2$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    return-object p3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_5

    aget-char v4, p3, v1

    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_3

    if-ne v3, v0, :cond_2

    move v2, p1

    move v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_1
    sget-object v5, Lorg/apache/poi/sl/draw/DrawTextParagraph2;->SMALL_CAP:Ljava/lang/String;

    add-int/lit8 v4, v4, -0x61

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v2, v0

    move v3, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-lez v2, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object p3
.end method
