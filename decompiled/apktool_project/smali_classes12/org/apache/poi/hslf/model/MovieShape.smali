.class public final Lorg/apache/poi/hslf/model/MovieShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MOVIE_THUMBNAIL:I = -0x1

.field public static final MOVIE_AVI:I = 0x2

.field public static final MOVIE_MPEG:I = 0x1


# direct methods
.method public constructor <init>(ILorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/MovieShape;->setMovieIndex(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/MovieShape;->setAutoPlay(Z)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/MovieShape;->setMovieIndex(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method


# virtual methods
.method public createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 5

    invoke-super {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x1000100

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p2, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x10001

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    new-instance p2, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    invoke-direct {p2}, Lorg/apache/poi/hslf/record/ExObjRefAtom;-><init>()V

    new-instance v0, Lorg/apache/poi/hslf/record/InteractiveInfo;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setAction(B)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->setHyperlinkType(B)V

    new-instance v1, Lorg/apache/poi/hslf/record/AnimationInfo;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/AnimationInfo;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/AnimationInfo;->getAnimationInfoAtom()Lorg/apache/poi/hslf/record/AnimationInfoAtom;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setFlag(IZ)V

    invoke-virtual {p0, v4}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->getExObjIdRef()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjList:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/ExObjList;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Lorg/apache/poi/hslf/record/ExMCIMovie;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/hslf/record/ExMCIMovie;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/ExMCIMovie;->getExVideo()Lorg/apache/poi/hslf/record/ExVideoContainer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getExMediaAtom()Lorg/apache/poi/hslf/record/ExMediaAtom;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/ExMediaAtom;->getObjectId()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getPathAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isAutoPlay()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->AnimationInfo:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/AnimationInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfo;->getAnimationInfoAtom()Lorg/apache/poi/hslf/record/AnimationInfoAtom;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAutoPlay(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->AnimationInfo:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/AnimationInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfo;->getAnimationInfoAtom()Lorg/apache/poi/hslf/record/AnimationInfoAtom;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setFlag(IZ)V

    :cond_0
    return-void
.end method

.method public setMovieIndex(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/ExObjRefAtom;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->setExObjIdRef(I)V

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->AnimationInfo:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/AnimationInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfo;->getAnimationInfoAtom()Lorg/apache/poi/hslf/record/AnimationInfoAtom;

    move-result-object p0

    const/high16 v0, 0x7000000

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setDimColor(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setFlag(IZ)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setFlag(IZ)V

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setFlag(IZ)V

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setOrderID(I)V

    :cond_0
    return-void
.end method
