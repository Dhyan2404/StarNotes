.class public Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;
.super Lorg/apache/poi/convert/WordToHtmlUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$CHPAbstractType;,
        Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final TABLE_CELL_DEFAULT_HEIGHT:I = 0x3c0

.field public static final TABLE_ROW_DEFAULT_HEIGHT:I = 0x168


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;-><init>()V

    return-void
.end method

.method public static addBold(ZLjava/lang/StringBuilder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font-weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p0, "bold"

    goto :goto_0

    :cond_0
    const-string p0, "normal"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "border:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "border-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getLineWidth()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    const-string p1, "thin"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getBorderWidth(Lorg/apache/poi/hwpf/usermodel/BorderCode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getBorderType(Lorg/apache/poi/hwpf/usermodel/BorderCode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getColor()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getColor(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    return-void
.end method

.method public static addCharactersProperties(Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isCapitalized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text-transform:uppercase;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getIco24()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ";"

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getIco24()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getColor24(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isHighlighted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background-color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getHighlightedColor()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isStrikeThrough()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text-decoration:line-through;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isShadowed()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text-shadow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getFontSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isSmallCaps()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "font-variant:small-caps;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getSubSuperScriptIndex()S

    move-result v0

    const/4 v1, 0x1

    const-string v2, "font-size:smaller;"

    if-ne v0, v1, :cond_6

    const-string v0, "vertical-align:super;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getSubSuperScriptIndex()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const-string v0, "vertical-align:sub;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {p1, p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addUnderLineStype(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/usermodel/CharacterRun;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->isVanished()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "visibility:hidden;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    return-void
.end method

.method public static addFontFamily(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font-family:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static addFontSize(ILjava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "font-size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/convert/AbstractConverter;->getFontUnit()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static addIndent(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;F)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getFirstLineIndent()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToEM(D)D

    move-result-wide v0

    const-string v2, "text-indent:"

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentEM(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getIndentFromLeft()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->emToPX(D)D

    move-result-wide v0

    add-double/2addr v2, v0

    :cond_0
    const-string v0, "margin-left:"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getIndentFromRight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v0

    const-string p2, "margin-right:"

    invoke-static {p1, p2, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getSpacingBefore()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v0

    const-string p2, "margin-top:"

    invoke-static {p1, p2, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getSpacingAfter()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v0

    const-string p0, "margin-bottom:"

    invoke-static {p1, p0, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    return-void
.end method

.method public static addJustification(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getJustification()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getJustification(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text-align:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static addLimitIndentEM(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lorg/apache/poi/convert/IndentLimit;->getLimitEM(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "em"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lorg/apache/poi/convert/IndentLimit;->getLimitPX(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "px"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addParagraphProperties(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;F)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addIndent(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;F)V

    invoke-static {p0, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addJustification(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getBottomBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    const-string v0, "bottom"

    invoke-static {p2, v0, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getLeftBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    const-string v0, "left"

    invoke-static {p2, v0, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getRightBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    const-string v0, "right"

    invoke-static {p2, v0, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getTopBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    const-string v0, "top"

    invoke-static {p2, v0, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->pageBreakBefore()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "break-before:page;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hyphenate:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->isAutoHyphenated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "auto"

    goto :goto_0

    :cond_1
    const-string v0, "none"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->keepOnPage()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "keep-together.within-page:always;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->keepWithNext()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "keep-with-next.within-page:always;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method public static addTableCellProperties(Lorg/apache/poi/hwpf/usermodel/TableRow;Lorg/apache/poi/hwpf/usermodel/TableCell;ZZZZLjava/lang/StringBuilder;IF)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c0

    :goto_0
    const-string v1, "width:"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float p7, p7

    div-float/2addr v0, p7

    invoke-static {v0}, Lorg/apache/poi/util/ExtUnits;->format(F)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "%;"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getGapHalf()I

    move-result p7

    int-to-float p7, p7

    mul-float/2addr p7, p8

    float-to-double v0, p7

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v0

    const-string p7, "padding-start:"

    invoke-static {p6, p7, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getGapHalf()I

    move-result p7

    int-to-float p7, p7

    mul-float/2addr p7, p8

    float-to-double p7, p7

    invoke-static {p7, p8}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide p7

    const-string v0, "padding-end:"

    invoke-static {p6, v0, p7, p8}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentPX(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    if-eqz p7, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    invoke-virtual {p7}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getBorderType()I

    move-result p7

    if-eqz p7, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcTop()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getTopBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getHorizontalBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    if-eqz p7, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    invoke-virtual {p7}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getBorderType()I

    move-result p7

    if-eqz p7, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcBottom()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getBottomBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getHorizontalBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p3

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    if-eqz p7, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    invoke-virtual {p7}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getBorderType()I

    move-result p7

    if-eqz p7, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcLeft()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p4

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getLeftBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p4

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getVerticalBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p4

    :goto_3
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    if-eqz p7, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p7

    invoke-virtual {p7}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getBorderType()I

    move-result p7

    if-eqz p7, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getBrcRight()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p0

    goto :goto_4

    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getRightBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p0

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getVerticalBorder()Lorg/apache/poi/hwpf/usermodel/BorderCode;

    move-result-object p0

    :goto_4
    const-string p1, "bottom"

    invoke-static {p3, p1, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "left"

    invoke-static {p4, p1, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "right"

    invoke-static {p0, p1, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p0, "top"

    invoke-static {p2, p0, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addBorder(Lorg/apache/poi/hwpf/usermodel/BorderCode;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static addTableRowProperties(Lorg/apache/poi/hwpf/usermodel/TableRow;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getRowHeight()I

    move-result v0

    if-lez v0, :cond_0

    int-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4076800000000000L    # 360.0

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToEM(D)D

    move-result-wide v0

    const-string v2, "min-height:"

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addLimitIndentEM(Ljava/lang/StringBuilder;Ljava/lang/String;D)Z

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->cantSplit()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "keep-together:always;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static addUnderLineStype(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/usermodel/CharacterRun;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getUnderlineCode()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "text-decoration:underline;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getUnderlineCode()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string p1, "text-decoration-style:wavy;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :pswitch_1
    const-string p1, "text-decoration-style:dashed;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :pswitch_2
    const-string p1, "text-decoration-style:dotted;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p1, "text-decoration-style:double;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static buildTableCellEdgesArray(Lorg/apache/poi/hwpf/usermodel/Table;)[I
    .locals 7

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Table;->numRows()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hwpf/usermodel/Table;->getRow(I)Lorg/apache/poi/hwpf/usermodel/TableRow;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getCell(I)Lorg/apache/poi/hwpf/usermodel/TableCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getLeftEdge()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getLeftEdge()I

    move-result v6

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getWidth()I

    move-result v5

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/Integer;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p0

    new-array v0, v0, [I

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static getBorderType(Lorg/apache/poi/hwpf/usermodel/BorderCode;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getBorderType()I

    move-result p0

    const-string v0, "dotted"

    const-string v1, "dashed"

    const-string v2, "double"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "solid"

    return-object p0

    :pswitch_1
    const-string p0, "grooved"

    return-object p0

    :pswitch_2
    const-string p0, "ridge"

    return-object p0

    :pswitch_3
    return-object v1

    :pswitch_4
    return-object v2

    :pswitch_5
    return-object v0

    :pswitch_6
    return-object v1

    :pswitch_7
    return-object v0

    :pswitch_8
    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "borderCode is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getBorderWidth(Lorg/apache/poi/hwpf/usermodel/BorderCode;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;->getLineWidth()I

    move-result p0

    int-to-float p0, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->format(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "px"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBulletText(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;Lorg/apache/poi/hwpf/usermodel/HWPFList;C)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getNumberText(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-char v4, v1, v3

    const/16 v5, 0x9

    if-ge v4, v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getLsid()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->isStartAtOverriden(C)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne p2, v4, :cond_1

    add-int/lit8 v9, v9, 0x1

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getStartAt(C)I

    move-result v9

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    if-ne p2, v4, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getNumberFormat(C)I

    move-result v4

    invoke-static {v9, v4}, Lorg/apache/poi/convert/hwpf/NumberFormatter;->getNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/usermodel/HWPFList;->getTypeOfCharFollowingTheNumber(C)B

    move-result p0

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    goto :goto_4

    :cond_5
    const-string p0, "\u00a0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColor(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "black"

    return-object p0

    :pswitch_0
    const-string p0, "lightgray"

    return-object p0

    :pswitch_1
    const-string p0, "darkgray"

    return-object p0

    :pswitch_2
    const-string p0, "darkyellow"

    return-object p0

    :pswitch_3
    const-string p0, "darkred"

    return-object p0

    :pswitch_4
    const-string p0, "darkmagenta"

    return-object p0

    :pswitch_5
    const-string p0, "darkgreen"

    return-object p0

    :pswitch_6
    const-string p0, "darkcyan"

    return-object p0

    :pswitch_7
    const-string p0, "darkblue"

    return-object p0

    :pswitch_8
    const-string p0, "white"

    return-object p0

    :pswitch_9
    const-string p0, "yellow"

    return-object p0

    :pswitch_a
    const-string p0, "red"

    return-object p0

    :pswitch_b
    const-string p0, "magenta"

    return-object p0

    :pswitch_c
    const-string p0, "green"

    return-object p0

    :pswitch_d
    const-string p0, "cyan"

    return-object p0

    :pswitch_e
    const-string p0, "blue"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getColor24(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const v0, 0xffffff

    and-int/2addr p0, v0

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :sswitch_0
    const-string p0, "white"

    return-object p0

    :sswitch_1
    const-string p0, "yellow"

    return-object p0

    :sswitch_2
    const-string p0, "fuchsia"

    return-object p0

    :sswitch_3
    const-string p0, "red"

    return-object p0

    :sswitch_4
    const-string p0, "silver"

    return-object p0

    :sswitch_5
    const-string p0, "gray"

    return-object p0

    :sswitch_6
    const-string p0, "olive"

    return-object p0

    :sswitch_7
    const-string p0, "purple"

    return-object p0

    :sswitch_8
    const-string p0, "maroon"

    return-object p0

    :sswitch_9
    const-string p0, "aqua"

    return-object p0

    :sswitch_a
    const-string p0, "lime"

    return-object p0

    :sswitch_b
    const-string p0, "teal"

    return-object p0

    :sswitch_c
    const-string p0, "green"

    return-object p0

    :sswitch_d
    const-string p0, "blue"

    return-object p0

    :sswitch_e
    const-string p0, "navy"

    return-object p0

    :sswitch_f
    const-string p0, "black"

    return-object p0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This colorref is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x80 -> :sswitch_e
        0xff -> :sswitch_d
        0x8000 -> :sswitch_c
        0x8080 -> :sswitch_b
        0xff00 -> :sswitch_a
        0xffff -> :sswitch_9
        0x800000 -> :sswitch_8
        0x800080 -> :sswitch_7
        0x808000 -> :sswitch_6
        0x808080 -> :sswitch_5
        0xc0c0c0 -> :sswitch_4
        0xff0000 -> :sswitch_3
        0xff00ff -> :sswitch_2
        0xffff00 -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static getJustification(I)Ljava/lang/String;
    .locals 4

    const-string v0, "justify"

    const-string v1, "end"

    const-string v2, "center"

    const-string v3, "start"

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    return-object v0

    :pswitch_1
    return-object v1

    :pswitch_2
    return-object v3

    :pswitch_3
    const-string p0, "left"

    return-object p0

    :pswitch_4
    return-object v2

    :pswitch_5
    return-object v0

    :pswitch_6
    return-object v1

    :pswitch_7
    return-object v2

    :pswitch_8
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLanguage(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x400

    const-string v1, ""

    if-eq p0, v0, :cond_3

    const/16 v0, 0x409

    if-eq p0, v0, :cond_2

    const/16 v0, 0x419

    if-eq p0, v0, :cond_1

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/apache/poi/convert/WordToHtmlUtils;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v2, "Unknown or unmapped language code: {}"

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string p0, "en-uk"

    return-object p0

    :cond_1
    const-string p0, "ru-ru"

    return-object p0

    :cond_2
    const-string p0, "en-us"

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getListItemNumberLabel(II)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/convert/WordToHtmlUtils;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "NYI: toListItemNumberLabel(): {}"

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOpacity(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    const/16 p0, 0x18

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    if-eqz p0, :cond_1

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ".0"

    return-object p0
.end method

.method public static getSectionStyle(Lorg/apache/poi/hwpf/usermodel/Section;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getNumColumns()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "column-count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->isColumnsEvenlySpaced()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getDistanceBetweenColumns()I

    move-result p0

    int-to-double v1, p0

    invoke-static {v1, v2}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v1

    const-string p0, "column-gap:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "column-gap:24px;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTableCellTotalWidth(Lorg/apache/poi/hwpf/usermodel/TableRow;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getCell(I)Lorg/apache/poi/hwpf/usermodel/TableCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/usermodel/TableCell;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x3c0

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static loadDoc(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/hwpf/HWPFDocumentCore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p0, 0x0

    .line 5
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->loadDoc(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hwpf/HWPFDocumentCore;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 9
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 10
    :cond_2
    throw p1
.end method

.method public static loadDoc(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/hwpf/HWPFDocumentCore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_0
    .catch Lorg/apache/poi/hwpf/OldWordFileFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Lorg/apache/poi/hwpf/HWPFOldDocument;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/HWPFOldDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method private static loadDoc(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hwpf/HWPFDocumentCore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    :try_start_0
    new-instance v0, Lorg/apache/poi/hwpf/HWPFDocument;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/HWPFDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catch Lorg/apache/poi/hwpf/OldWordFileFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    .line 13
    throw v0

    .line 14
    :catch_1
    invoke-static {p0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->loadOldDoc(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hwpf/HWPFDocumentCore;

    move-result-object p0

    return-object p0
.end method

.method private static loadOldDoc(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hwpf/HWPFDocumentCore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/poi/hwpf/HWPFOldDocument;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/HWPFOldDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static readSectionPageSize(Lorg/apache/poi/hwpf/usermodel/Section;Ljava/awt/geom/Rectangle2D;)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getMarginLeft()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getMarginTop()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getMarginRight()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getMarginBottom()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getPageWidth()I

    move-result v2

    int-to-double v9, v2

    invoke-static {v9, v10}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Section;->getPageHeight()I

    move-result p0

    int-to-double v11, p0

    invoke-static {v11, v12}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v11

    sub-double/2addr v9, v3

    sub-double v0, v9, v0

    sub-double/2addr v11, v5

    sub-double v9, v11, v7

    move-object v2, p1

    move-wide v7, v0

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method
