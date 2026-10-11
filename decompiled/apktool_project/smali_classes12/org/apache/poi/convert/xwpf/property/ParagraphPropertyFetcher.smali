.class public Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;


# instance fields
.field private borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

.field private indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

.field private marginBottom:Lorg/apache/poi/style/UnitValue;

.field private marginLeft:Lorg/apache/poi/style/UnitValue;

.field private marginRight:Lorg/apache/poi/style/UnitValue;

.field private marginTop:Lorg/apache/poi/style/UnitValue;

.field private pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

.field private spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

.field private textIndent:Lorg/apache/poi/style/UnitValue;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->init()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "pr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->initBorders()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->initIndentation()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->initSpacing()V

    return-void
.end method

.method private initBorders()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    iput-object v2, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    const/4 v2, 0x1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    const/4 v2, 0x2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    const/4 v0, 0x3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_0
    return-void
.end method

.method private initIndentation()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationFirstLineChars()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationFirstLine()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getHangingIndentChars()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getHangingIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationLeftChars()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginLeft:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentFromLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginLeft:Lorg/apache/poi/style/UnitValue;

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationRightChars()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginRight:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentFromRight()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginRight:Lorg/apache/poi/style/UnitValue;

    :cond_5
    return-void
.end method

.method private initSpacing()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingBeforeLines()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginTop:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingBefore()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginTop:Lorg/apache/poi/style/UnitValue;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingAfterLines()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginBottom:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getSpacingAfter()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginBottom:Lorg/apache/poi/style/UnitValue;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetJc()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->borders:[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    return-object p0
.end method

.method public getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPBdr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    return-object p0
.end method

.method public getHangingIndent()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetHanging()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetHanging()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p0

    neg-float p0, p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHangingIndentChars()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetHangingChars()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getHangingChars()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    neg-float p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndentFromLeft()Lorg/apache/poi/style/UnitValue;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getIndentFromRight()Lorg/apache/poi/style/UnitValue;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getIndentationRight()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getIndentationFirstLine()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetFirstLine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetFirstLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndentationFirstLineChars()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetFirstLineChars()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getFirstLineChars()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndentationLeft()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndentationLeftChars()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeftChars()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getLeftChars()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndentationRight()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIndentationRightChars()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRightChars()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->indentation:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getRightChars()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMarginBottom()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginBottom:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginLeft()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginLeft:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginRight()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginRight:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getMarginTop()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->marginTop:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getSpacingAfter()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfter()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetAfter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpacingAfterLines()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfterLines()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfterLines()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpacingBefore()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBefore()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetBefore()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpacingBeforeLines()Lorg/apache/poi/style/UnitValue;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBeforeLines()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBeforeLines()Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpacingBetween()Lorg/apache/poi/style/UnitValue;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getLineSpaceRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AT_LEAST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p0, v2, :cond_1

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->EXACT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p0, v2, :cond_2

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/high16 v2, 0x406e000000000000L    # 240.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromEM(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpacingLineRule()Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLineRule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->spacing:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getLineSpaceRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextIndent()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->textIndent:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetTextAlignment()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->pr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
