.class public Lorg/apache/poi/style/BordersStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/style/BordersStyles$BorderStyles;
    }
.end annotation


# instance fields
.field private bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

.field private left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

.field private right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

.field private top:Lorg/apache/poi/style/BordersStyles$BorderStyles;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendBorderColor(Ljava/lang/StringBuilder;Ljava/lang/String;C)V
    .locals 0

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p2, "gray"

    goto :goto_0

    :cond_0
    const-string p0, "auto"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "black"

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendBorderLineStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/LineStyle;ZC)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    if-ne p2, p0, :cond_0

    sget-object p0, Lorg/apache/poi/style/LineStyle;->DASHED:Lorg/apache/poi/style/LineStyle;

    iget-object p0, p0, Lorg/apache/poi/style/LineStyle;->value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lorg/apache/poi/style/LineStyle;->value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private appendBorderWidth(Ljava/lang/StringBuilder;Ljava/lang/String;C)V
    .locals 0

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p2, "thin"

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;
    .locals 2

    new-instance v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/BordersStyles$BorderStyles;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parseBorderLineStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/LineStyle;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parseBorderWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parseBorderColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    return-object v0
.end method

.method private parseBorderColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->isSetColor()Z

    move-result p0

    const-string v0, "black"

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getColorValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private parseBorderLineStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/LineStyle;
    .locals 0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/style/BordersStyles$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$Borders:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/style/LineStyle;->SOLID:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/style/LineStyle;->OUTSET:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/style/LineStyle;->INSET:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DOUBLE:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DOTTED:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DASHED:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseBorderWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSz()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "thin"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/style/BordersStyles;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/style/BordersStyles;

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p1, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v3, p1, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-virtual {v0, v3}, Lorg/apache/poi/style/BordersStyles$BorderStyles;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v3, p1, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-virtual {v0, v3}, Lorg/apache/poi/style/BordersStyles$BorderStyles;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v3, p1, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-virtual {v0, v3}, Lorg/apache/poi/style/BordersStyles$BorderStyles;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/BordersStyles$BorderStyles;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public isNoneBorders()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    sget-object v1, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v0, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v0, v0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/BordersFetcher;->getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object p1, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object p1, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object p1, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    goto :goto_0

    :cond_2
    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lorg/apache/poi/style/BordersStyles;->parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/BordersStyles;->parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/BordersStyles;->parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parseBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)Lorg/apache/poi/style/BordersStyles$BorderStyles;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    :cond_3
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iput-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Border{none}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Border{t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v1, v1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", r:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", b:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", l:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v2, v2, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p0, p0, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/style/BordersStyles;->toStyle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle(Z)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/style/BordersStyles;->isNoneBorders()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "border-style:dashed;border-width:thin;border-color:gray;"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "border-style:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v1, v1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderLineStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/LineStyle;ZC)V

    .line 6
    iget-object v1, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v1, v1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderLineStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/LineStyle;ZC)V

    .line 7
    iget-object v1, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v1, v1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderLineStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/LineStyle;ZC)V

    .line 8
    iget-object v1, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object v1, v1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->style:Lorg/apache/poi/style/LineStyle;

    const/16 v3, 0x3b

    invoke-direct {p0, v0, v1, p1, v3}, Lorg/apache/poi/style/BordersStyles;->appendBorderLineStyle(Ljava/lang/StringBuilder;Lorg/apache/poi/style/LineStyle;ZC)V

    const-string p1, "border-width:"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderWidth(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 11
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderWidth(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 12
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderWidth(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 13
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->width:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v3}, Lorg/apache/poi/style/BordersStyles;->appendBorderWidth(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    const-string p1, "border-color:"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->top:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderColor(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 16
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->right:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderColor(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 17
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->bottom:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/style/BordersStyles;->appendBorderColor(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 18
    iget-object p1, p0, Lorg/apache/poi/style/BordersStyles;->left:Lorg/apache/poi/style/BordersStyles$BorderStyles;

    iget-object p1, p1, Lorg/apache/poi/style/BordersStyles$BorderStyles;->color:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v3}, Lorg/apache/poi/style/BordersStyles;->appendBorderColor(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toTableStyle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/BordersStyles;->toStyle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
