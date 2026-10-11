.class public Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;
.source "SourceFile"


# instance fields
.field private ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTheme;",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->lambda$getFontFamily$0(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findFirst(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;",
            "TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFontFromFontCollectionByFontGroup(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {p1, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Symbol"

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {p1, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method private getFontFromFontCollectionByFontTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->getMajorFontCollection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->getMinorFontCollection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v2, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v2, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v2, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v0, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v0, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v0, p0}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFontFromFontCollectionByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/Hint;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontScript(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/LangGroup$FontScript;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getCTLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->HANSI:Lorg/apache/poi/convert/xwpf/property/Hint;

    if-eq p3, v0, :cond_5

    sget-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->EAST_ASIA:Lorg/apache/poi/convert/xwpf/property/Hint;

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->CS:Lorg/apache/poi/convert/xwpf/property/Hint;

    if-ne p3, v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getBidi()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/poi/convert/xwpf/property/Hint;->ASCII:Lorg/apache/poi/convert/xwpf/property/Hint;

    if-ne p3, v0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getVal()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getVal()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getEastAsia()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getBidi()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p3, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getEastAsia()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_1
    array-length p3, p0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_7

    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lorg/apache/poi/common/LangGroup;->getTypefaceByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {p1, p2}, Lorg/apache/poi/common/LangGroup;->getTypefaceByFontScript(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFontScript(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/LangGroup$FontScript;
    .locals 0

    sget-object p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    return-object p0
.end method

.method private getFontTheme(Lorg/apache/poi/convert/xwpf/property/Hint;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher$1;->$SwitchMap$org$apache$poi$convert$xwpf$property$Hint:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFontTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getFontFamily$0(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFetcher(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    return-object p0
.end method

.method public getCTLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    return-object p0
.end method

.method public getCharacterSpacing()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/oul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/oul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    return-object p0
.end method

.method public getEmphasisMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    return-object p0
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/mul;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/mul;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/convert/xwpf/property/Hint;->NONE:Lorg/apache/poi/convert/xwpf/property/Hint;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontFromCTFontsByFontGroup(Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Lorg/apache/poi/convert/xwpf/property/Hint;

    move-result-object v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontFromCTFontsByHint(Lorg/apache/poi/convert/xwpf/property/Hint;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontTheme(Lorg/apache/poi/convert/xwpf/property/Hint;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontFromFontCollectionByFontTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    move-object v2, v0

    move-object v0, v1

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->getMajorFontCollection()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontFromFontCollectionByFontGroup(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontFromFontCollectionByLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/convert/xwpf/property/Hint;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->EAST_ASIAN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    if-ne p1, p0, :cond_7

    const-string p0, "\u5b8b\u4f53"

    goto :goto_1

    :cond_7
    const-string p0, "Times New Roman"

    :goto_1
    move-object v0, p0

    :cond_8
    return-object v0
.end method

.method public getKerning()Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cvl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cvl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    return-object p0
.end method

.method public getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    return-object p0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;

    invoke-interface {v2}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHint()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xsetHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetAscii()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetEastAsia()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetCs()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHAnsi()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetAsciiTheme()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xsetAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetEastAsiaTheme()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xsetEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetCstheme()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xsetCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_a

    goto :goto_1

    :cond_a
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHAnsiTheme()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xgetHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->xsetHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_1

    :cond_b
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->ctFonts:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    return-object p0
.end method

.method public getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    return-object p0
.end method

.method public getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    return-object p0
.end method

.method public getTextHighlightColor()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/iul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/iul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTextScale()Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bvl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bvl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getTheme()Lorg/apache/poi/xwpf/usermodel/XWPFTheme;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    return-object p0
.end method

.method public getThemeColor(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/uul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    return-object p0
.end method

.method public getUnderlineColor()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUnderlineThemeColorEnum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/vul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    return-object p0
.end method

.method public isBold()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isCapitalized()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/avl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/avl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isDoubleStrikeThrough()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dvl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dvl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isEmbossed()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gvl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gvl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isHighlighted()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isImprinted()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isItalic()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fvl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fvl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isShadowed()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ful;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ful;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isSmallCaps()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isStrikeThrough()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/tul;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tul;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isVanish()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/evl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/evl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->findFirst(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
