.class public Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PlaceholderDetails;


# instance fields
.field private final placeholder:Lorg/apache/poi/sl/usermodel/Placeholder;

.field private final sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->placeholder:Lorg/apache/poi/sl/usermodel/Placeholder;

    return-void
.end method


# virtual methods
.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->placeholder:Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object p0
.end method

.method public getSize()Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->full:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object p0

    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getDateTimeText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getFooterText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isVisible()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object p0

    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isSlideNumberVisible()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isDateTimeVisible()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isFooterVisible()Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isHeaderVisible()Z

    move-result p0

    return p0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only sub class(es) of HSLFPlaceholderDetails allow setting the placeholder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSize(Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only sub class(es) of HSLFPlaceholderDetails allow setting the size"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setDateTimeText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFootersText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setHeaderText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;->sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setSlideNumberVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setDateTimeVisible(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFooterVisible(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setHeaderVisible(Z)V

    :goto_0
    return-void
.end method
