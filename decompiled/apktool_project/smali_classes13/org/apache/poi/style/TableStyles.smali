.class public Lorg/apache/poi/style/TableStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/style/TableStyles$Layout;
    }
.end annotation


# instance fields
.field private align:Lorg/apache/poi/style/TextAlign;

.field private borderSpace:[Lorg/apache/poi/style/UnitValue;

.field private fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

.field private indent:Lorg/apache/poi/style/UnitValue;

.field private layout:Lorg/apache/poi/style/TableStyles$Layout;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/style/TableStyles$Layout;->NONE:Lorg/apache/poi/style/TableStyles$Layout;

    iput-object v0, p0, Lorg/apache/poi/style/TableStyles;->layout:Lorg/apache/poi/style/TableStyles$Layout;

    sget-object v0, Lorg/apache/poi/style/TextAlign;->NONE:Lorg/apache/poi/style/TextAlign;

    iput-object v0, p0, Lorg/apache/poi/style/TableStyles;->align:Lorg/apache/poi/style/TextAlign;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/style/UnitValue;

    iput-object v0, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    iput-object p1, p0, Lorg/apache/poi/style/TableStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableStyles;->parse(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;)V

    return-void
.end method

.method private getAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;)Lorg/apache/poi/style/TextAlign;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/style/TextAlign;->LEFT:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJcTable$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/style/TextAlign;->LEFT:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/style/TextAlign;->RIGHT:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/style/TextAlign;->CENTER:Lorg/apache/poi/style/TextAlign;

    return-object p0
.end method

.method private getLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;)Lorg/apache/poi/style/TableStyles$Layout;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/style/TableStyles$Layout;->AUTO:Lorg/apache/poi/style/TableStyles$Layout;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblLayoutType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/style/TableStyles$Layout;->AUTO:Lorg/apache/poi/style/TableStyles$Layout;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/style/TableStyles$Layout;->FIXED:Lorg/apache/poi/style/TableStyles$Layout;

    return-object p0
.end method

.method private parse(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/TableStyles;->getLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;)Lorg/apache/poi/style/TableStyles$Layout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TableStyles;->layout:Lorg/apache/poi/style/TableStyles$Layout;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/TableStyles;->getAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;)Lorg/apache/poi/style/TextAlign;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TableStyles;->align:Lorg/apache/poi/style/TextAlign;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TableStyles;->parseIndent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V

    return-void
.end method

.method private parseIndent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->getIntValue()I

    move-result v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->PCT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    if-ne p1, v1, :cond_2

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPCT(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TableStyles;->indent:Lorg/apache/poi/style/UnitValue;

    goto :goto_0

    :cond_2
    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TableStyles;->indent:Lorg/apache/poi/style/UnitValue;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getBorderSpace()[Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->layout:Lorg/apache/poi/style/TableStyles$Layout;

    sget-object v2, Lorg/apache/poi/style/TableStyles$Layout;->FIXED:Lorg/apache/poi/style/TableStyles$Layout;

    if-ne v1, v2, :cond_0

    const-string v1, "table-layout:fixed;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "table-layout:auto;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->align:Lorg/apache/poi/style/TextAlign;

    sget-object v2, Lorg/apache/poi/style/TextAlign;->CENTER:Lorg/apache/poi/style/TextAlign;

    if-ne v1, v2, :cond_1

    const-string v1, "margin-left:auto;margin-right:auto;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/poi/style/TextAlign;->RIGHT:Lorg/apache/poi/style/TextAlign;

    if-ne v1, v2, :cond_2

    const-string v1, "margin-left:auto;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->indent:Lorg/apache/poi/style/UnitValue;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "margin-left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->indent:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const-string v1, "border-collapse:separate;border-spacing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "0px "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/style/UnitValue;->toStyle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v1, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "0px;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lorg/apache/poi/style/TableStyles;->borderSpace:[Lorg/apache/poi/style/UnitValue;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string p0, "border-collapse:collapse;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
