.class public final Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Hyperlink<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

.field private final info:Lorg/apache/poi/hslf/record/InteractiveInfo;

.field private txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/ExHyperlink;Lorg/apache/poi/hslf/record/InteractiveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    return-void
.end method

.method public static createHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ExHyperlink;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;->setNumber(I)V

    .line 5
    new-instance v2, Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-direct {v2}, Lorg/apache/poi/hslf/record/InteractiveInfo;-><init>()V

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkID(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    .line 9
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;-><init>(Lorg/apache/poi/hslf/record/ExHyperlink;Lorg/apache/poi/hslf/record/InteractiveInfo;)V

    .line 10
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToNextSlide()V

    .line 11
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V

    return-object v1
.end method

.method public static createHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 4

    .line 12
    new-instance v0, Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ExHyperlink;-><init>()V

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addToObjListAtom(Lorg/apache/poi/hslf/record/RecordContainer;)I

    move-result v1

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;->setNumber(I)V

    .line 16
    new-instance v2, Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-direct {v2}, Lorg/apache/poi/hslf/record/InteractiveInfo;-><init>()V

    .line 17
    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkID(I)V

    .line 18
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;-><init>(Lorg/apache/poi/hslf/record/ExHyperlink;Lorg/apache/poi/hslf/record/InteractiveInfo;)V

    .line 19
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToNextSlide()V

    .line 20
    new-instance v0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;-><init>()V

    .line 21
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getTextParagraph()Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getStartIdxOfTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)I

    move-result v2

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v3

    add-int/2addr v3, v2

    .line 23
    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->setStartIndex(I)V

    .line 24
    invoke-virtual {v0, v3}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->setEndIndex(I)V

    .line 25
    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->setTextRunInfo(Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;)V

    .line 26
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V

    return-object v1
.end method

.method public static find(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/hslf/record/Document;->getExObjList(Z)Lorg/apache/poi/hslf/record/ExObjList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    .line 8
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Ljava/util/List;Lorg/apache/poi/hslf/record/ExObjList;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static find(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextShape;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static find(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 4

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/Document;->getExObjList(Z)Lorg/apache/poi/hslf/record/ExObjList;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getHSLFChildRecords()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Ljava/util/List;Lorg/apache/poi/hslf/record/ExObjList;Ljava/util/List;)V

    .line 14
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static find(Ljava/util/List;Lorg/apache/poi/hslf/record/ExObjList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;",
            "Lorg/apache/poi/hslf/record/ExObjList;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/Record;

    .line 18
    instance-of v1, v0, Lorg/apache/poi/hslf/record/InteractiveInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    check-cast v0, Lorg/apache/poi/hslf/record/InteractiveInfo;

    .line 20
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->getHyperlinkID()I

    move-result v1

    .line 22
    invoke-virtual {p1, v1}, Lorg/apache/poi/hslf/record/ExObjList;->get(I)Lorg/apache/poi/hslf/record/ExHyperlink;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;-><init>(Lorg/apache/poi/hslf/record/ExHyperlink;Lorg/apache/poi/hslf/record/InteractiveInfo;)V

    .line 24
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/Record;

    .line 27
    instance-of v1, v0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-nez v1, :cond_4

    .line 28
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    check-cast v0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->setTextRunInfo(Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private linkToDocument(IILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkURL(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p1, p3}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0, p4}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkOptions(I)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getLinkURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->getEndIndex()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getExHyperlink()Lorg/apache/poi/hslf/record/ExHyperlink;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getExHyperlinkAtom()Lorg/apache/poi/hslf/record/ExHyperlinkAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExHyperlinkAtom;->getNumber()I

    move-result p0

    return p0
.end method

.method public getInfo()Lorg/apache/poi/hslf/record/InteractiveInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getLinkTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->getStartIndex()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextRunInfo()Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    return-object p0
.end method

.method public getType()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->getHyperlinkType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->NONE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExHyperlink;->getLinkURL()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    :goto_0
    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public linkToEmail(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkURL(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkOptions(I)V

    return-void
.end method

.method public linkToFirstSlide()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    const-string v0, "FIRST"

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToDocument(IILjava/lang/String;I)V

    return-void
.end method

.method public linkToLastSlide()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    const-string v0, "LAST"

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToDocument(IILjava/lang/String;I)V

    return-void
.end method

.method public linkToNextSlide()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    const-string v0, "NEXT"

    const/16 v2, 0x10

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToDocument(IILjava/lang/String;I)V

    return-void
.end method

.method public linkToPreviousSlide()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    const-string v0, "PREV"

    const/16 v2, 0x10

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToDocument(IILjava/lang/String;I)V

    return-void
.end method

.method public linkToSlide(Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result v0

    const/16 v2, 0x30

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->linkToDocument(IILjava/lang/String;I)V

    return-void
.end method

.method public linkToUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->info:Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setJump(B)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkURL(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkOptions(I)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkURL(Ljava/lang/String;)V

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->setEndIndex(I)V

    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->exHyper:Lorg/apache/poi/hslf/record/ExHyperlink;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExHyperlink;->setLinkTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->setStartIndex(I)V

    :cond_0
    return-void
.end method

.method public setTextRunInfo(Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->txinfo:Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    return-void
.end method
