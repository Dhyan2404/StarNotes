.class public Lorg/apache/poi/style/TextRunStyles;
.super Lorg/apache/poi/style/TextStyles;
.source "SourceFile"


# instance fields
.field private fontStyle:Ljava/lang/String;

.field private fontWeight:Ljava/lang/String;

.field private parent:Lorg/apache/poi/style/ParagraphStyles;

.field private superscript:Ljava/lang/String;

.field private textShadowed:Ljava/lang/String;

.field private textTransform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/style/TextStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/style/TextStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/style/TextStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V

    .line 4
    iput-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/style/TextRunStyles;->clearSameAttributes()V

    return-void
.end method

.method private clearSameAttributes()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {v0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    iget-object v2, v0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {v1, v2}, Lorg/apache/poi/style/BordersStyles;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->borderStyles:Lorg/apache/poi/style/BordersStyles;

    invoke-virtual {v1}, Lorg/apache/poi/style/BordersStyles;->reset()V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    iget-object v2, v0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    invoke-virtual {v1, v2}, Lorg/apache/poi/style/TextDecoration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->textDecoration:Lorg/apache/poi/style/TextDecoration;

    invoke-virtual {v1}, Lorg/apache/poi/style/TextDecoration;->reset()V

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    iget-object v2, v0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-object v2, p0, Lorg/apache/poi/style/TextStyles;->letterSpacing:Lorg/apache/poi/style/UnitValue;

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v2, p0, Lorg/apache/poi/style/TextStyles;->backgroundColor:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v2, p0, Lorg/apache/poi/style/TextStyles;->textColor:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->textScale:Lorg/apache/poi/style/UnitValue;

    iget-object v3, v0, Lorg/apache/poi/style/TextStyles;->textScale:Lorg/apache/poi/style/UnitValue;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v2, p0, Lorg/apache/poi/style/TextStyles;->textScale:Lorg/apache/poi/style/UnitValue;

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v2, p0, Lorg/apache/poi/style/TextStyles;->vanish:Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public getFontFamilyWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextRunStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/TextStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/poi/style/TextStyles;->DEFAULT_FONT_SIZE:Lorg/apache/poi/style/UnitValue;

    :cond_1
    return-object v0
.end method

.method public getFontSizeWithParent(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/style/TextRunStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/TextStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/style/UnitValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public getLineHeight()Lorg/apache/poi/style/LineHeight;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public increaseTextChildSize()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->parent:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->increaseTextChildSize()V

    :cond_0
    return-void
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/style/TextStyles;->parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getVerticalAlignment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->SUPERSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    if-ne v0, v1, :cond_0

    const-string v0, "vertical-align:super;font-size:smaller;"

    iput-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->superscript:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->SUBSCRIPT:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    if-ne v0, v1, :cond_1

    const-string v0, "vertical-align:sub;font-size:smaller;"

    iput-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->superscript:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isItalic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "font-style:italic;"

    iput-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->fontStyle:Ljava/lang/String;

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isBold()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "font-weight:bold;"

    iput-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->fontWeight:Ljava/lang/String;

    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isShadowed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "box-shadow:10px 10px 5px #888888;"

    iput-object v0, p0, Lorg/apache/poi/style/TextRunStyles;->textShadowed:Ljava/lang/String;

    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isCapitalized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "text-transform:uppercase;"

    iput-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->textTransform:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isSmallCaps()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "text-transform:lowercase;"

    iput-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->textTransform:Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method

.method public toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/apache/poi/style/TextStyles;->toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->fontStyle:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->fontStyle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->fontWeight:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->fontWeight:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->superscript:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->superscript:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->textShadowed:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->textShadowed:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/style/TextRunStyles;->textTransform:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/apache/poi/style/TextRunStyles;->textTransform:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
