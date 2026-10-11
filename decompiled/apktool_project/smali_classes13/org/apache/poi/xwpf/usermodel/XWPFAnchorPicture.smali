.class public Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;
.super Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;


# instance fields
.field private behindDoc:Z

.field private ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;)V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getBehindDoc()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->behindDoc:Z

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->initPosition()V

    iget-boolean p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->behindDoc:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    :cond_0
    return-void
.end method

.method private appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private getPageLeft(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 2

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result p1

    float-to-double v0, p1

    sub-double/2addr p3, v0

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p0

    float-to-double p0, p0

    add-double/2addr p3, p0

    invoke-static {p3, p4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getTextIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getMarginStyles()Lorg/apache/poi/style/MarginStyles;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/style/MarginStyles;->getLeftNumberValue()F

    move-result p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getMarginStyles()Lorg/apache/poi/style/MarginStyles;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->getTopNumberValue()F

    move-result p0

    float-to-double p0, p0

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method private initPosition()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getPositionH()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;->getAlign()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignH$Enum;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "PictureH align: {}"

    invoke-interface {p0, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->FLOAT_RIGHT:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->FLOAT_LEFT:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    :goto_0
    return-void
.end method

.method private parsePositionHStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getPositionH()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "margin-left:"

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    invoke-direct {p0, p3, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;->getRelativeFrom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromH$Enum;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Not found positionH relative"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosH;->getPosOffset()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->emuToPixel(J)D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    iget-wide v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    add-double/2addr v5, v3

    invoke-direct {p0, p3, v5, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget-object p1, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "STRelFromH, name: {}, relative: {}"

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    invoke-interface {p1, p2, p0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetX:D

    add-double/2addr v0, v3

    invoke-direct {p0, p3, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphLeft(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getPageLeft(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    :goto_0
    return-void
.end method

.method private parsePositionVStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/ParagraphStyles;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getPositionV()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "margin-top:"

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;->getAlign()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STAlignV$Enum;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    const-string v4, "PictureV align: {}"

    invoke-interface {v3, v4, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;->getRelativeFrom()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Not found positionV relative"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    return-void

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTPosV;->getPosOffset()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->emuToPixel(J)D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    iget-wide v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    add-double/2addr v5, v3

    invoke-direct {p0, p2, v5, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget-object p1, p0, Lorg/apache/poi/wp/usermodel/WPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "STRelFromV, name: {}, relative: {}"

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->name:Ljava/lang/String;

    invoke-interface {p1, p2, p0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    add-double/2addr v0, v3

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->offsetY:D

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->getParagraphTop(Lorg/apache/poi/style/ParagraphStyles;D)F

    move-result p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->appendLengthStyle(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->ctAnchor:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-static {p0}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method public getAbsolutePositionStyle(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;->position:Lorg/apache/poi/wp/usermodel/Position;

    sget-object v1, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->parsePositionHStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->parsePositionVStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/ParagraphStyles;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBehindDoc()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;->behindDoc:Z

    return p0
.end method
