.class public Lorg/apache/poi/style/TextEmphasis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/style/TextEmphasis$Type;
    }
.end annotation


# instance fields
.field private type:Lorg/apache/poi/style/TextEmphasis$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/style/TextEmphasis$Type;->NONE:Lorg/apache/poi/style/TextEmphasis$Type;

    iput-object v0, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;->getEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/poi/style/TextEmphasis$Type;->UNDER_DOT:Lorg/apache/poi/style/TextEmphasis$Type;

    iput-object p1, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/style/TextEmphasis$Type;->CIRCLE:Lorg/apache/poi/style/TextEmphasis$Type;

    iput-object p1, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/apache/poi/style/TextEmphasis$Type;->COMMA:Lorg/apache/poi/style/TextEmphasis$Type;

    iput-object p1, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/apache/poi/style/TextEmphasis$Type;->DOT:Lorg/apache/poi/style/TextEmphasis$Type;

    iput-object p1, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    :cond_5
    :goto_0
    return-void
.end method

.method public toStyle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    sget-object v1, Lorg/apache/poi/style/TextEmphasis$Type;->NONE:Lorg/apache/poi/style/TextEmphasis$Type;

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text-emphasis:filled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/style/TextEmphasis$1;->$SwitchMap$org$apache$poi$style$TextEmphasis$Type:[I

    iget-object p0, p0, Lorg/apache/poi/style/TextEmphasis;->type:Lorg/apache/poi/style/TextEmphasis$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "dot;text-emphasis-position:under;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, "circle;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p0, "sesame;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
