.class public Lorg/apache/poi/style/TextDecoration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# static fields
.field public static final THROUGH_LINE:I = 0x2

.field public static final UNDERLINE:I = 0x1


# instance fields
.field private color:Ljava/lang/String;

.field private lineStyle:Lorg/apache/poi/style/LineStyle;

.field private lineType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    iput-object v0, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    return-void
.end method

.method private getLineColor(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getUnderlineThemeColorEnum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getThemeColor(Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "auto"

    invoke-static {p0, p1}, Lorg/apache/poi/util/ColorUtils;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getUnderlineColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getColorValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLineStyle(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)Lorg/apache/poi/style/LineStyle;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/style/LineStyle;->SOLID:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/style/TextDecoration$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$UnderlinePatterns:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/style/LineStyle;->SOLID:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DASHED:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DOTTED:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/style/LineStyle;->WAVY:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/style/LineStyle;->DOUBLE:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/style/TextDecoration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/style/TextDecoration;

    iget-object v0, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    iget-object v2, p1, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    iget v2, p1, Lorg/apache/poi/style/TextDecoration;->lineType:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isStrikeThrough()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->isDoubleStrikeThrough()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->parseBool(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "DoubleStrikeThrough"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/style/TextDecoration;->getLineStyle(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)Lorg/apache/poi/style/LineStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    sget-object v1, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    invoke-direct {p0, p1}, Lorg/apache/poi/style/TextDecoration;->getLineColor(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    iput-object v0, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextDecoration{lineStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lineType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text-decoration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const-string v2, "line-through "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Lorg/apache/poi/style/TextDecoration;->lineType:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    const-string v1, "underline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextDecoration;->lineStyle:Lorg/apache/poi/style/LineStyle;

    iget-object v1, v1, Lorg/apache/poi/style/LineStyle;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/style/TextDecoration;->color:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
