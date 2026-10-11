.class public Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rpr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getUArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCTBorder(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfBdrArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getBdrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfBdrArray()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getBdrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0
.end method

.method public getCTLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfLangArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCharacterSpacing()Lorg/apache/poi/style/UnitValue;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfSpacingArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getSpacingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfColorArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getColorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfEmArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getEmArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEmphasisMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfEmArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getEmArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    :cond_2
    return-object p0
.end method

.method public getKerning()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfKernArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getKernArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfLangArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getVal()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfRFontsArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getRFontsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfSzCsArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getSzCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextHighlightColor()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextScale()Lorg/apache/poi/style/UnitValue;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfWArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getWArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextScale;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextScale;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromNum(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlineColor()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getColor()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast p0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    return-object p0
.end method

.method public getUnderlineThemeColorEnum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVerticalAlignment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfVertAlignArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getVertAlignArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->getVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public isBold()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCapitalized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfCapsArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isDoubleStrikeThrough()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmbossed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfEmbossArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getEmbossArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isHighlighted()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isImprinted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfImprintArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getImprintArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isItalic()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isShadowed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfShadowArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getShadowArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSmallCaps()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->sizeOfSmallCapsArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;->rpr:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->getSmallCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isStrikeThrough()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isVanish()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
