.class public Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/GroupShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/GroupShape<",
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

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

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

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 4
    instance-of p1, p1, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method


# virtual methods
.method public addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->allocateShapeId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeId(I)V

    .line 6
    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    return-void
.end method

.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-void
.end method

.method public createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeType;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 4
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v10}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 4
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v10}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    move-result-object p0

    return-object p0
.end method

.method public createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;
    .locals 10

    .line 2
    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 4
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pictureData needs to be of type HSLFPictureData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/ObjectShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;
    .locals 10

    .line 2
    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 4
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pictureData needs to be of type HSLFPictureData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short p1, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    sget-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    new-instance v0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->NOT_PRIMITIVE:Lorg/apache/poi/sl/usermodel/ShapeType;

    iget v1, v1, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    return-object p0
.end method

.method public createTable(II)Lorg/apache/poi/hslf/usermodel/HSLFTable;
    .locals 10

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;-><init>(IILorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numRows and numCols must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createTable(II)Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p0

    return-object p0
.end method

.method public createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 4
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    move-result-object p0

    return-object p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 14

    sget-short v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "EscherClientAnchorRecord was not found for shape group. Searching for EscherChildAnchorRecord."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    sget-short v0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx1()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy1()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx2()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy2()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol1()S

    move-result p0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getFlag()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result v0

    move v13, v0

    move v0, p0

    move p0, v13

    :goto_0
    new-instance v12, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    move-wide v6, v3

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v6

    :goto_1
    if-ne v1, v5, :cond_2

    move-wide v8, v3

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v8

    :goto_2
    if-ne v2, v5, :cond_3

    move-wide v10, v3

    goto :goto_3

    :cond_3
    sub-int/2addr v2, v0

    invoke-static {v2}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v10

    :goto_3
    if-ne p0, v5, :cond_4

    move-wide v0, v3

    goto :goto_4

    :cond_4
    sub-int/2addr p0, v1

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    :goto_4
    move-object v3, v12

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v12
.end method

.method public getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInteriorAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 12

    sget-short v0, Lorg/apache/poi/ddf/EscherSpgrRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX1()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX2()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY2()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v6

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    sub-double v8, v0, v2

    sub-double v10, v6, v4

    move-object v1, p0

    move-wide v6, v8

    move-wide v8, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/ShapeType;->forId(IZ)Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object p0

    return-object p0
.end method

.method public getShapes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v3, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapeFactory;->createShape(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)Lorg/apache/poi/hslf/usermodel/HSLFShape;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Shape contained non container escher record, was {}"

    invoke-interface {v4, v5, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public moveAndScale(Ljava/awt/geom/Rectangle2D;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    div-double/2addr v1, v5

    :goto_0
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    cmpl-double v5, v5, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    div-double/2addr v3, v5

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v8

    invoke-virtual {v7}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v10

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v10, v1

    add-double v13, v8, v10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    invoke-virtual {v7}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v10

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v15

    sub-double/2addr v10, v15

    mul-double/2addr v10, v3

    add-double v15, v8, v10

    invoke-virtual {v7}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    mul-double v17, v8, v1

    invoke-virtual {v7}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    mul-double v19, v7, v3

    new-instance v7, Ljava/awt/geom/Rectangle2D$Double;

    move-object v12, v7

    invoke-direct/range {v12 .. v20}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v6, v7}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    move-result p0

    return p0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 2

    sget-short v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->moveAndScale(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    :goto_2
    return-void
.end method

.method public setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 5

    sget-short v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setInteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public setInteriorAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 7

    sget-short v0, Lorg/apache/poi/ddf/EscherSpgrRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
