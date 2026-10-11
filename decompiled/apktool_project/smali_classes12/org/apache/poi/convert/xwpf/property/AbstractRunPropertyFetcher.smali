.class public abstract Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontFromCTFontsByFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontFromCTFontsByHint(Lorg/apache/poi/convert/xwpf/property/Hint;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getFontFromCTFontsByFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getFontFromCTFontsByHint(Lorg/apache/poi/convert/xwpf/property/Hint;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher$1;->$SwitchMap$org$apache$poi$convert$xwpf$property$Hint:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFontHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Lorg/apache/poi/convert/xwpf/property/Hint;
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/property/Hint;->getHint(Ljava/lang/String;)Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    :try_start_1
    sget-object p0, Lorg/apache/xmlbeans/XmlAnySimpleType;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/property/Hint;->getHint(Ljava/lang/String;)Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    sget-object p0, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    return-object p0
.end method

.method public getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
    .locals 2

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->COMPLEX_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x1

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/style/UnitValue;->fromPT(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method
