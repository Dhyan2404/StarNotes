.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _background:Lorg/apache/poi/hslf/usermodel/HSLFBackground;

.field private final _container:Lorg/apache/poi/hslf/record/SheetContainer;

.field private final _sheetNo:I

.field private _slideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/SheetContainer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    iput p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_sheetNo:I

    return-void
.end method


# virtual methods
.method public _getSheetNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_sheetNo:I

    return p0
.end method

.method public _getSheetRefId()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordContainer;->getSheetId()I

    move-result p0

    return p0
.end method

.method public addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 4
    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 6
    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->allocateShapeId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeId(I)V

    .line 8
    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    return-void
.end method

.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-void
.end method

.method public allocateShapeId()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_slideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getEscherDggRecord()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SheetContainer;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getEscherDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I

    move-result p0

    return p0
.end method

.method public createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeType;)V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createAutoShape()Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;-><init>()V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createConnector()Lorg/apache/poi/hslf/usermodel/HSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;-><init>()V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createFreeform()Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>()V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createGroup()Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

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

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFObjectShape;

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

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/hslf/usermodel/HSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public createTable(II)Lorg/apache/poi/hslf/usermodel/HSLFTable;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTable;-><init>(II)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numRows and numCols must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createTable(II)Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p0

    return-object p0
.end method

.method public createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
    .locals 11

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;-><init>()V

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    return-object v0
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->createTextBox()Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    move-result-object p0

    return-object p0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_background:Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    .line 5
    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 6
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFBackground;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_background:Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    .line 7
    invoke-virtual {v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_background:Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    return-object p0
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getBackground()Lorg/apache/poi/hslf/usermodel/HSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SheetContainer;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    return-object p0
.end method

.method public getFollowMasterGraphics()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;
    .locals 2

    new-instance v0, Lorg/apache/poi/hslf/model/HeadersFooters;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hslf/model/HeadersFooters;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;S)V

    return-object v0
.end method

.method public abstract getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    return-object p0
.end method

.method public getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SheetContainer;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    instance-of v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaceholderByTextType(I)Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    instance-of v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getRunType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;

    move-result-object p0

    return-object p0
.end method

.method public getProgrammableTag()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ProgTags:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/RecordContainer;

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ProgBinaryTag:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/RecordContainer;

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->CString:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/CString;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShapes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v3

    sget-short v4, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    if-ne v3, v4, :cond_0

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v5, :cond_4

    check-cast v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v4, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShapeFactory;->createShape(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)Lorg/apache/poi/hslf/usermodel/HSLFShape;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    instance-of v5, v4, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz v5, :cond_3

    invoke-static {v4}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {v6, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not have a EscherContainerRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "spgr not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSheetContainer()Lorg/apache/poi/hslf/record/SheetContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_container:Lorg/apache/poi/hslf/record/SheetContainer;

    return-object p0
.end method

.method public getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_slideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    return-object p0
.end method

.method public bridge synthetic getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTextParagraphs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation
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

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public onAddTextShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    .line 4
    sget-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    move-result p0

    return p0
.end method

.method public setSlideShow(Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_slideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_slideShow:Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->supplySheet(Ljava/util/List;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->applyHyperlinks(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "Can\'t change existing slideshow reference"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
