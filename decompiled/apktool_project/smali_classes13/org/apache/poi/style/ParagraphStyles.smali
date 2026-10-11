.class public Lorg/apache/poi/style/ParagraphStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field private align:Lorg/apache/poi/style/TextAlign;

.field private fetcher:Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;

.field private lineHeight:Lorg/apache/poi/style/LineHeight;

.field private marginStyles:Lorg/apache/poi/style/MarginStyles;

.field private textChildSize:I

.field private textIndent:Lorg/apache/poi/style/UnitValue;

.field private textStyles:Lorg/apache/poi/style/TextStyles;

.field private verAlign:Lorg/apache/poi/style/TextVerAlign;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/style/TextAlign;->NONE:Lorg/apache/poi/style/TextAlign;

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->align:Lorg/apache/poi/style/TextAlign;

    sget-object v0, Lorg/apache/poi/style/TextVerAlign;->NONE:Lorg/apache/poi/style/TextVerAlign;

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    new-instance v0, Lorg/apache/poi/style/MarginStyles;

    invoke-direct {v0}, Lorg/apache/poi/style/MarginStyles;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    new-instance v0, Lorg/apache/poi/style/LineHeight;

    invoke-direct {v0}, Lorg/apache/poi/style/LineHeight;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->lineHeight:Lorg/apache/poi/style/LineHeight;

    iput-object p1, p0, Lorg/apache/poi/style/ParagraphStyles;->fetcher:Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;

    new-instance v0, Lorg/apache/poi/style/ParagraphTextStyle;

    invoke-direct {v0, p2}, Lorg/apache/poi/style/ParagraphTextStyle;-><init>(Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->textStyles:Lorg/apache/poi/style/TextStyles;

    invoke-direct {p0, p1}, Lorg/apache/poi/style/ParagraphStyles;->parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    return-void
.end method

.method private getTextAlign(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)Lorg/apache/poi/style/TextAlign;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/style/TextAlign;->NONE:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/style/ParagraphStyles$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$ParagraphAlignment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/style/TextAlign;->LEFT:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/style/TextAlign;->JUSTIFY:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/style/TextAlign;->JUSTIFY_LAST:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/style/TextAlign;->CENTER:Lorg/apache/poi/style/TextAlign;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/style/TextAlign;->RIGHT:Lorg/apache/poi/style/TextAlign;

    return-object p0
.end method

.method private getTextVerAlign(Lorg/apache/poi/xwpf/usermodel/TextAlignment;)Lorg/apache/poi/style/TextVerAlign;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->NONE:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/style/ParagraphStyles$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$TextAlignment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->AUTO:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->BASELINE:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->BOTTOM:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->TOP:Lorg/apache/poi/style/TextVerAlign;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/style/TextVerAlign;->MIDDLE:Lorg/apache/poi/style/TextVerAlign;

    return-object p0
.end method

.method private parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->textStyles:Lorg/apache/poi/style/TextStyles;

    invoke-virtual {v0, p1}, Lorg/apache/poi/style/TextStyles;->parseBorderStyles(Lorg/apache/poi/convert/xwpf/property/BordersFetcher;)V

    iget-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {v0, p1}, Lorg/apache/poi/style/MarginStyles;->parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    iget-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->lineHeight:Lorg/apache/poi/style/LineHeight;

    invoke-virtual {v0, p1}, Lorg/apache/poi/style/LineHeight;->parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/ParagraphStyles;->getTextAlign(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)Lorg/apache/poi/style/TextAlign;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->align:Lorg/apache/poi/style/TextAlign;

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/ParagraphStyles;->getTextVerAlign(Lorg/apache/poi/xwpf/usermodel/TextAlignment;)Lorg/apache/poi/style/TextVerAlign;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/ParagraphStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getTextIndent()Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    return-void
.end method


# virtual methods
.method public getLineHeight()Lorg/apache/poi/style/LineHeight;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->lineHeight:Lorg/apache/poi/style/LineHeight;

    return-object p0
.end method

.method public getMarginStyles()Lorg/apache/poi/style/MarginStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    return-object p0
.end method

.method public getTextIndent()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getTextStyles()Lorg/apache/poi/style/TextStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->textStyles:Lorg/apache/poi/style/TextStyles;

    return-object p0
.end method

.method public hasTextChild()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/ParagraphStyles;->textChildSize:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public increaseTextChildSize()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/style/ParagraphStyles;->textChildSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/style/ParagraphStyles;->textChildSize:I

    return-void
.end method

.method public toStyle()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->align:Lorg/apache/poi/style/TextAlign;

    invoke-virtual {v1}, Lorg/apache/poi/style/TextAlign;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->verAlign:Lorg/apache/poi/style/TextVerAlign;

    invoke-virtual {v1}, Lorg/apache/poi/style/TextVerAlign;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const-string v3, "text-indent:"

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/style/ParagraphStyles;->textIndent:Lorg/apache/poi/style/UnitValue;

    iget-object v4, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {v4}, Lorg/apache/poi/style/MarginStyles;->getLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/style/UnitValue;->add(Lorg/apache/poi/style/UnitValue;)Lorg/apache/poi/style/UnitValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->toStyleExcludeLeft()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "margin-left:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v4

    cmpg-float v2, v4, v2

    if-gez v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->toStyleExcludeLeft()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/style/ParagraphStyles;->marginStyles:Lorg/apache/poi/style/MarginStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/MarginStyles;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
