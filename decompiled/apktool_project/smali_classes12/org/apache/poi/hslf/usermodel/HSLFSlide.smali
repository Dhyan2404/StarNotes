.class public final Lorg/apache/poi/hslf/usermodel/HSLFSlide;
.super Lorg/apache/poi/hslf/usermodel/HSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Slide;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Slide<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _atomSet:Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

.field private _notes:Lorg/apache/poi/hslf/usermodel/HSLFNotes;

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

.field private _slideNo:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 13
    new-instance v0, Lorg/apache/poi/hslf/record/Slide;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/Slide;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    .line 15
    iput p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_slideNo:I

    .line 16
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;->setSheetId(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/Slide;Lorg/apache/poi/hslf/usermodel/HSLFNotes;Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;-><init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_notes:Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    .line 4
    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_atomSet:Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    .line 5
    iput p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_slideNo:I

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_1

    .line 7
    iget-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_atomSet:Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    invoke-virtual {p2}, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->getSlideRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs([Lorg/apache/poi/hslf/record/Record;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "No text records found for slide"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/PPDrawing;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 11
    iget-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 12
    iget-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static varargs selectContainer(Lorg/apache/poi/hslf/record/RecordContainer;I[Lorg/apache/poi/hslf/record/RecordTypes;)Lorg/apache/poi/hslf/record/RecordContainer;
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p2, p1

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/RecordContainer;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->selectContainer(Lorg/apache/poi/hslf/record/RecordContainer;I[Lorg/apache/poi/hslf/record/RecordTypes;)Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public addTitle()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
    .locals 6

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholder;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholder;-><init>()V

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    sget-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v1, v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setRunType(I)V

    const-string v1, "Click to edit title"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setText(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    new-instance v1, Ljava/awt/Rectangle;

    const/16 v2, 0x264

    const/16 v3, 0x5a

    const/16 v4, 0x36

    const/16 v5, 0x30

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getFollowMasterBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_1
    invoke-super {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getFollowMasterScheme()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    return-object p0
.end method

.method public getComments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFComment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->ProgTags:Lorg/apache/poi/hslf/record/RecordTypes;

    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->ProgBinaryTag:Lorg/apache/poi/hslf/record/RecordTypes;

    sget-object v3, Lorg/apache/poi/hslf/record/RecordTypes;->BinaryTagData:Lorg/apache/poi/hslf/record/RecordTypes;

    filled-new-array {v1, v2, v3}, [Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->selectContainer(Lorg/apache/poi/hslf/record/RecordContainer;I[Lorg/apache/poi/hslf/record/RecordTypes;)Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    instance-of v4, v3, Lorg/apache/poi/hslf/record/Comment2000;

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFComment;

    check-cast v3, Lorg/apache/poi/hslf/record/Comment2000;

    invoke-direct {v4, v3}, Lorg/apache/poi/hslf/usermodel/HSLFComment;-><init>(Lorg/apache/poi/hslf/record/Comment2000;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getSSlideLayoutAtom()Lorg/apache/poi/hslf/record/SlideAtomLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtomLayout;->getGeometryType()Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-result-object p0

    .line 3
    sget-object v1, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_ONLY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    if-eq p0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->MASTER_TITLE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    .line 4
    :goto_1
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlide$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isFooterVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 6
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isHeaderVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 7
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isSlideNumberVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 8
    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isDateTimeVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isTodayDateVisible()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isUserDateVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p1

    if-eqz p1, :cond_a

    :cond_9
    if-nez p0, :cond_a

    move v2, v3

    :cond_a
    return v2
.end method

.method public getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/SimpleShape;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)Z"
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getSSlideLayoutAtom()Lorg/apache/poi/hslf/record/SlideAtomLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtomLayout;->getGeometryType()Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    move-result-object p0

    .line 12
    sget-object v2, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_SLIDE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    const/4 v3, 0x1

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->TITLE_ONLY:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;->MASTER_TITLE:Lorg/apache/poi/hslf/record/SlideAtomLayout$SlideLayoutType;

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    .line 13
    :goto_1
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFSlide$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    return v0

    .line 14
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isFooterVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->getFooterAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p0, :cond_4

    move v0, v3

    :cond_4
    return v0

    .line 15
    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->isHeaderVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/hslf/model/HeadersFooters;->getHeaderAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_6

    move v0, v3

    :cond_6
    return v0
.end method

.method public getFollowMasterBackground()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getFollowMasterBackground()Z

    move-result p0

    return p0
.end method

.method public getFollowMasterColourScheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFollowMasterGraphics()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getFollowMasterObjects()Z

    move-result p0

    return p0
.end method

.method public getFollowMasterObjects()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getFollowMasterObjects()Z

    move-result p0

    return p0
.end method

.method public getFollowMasterScheme()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getFollowMasterScheme()Z

    move-result p0

    return p0
.end method

.method public getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;
    .locals 2

    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/SlideAtom;->getMasterID()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    .line 4
    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result v3

    if-ne v0, v3, :cond_0

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getTitleMasters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTitleMaster;

    .line 6
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result v2

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getNotes()Lorg/apache/poi/hslf/usermodel/HSLFNotes;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_notes:Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    return-object p0
.end method

.method public bridge synthetic getNotes()Lorg/apache/poi/sl/usermodel/Notes;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getNotes()Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    move-result-object p0

    return-object p0
.end method

.method public getNumberedListInfo()[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getNumberedListInfo()[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    move-result-object p0

    return-object p0
.end method

.method public getSlideAtomsSet()Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_atomSet:Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;

    return-object p0
.end method

.method public getSlideLayout()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSlideLayout()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideLayout()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSlideName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->CString:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/CString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSlideNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_slideNo:I

    return p0
.end method

.method public getSlideRecord()Lorg/apache/poi/hslf/record/Slide;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/Slide;

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

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    return-object p0
.end method

.method public getTextboxWrappers()[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getTextboxWrappers()[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->isTitle(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRawText(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toExternalString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isHidden()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->SSSlideInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->getEffectTransitionFlagByBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAddTextShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_paragraphs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreate()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getEscherDggRecord()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/SheetContainer;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/PPDrawing;->getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    sget-short v2, Lorg/apache/poi/ddf/EscherDgRecord;->RECORD_ID:S

    invoke-static {v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getMaxDrawingGroupId()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFSlide$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget-short v3, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    sget-short v3, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->allocateShapeId()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    return-void
.end method

.method public setFollowMasterBackground(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/SlideAtom;->setFollowMasterBackground(Z)V

    return-void
.end method

.method public setFollowMasterColourScheme(Z)V
    .locals 0

    return-void
.end method

.method public setFollowMasterObjects(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/SlideAtom;->setFollowMasterObjects(Z)V

    return-void
.end method

.method public setFollowMasterScheme(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/SlideAtom;->setFollowMasterScheme(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->SSSlideInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;-><init>()V

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->SlideAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    :cond_0
    const/4 p0, 0x4

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->setEffectTransitionFlagByBit(IZ)V

    return-void
.end method

.method public setMasterSheet(Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/SlideAtom;->setMasterID(I)V

    return-void
.end method

.method public setNotes(Lorg/apache/poi/sl/usermodel/Notes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "notes needs to be of type HSLFNotes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_notes:Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->getSlideRecord()Lorg/apache/poi/hslf/record/Slide;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Slide;->getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_notes:Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/record/SlideAtom;->setNotesID(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/record/SlideAtom;->setNotesID(I)V

    :goto_1
    return-void
.end method

.method public setSlideNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlide;->_slideNo:I

    return-void
.end method
