.class public final Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;
.super Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
.source "SourceFile"


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


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/Slide;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->_paragraphs:Ljava/util/List;

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

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->_paragraphs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/Slide;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideAtom;->getMasterID()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    .line 5
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;->getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p0

    :goto_0
    return-object p0
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

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;->_paragraphs:Ljava/util/List;

    return-object p0
.end method
