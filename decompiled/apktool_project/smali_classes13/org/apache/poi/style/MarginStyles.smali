.class public Lorg/apache/poi/style/MarginStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field private bottom:Lorg/apache/poi/style/UnitValue;

.field private left:Lorg/apache/poi/style/UnitValue;

.field private right:Lorg/apache/poi/style/UnitValue;

.field private top:Lorg/apache/poi/style/UnitValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V
    .locals 0

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/poi/style/UnitValue;->toStyle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private appendPaddingValue(Ljava/lang/StringBuilder;Lorg/apache/poi/style/UnitValue;C)V
    .locals 0

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0px"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lorg/apache/poi/style/UnitValue;->toStyle(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getBottom()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getLeft()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getLeftNumberValue()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getRight()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getTop()Lorg/apache/poi/style/UnitValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    return-object p0
.end method

.method public getTopNumberValue()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getMarginLeft()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getMarginRight()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getMarginTop()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getMarginBottom()Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    return-void
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V
    .locals 2

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCellMargin()[D

    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    const/4 v0, 0x1

    .line 8
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    const/4 v0, 0x2

    .line 9
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    const/4 v0, 0x3

    .line 10
    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    :cond_0
    return-void
.end method

.method public toPaddingStyle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0}, Lorg/apache/poi/style/UnitValue;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "box-sizing: border-box;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "padding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendPaddingValue(Ljava/lang/StringBuilder;Lorg/apache/poi/style/UnitValue;C)V

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendPaddingValue(Ljava/lang/StringBuilder;Lorg/apache/poi/style/UnitValue;C)V

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendPaddingValue(Ljava/lang/StringBuilder;Lorg/apache/poi/style/UnitValue;C)V

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    const/16 v2, 0x3b

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendPaddingValue(Ljava/lang/StringBuilder;Lorg/apache/poi/style/UnitValue;C)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Margin{t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "margin-top:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    const-string v1, "margin-right:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    const-string v1, "margin-bottom:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    const-string v1, "margin-left:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->left:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyleExcludeLeft()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "margin-top:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->top:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    const-string v1, "margin-right:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->right:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    const-string v1, "margin-bottom:"

    iget-object v2, p0, Lorg/apache/poi/style/MarginStyles;->bottom:Lorg/apache/poi/style/UnitValue;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/style/MarginStyles;->appendMarginValue(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/poi/style/UnitValue;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
