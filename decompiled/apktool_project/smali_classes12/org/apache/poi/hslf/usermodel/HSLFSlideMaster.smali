.class public final Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;
.super Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation
.end field

.field private _txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/MainMaster;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_paragraphs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/PPDrawing;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPropHelper(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    array-length v0, p0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    :cond_0
    aget-object p0, p0, p1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getCharacterStyles()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getParagraphStyles()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-string p2, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    return-object p0

    :cond_2
    :goto_1
    if-ltz p1, :cond_4

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {p2, p3}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p4

    if-eqz p4, :cond_3

    return-object p2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getPropHelper(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getPropHelper(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getPropHelper(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_paragraphs:Ljava/util/List;

    return-object p0
.end method

.method public getTxMasterStyleAtoms()[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    return-object p0
.end method

.method public onAddTextShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_paragraphs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V
    .locals 6
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p1

    const-string v0, "Did not find a TxMasterStyleAtom in the current slide show"

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Document;->getEnvironment()Lorg/apache/poi/hslf/record/Environment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Environment;->getTxMasterStyleAtom()Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getTextType()I

    move-result v1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/record/MainMaster;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/MainMaster;->getTxMasterStyleAtoms()[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getTextType()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v5, v4, v3

    if-nez v5, :cond_0

    aput-object v2, v4, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    array-length v4, v3

    const-string v5, "Master styles not initialized"

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getCharacterStyles()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;->_txmaster:[Lorg/apache/poi/hslf/record/TxMasterStyleAtom;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/TxMasterStyleAtom;->getParagraphStyles()Ljava/util/List;

    move-result-object v2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p0, v5}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p0, v5}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
