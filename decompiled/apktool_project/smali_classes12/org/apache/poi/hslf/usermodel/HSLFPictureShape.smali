.class public Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/PictureShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

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

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getIndex()I

    move-result p1

    instance-of p2, p2, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method

.method private static getFractProp(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->fixedPointToDouble(I)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getEscherBSERecord()Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {p1, p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize()V

    :cond_0
    return-void
.end method

.method public createSpContainer(IZ)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    invoke-super {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p2

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->FRAME:Lorg/apache/poi/sl/usermodel/ShapeType;

    iget v1, v1, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v1, 0x800080

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPTODISPLAY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    return-object p2
.end method

.method public getClipping()Ljava/awt/Insets;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__CROPFROMTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getFractProp(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v0

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__CROPFROMBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getFractProp(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v2

    sget-object v4, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__CROPFROMLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v4}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getFractProp(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v4

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__CROPFROMRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v6}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getFractProp(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double p0, v0, v8

    if-nez p0, :cond_0

    cmpl-double p0, v2, v8

    if-nez p0, :cond_0

    cmpl-double p0, v4, v8

    if-nez p0, :cond_0

    cmpl-double p0, v6, v8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/Insets;

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    mul-double/2addr v4, v8

    double-to-int v1, v4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    mul-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/Insets;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEscherBSERecord()Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "EscherContainerRecord.BSTORE_CONTAINER was not found "

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getPictureIndex()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "picture index was not found, returning "

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherBSERecord;

    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getPictureData()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getEscherBSERecord()Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "no reference to picture data found "

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    .line 7
    iget-object v2, v1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bse:Lorg/apache/poi/ddf/EscherBSERecord;

    if-ne v2, p0, :cond_1

    return-object v1

    .line 8
    :cond_2
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getOffset()I

    move-result p0

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "no picture found for our BSE offset {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;->getPictureData()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPTODISPLAY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPFILENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    return-object p0
.end method

.method public setPictureName(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPFILENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    array-length v3, v0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method
