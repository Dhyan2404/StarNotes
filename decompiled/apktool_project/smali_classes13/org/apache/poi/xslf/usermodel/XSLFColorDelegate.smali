.class public Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccentColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;I)Ljava/awt/Color;
    .locals 2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/4 v0, 0x6

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accentIndex must be {1 ~ 6}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;)Ljava/awt/Color;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    .line 8
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->sizeOfGsArray()I

    move-result v2

    if-lez v2, :cond_2

    const/4 p1, 0x0

    .line 13
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p1

    .line 14
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->getFgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)Ljava/awt/Color;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;)Ljava/awt/Color;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;)Ljava/awt/Color;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Ljava/awt/Color;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;)Ljava/awt/Color;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColorDelegate;->getColor(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;)Ljava/awt/Color;

    move-result-object v0

    :cond_1
    return-object v0
.end method
