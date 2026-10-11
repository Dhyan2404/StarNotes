.class public Lorg/apache/poi/xwpf/usermodel/TextboxShape;
.super Lorg/apache/poi/xwpf/usermodel/XWPFShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
        "Lcom/microsoft/schemas/vml/CTTextbox;",
        ">;"
    }
.end annotation


# instance fields
.field private insets:Ljava/awt/Insets;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lcom/microsoft/schemas/vml/CTTextbox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/ShapeContainer<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFShape<",
            "*>;>;",
            "Lcom/microsoft/schemas/vml/CTTextbox;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;-><init>(Lorg/apache/poi/xwpf/usermodel/ShapeContainer;Lorg/apache/xmlbeans/XmlObject;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic I(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->lambda$getAttributedString$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method private fetchParagraphStyle(Lorg/apache/poi/xwpf/usermodel/TextParagraph;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V
    .locals 3

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;

    invoke-direct {v0, p2}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->parseLineSpace(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->lineSpacing:Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingBefore()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->spaceBefore:D

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingAfter()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->spaceAfter:D

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationFirstLineChars()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->indent:D

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationFirstLine()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->indent:D

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->marginLeft:D

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationRight()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    float-to-double v0, p0

    iput-wide v0, p1, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->marginRight:D

    :cond_5
    return-void
.end method

.method private getAttributedString(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Serif"

    if-ge v3, v1, :cond_6

    aget-object v5, p1, v3

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v5, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-interface {v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v6}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v6

    new-instance v9, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;)V

    new-instance v10, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    invoke-direct {v10, v5}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {v9, v10}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    invoke-virtual {v9}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v5

    sget-object v10, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v6}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v5, Lorg/apache/poi/style/TextStyles;->DEFAULT_FONT_SIZE:Lorg/apache/poi/style/UnitValue;

    :cond_3
    invoke-virtual {v5}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result v5

    sget-object v10, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v6}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    sget-object v5, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v4, Lcom/sunia/HTREnginev2/ugn;

    invoke-direct {v4, v0, v7, v8}, Lcom/sunia/HTREnginev2/ugn;-><init>(Ljava/util/List;II)V

    invoke-interface {p0, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    const/16 p2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance p2, Ljava/awt/Font;

    invoke-direct {p2, p0}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sunia/HTREnginev2/vgn;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/vgn;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_7
    return-object v0
.end method

.method public static synthetic j(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->lambda$getAttributedString$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getAttributedString$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;

    invoke-direct {v0, p3, p4, p1, p2}, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getAttributedString$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseInset(Ljava/lang/String;)Ljava/awt/Insets;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/Insets;

    invoke-direct {p1, p0, p0, p0, p0}, Ljava/awt/Insets;-><init>(IIII)V

    return-object p1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance p1, Ljava/awt/Insets;

    invoke-direct {p1, p0, p0, p0, p0}, Ljava/awt/Insets;-><init>(IIII)V

    return-object p1

    :cond_1
    aget-object p0, p1, p0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x3

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int p1, v2

    new-instance v2, Ljava/awt/Insets;

    invoke-direct {v2, p0, v0, p1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    return-object v2
.end method

.method private parseLineSpace(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;)Ljava/lang/Double;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v1

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getLineSpaceRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AT_LEAST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->EXACT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p0, p1, :cond_2

    invoke-static {v1, v2}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/high16 p0, 0x406e000000000000L    # 240.0

    div-double/2addr v1, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private parseTextParagraph(Ljava/awt/Graphics2D;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lcom/microsoft/schemas/vml/CTTextbox;

    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTTextbox;->getTxbxContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;->sizeOfPArray()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;->getPArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/TextParagraph;

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->insets:Ljava/awt/Insets;

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;-><init>(Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)V

    invoke-direct {p0, v4, v3}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->fetchParagraphStyle(Lorg/apache/poi/xwpf/usermodel/TextParagraph;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3, v5}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->getAttributedString(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v3}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->breakText(Ljava/awt/Graphics2D;Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 11

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->parseTextParagraph(Ljava/awt/Graphics2D;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parent:Lorg/apache/poi/xwpf/usermodel/ShapeContainer;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->insets:Ljava/awt/Insets;

    iget v3, v3, Ljava/awt/Insets;->left:I

    int-to-double v3, v3

    add-double v7, v1, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->insets:Ljava/awt/Insets;

    iget v2, v2, Ljava/awt/Insets;->top:I

    int-to-double v2, v2

    add-double v9, v0, v2

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->list:Ljava/util/List;

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/xwpf/usermodel/TextParagraph;->draw(Ljava/awt/Graphics2D;Ljava/util/List;DD)V

    return-void
.end method

.method public parseShapeProperties(Lcom/microsoft/schemas/vml/CTTextbox;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextbox;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->parseStyleProperties(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFShape;->properties:Lorg/apache/poi/xwpf/usermodel/ShapeProperties;

    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextbox;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/microsoft/schemas/vml/CTTextbox;->getInset()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->parseInset(Ljava/lang/String;)Ljava/awt/Insets;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->insets:Ljava/awt/Insets;

    return-void
.end method

.method public bridge synthetic parseShapeProperties(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/schemas/vml/CTTextbox;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->parseShapeProperties(Lcom/microsoft/schemas/vml/CTTextbox;)V

    return-void
.end method
