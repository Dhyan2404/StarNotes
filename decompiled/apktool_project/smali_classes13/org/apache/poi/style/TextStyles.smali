.class public abstract Lorg/apache/poi/style/TextStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# static fields
.field public static final COLOR_AUTO:Ljava/lang/String; = "auto"

.field public static final DEFAULT_FONT_SIZE:Lorg/apache/poi/style/UnitValue;

.field public static final FONT_CHINESE:Ljava/lang/String; = "\u5b8b\u4f53"

.field public static final FONT_LATIN:Ljava/lang/String; = "Times New Roman"

.field public static final FONT_SYMBOL:Ljava/lang/String; = "Symbol"


# instance fields
.field protected backgroundColor:Ljava/lang/String;

.field protected borderStyles:Lorg/apache/poi/style/BordersStyles;

.field protected fetcher:Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

.field protected fontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/common/usermodel/fonts/FontGroup;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fontSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/common/usermodel/fonts/FontGroup;",
            "Lorg/apache/poi/style/UnitValue;",
            ">;"
        }
    .end annotation
.end field

.field protected isInsert:Z

.field protected kerning:Ljava/lang/String;

.field protected letterSpacing:Lorg/apache/poi/style/UnitValue;

.field protected textColor:Ljava/lang/String;

.field protected textDecoration:Lorg/apache/poi/style/TextDecoration;

.field protected textEmphasis:Lorg/apache/poi/style/TextEmphasis;

.field protected textScale:Lorg/apache/poi/style/UnitValue;

.field protected vanish:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4025000000000000L    # 10.5

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPT(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/TextStyles;->DEFAULT_FONT_SIZE:Lorg/apache/poi/style/UnitValue;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/style/TextStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/style/BordersStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/BordersStyles;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    .line 3
    new-instance v0, Lorg/apache/poi/style/TextDecoration;

    invoke-direct {v0}, Lorg/apache/poi/style/TextDecoration;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    .line 4
    new-instance v0, Lorg/apache/poi/style/TextEmphasis;

    invoke-direct {v0}, Lorg/apache/poi/style/TextEmphasis;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->textEmphasis:Lorg/apache/poi/style/TextEmphasis;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->fontFamilyMap:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->fontSizeMap:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lorg/apache/poi/style/TextStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    .line 8
    iput-boolean p2, p0, Lorg/apache/poi/style/TextStyles;->isInsert:Z

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    return-void
.end method


# virtual methods
.method public getFetcher()Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    return-object p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/TextStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->fontFamilyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->fontFamilyMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getFontFamilyWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize()Lorg/apache/poi/style/UnitValue;
    .locals 1

    .line 7
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/TextStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->fontSizeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/style/UnitValue;

    .line 2
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/xwpf/property/AbstractRunPropertyFetcher;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lorg/apache/poi/style/TextStyles;->DEFAULT_FONT_SIZE:Lorg/apache/poi/style/UnitValue;

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->fontSizeMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getFontSizeWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0
.end method

.method public getLineHeight()Lorg/apache/poi/style/LineHeight;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDisplay()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->parseBorderStyles(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V

    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    invoke-virtual {v0, p1}, Lorg/apache/poi/style/TextDecoration;->parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    iget-object v0, p0, Lorg/apache/poi/style/TextStyles;->textEmphasis:Lorg/apache/poi/style/TextEmphasis;

    invoke-virtual {v0, p1}, Lorg/apache/poi/style/TextEmphasis;->parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isVanish()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display:none;"

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getTextHighlightColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getCharacterSpacing()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    iget-boolean v0, p0, Lorg/apache/poi/style/TextStyles;->isInsert:Z

    if-eqz v0, :cond_1

    const-string v0, "#ff0000"

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getColorValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getTextScale()Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TextStyles;->textScale:Lorg/apache/poi/style/UnitValue;

    return-void
.end method

.method public parseBorderStyles(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/BordersStyles;->parse(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V

    return-void
.end method

.method public toStyle()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/TextStyles;->toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "auto"

    const/16 v3, 0x3b

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "background-color:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontFamilyWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "font-family:"

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontSizeWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "font-size:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_3
    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "letter-spacing:"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_4
    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "color:"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    invoke-virtual {p1}, Lorg/apache/poi/style/TextDecoration;->toStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p1, p0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {p1}, Lorg/apache/poi/style/BordersStyles;->toStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Lorg/apache/poi/style/TextStyles;->textEmphasis:Lorg/apache/poi/style/TextEmphasis;

    invoke-virtual {p0}, Lorg/apache/poi/style/TextEmphasis;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
