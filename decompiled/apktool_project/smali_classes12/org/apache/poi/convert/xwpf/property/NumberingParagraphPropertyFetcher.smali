.class public Lorg/apache/poi/convert/xwpf/property/NumberingParagraphPropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    return-void
.end method


# virtual methods
.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    return-object p0
.end method

.method public getMarginBottom()Lorg/apache/poi/style/UnitValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMarginLeft()Lorg/apache/poi/style/UnitValue;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getMarginLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getMarginRight()Lorg/apache/poi/style/UnitValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMarginTop()Lorg/apache/poi/style/UnitValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextIndent()Lorg/apache/poi/style/UnitValue;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;->getTextIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
