.class public final Lorg/apache/poi/hslf/model/HeadersFooters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _ppt2007tag:Ljava/lang/String; = "___PPT12"


# instance fields
.field private final _container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

.field private final _ppt2007:Z

.field private final _sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getProgrammableTag()Ljava/lang/String;

    move-result-object v0

    const-string v3, "___PPT12"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_ppt2007:Z

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p1

    .line 9
    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->HeadersFooters:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 11
    instance-of v5, v4, Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    .line 12
    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getOptions()I

    move-result v5

    if-ne v5, p2, :cond_0

    move-object p1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 13
    new-instance p1, Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-direct {p1, p2}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;-><init>(S)V

    .line 14
    sget-object p2, Lorg/apache/poi/hslf/record/RecordTypes;->List:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p2, p2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p2

    .line 15
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    .line 16
    :cond_2
    iput-object p1, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;S)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V

    return-void
.end method

.method private getPlaceholderText(Lorg/apache/poi/sl/usermodel/Placeholder;Lorg/apache/poi/hslf/record/CString;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_ppt2007:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const-string p1, "*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_ppt2007:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private setFlag(IZ)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->setFlag(IZ)V

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/apache/poi/hslf/record/HeadersFootersContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    return-object p0
.end method

.method public getDateTimeFormat()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFormatId()I

    move-result p0

    return p0
.end method

.method public getDateTimeText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getPlaceholderText(Lorg/apache/poi/sl/usermodel/Placeholder;Lorg/apache/poi/hslf/record/CString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFooterAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p0

    return-object p0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getPlaceholderText(Lorg/apache/poi/sl/usermodel/Placeholder;Lorg/apache/poi/hslf/record/CString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getPlaceholderText(Lorg/apache/poi/sl/usermodel/Placeholder;Lorg/apache/poi/hslf/record/CString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserDateAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p0

    return-object p0
.end method

.method public isDateTimeVisible()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public isFooterVisible()Z
    .locals 2

    const/16 v0, 0x20

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public isHeaderVisible()Z
    .locals 2

    const/16 v0, 0x10

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public isPpt2007()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_ppt2007:Z

    return p0
.end method

.method public isSlideNumberVisible()Z
    .locals 2

    const/16 v0, 0x8

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public isTodayDateVisible()Z
    .locals 2

    const/4 v0, 0x2

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public isUserDateVisible()Z
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isVisible(ILorg/apache/poi/sl/usermodel/Placeholder;)Z

    move-result p0

    return p0
.end method

.method public setDateTimeFormat(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->setFormatId(I)V

    return-void
.end method

.method public setDateTimeText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->setUserDateVisible(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->setDateTimeVisible(Z)V

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->addUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setDateTimeVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method

.method public setFooterVisible(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method

.method public setFootersText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFooterVisible(Z)V

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->addFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->setHeaderVisible(Z)V

    iget-object v0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HeadersFooters;->_container:Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->addHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/CString;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderVisible(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method

.method public setSlideNumberVisible(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method

.method public setTodayDateVisible(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method

.method public setUserDateVisible(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/model/HeadersFooters;->setFlag(IZ)V

    return-void
.end method
