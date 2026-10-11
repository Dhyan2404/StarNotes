.class public Lorg/apache/poi/common/LangGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/common/LangGroup$FontScript;,
        Lorg/apache/poi/common/LangGroup$Lang;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCTTextFontByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getCTTextFontByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/common/LangGroup;->getTypefaceByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getFontScript(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$FontScript;
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/common/LangGroup$Lang;->getLang(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$Lang;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/common/LangGroup$1;->$SwitchMap$org$apache$poi$common$LangGroup$Lang:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->UNKNOWN:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->KHMR:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->BENG:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->THAI:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HEBREW:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ARAB:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANG:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->JAPAN:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANT:Lorg/apache/poi/common/LangGroup$FontScript;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public static getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/apache/poi/common/LangGroup$FontScript;->UNKNOWN:Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getFontList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;

    invoke-static {p1}, Lorg/apache/poi/common/LangGroup$FontScript;->access$000(Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public static getTypefaceByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/common/LangGroup;->getFontScript(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$FontScript;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
