.class public final Lorg/apache/poi/hslf/usermodel/HSLFTableCell;
.super Lorg/apache/poi/hslf/usermodel/HSLFTextBox;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TableCell;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFTextBox;",
        "Lorg/apache/poi/sl/usermodel/TableCell<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DEFAULT_HEIGHT:I = 0x28

.field protected static final DEFAULT_WIDTH:I = 0x64


# instance fields
.field borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

.field borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

.field borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

.field borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

.field private gridSpan:I

.field private rowSpan:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hslf/usermodel/HSLFTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->gridSpan:I

    .line 3
    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->rowSpan:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFTable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->gridSpan:I

    .line 6
    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->rowSpan:I

    .line 7
    sget-object p1, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    return-void
.end method

.method private anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V
    .locals 19

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    :goto_0
    move-wide v11, v2

    move-wide v15, v4

    move-wide v13, v6

    move-wide/from16 v17, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    :goto_1
    move-wide v11, v2

    move-wide/from16 v17, v4

    move-wide v13, v6

    move-wide v15, v8

    :goto_2
    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method private createBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFLine;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SHAPEPATH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__FILLOK:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__SHADOWOBSURED:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v3, 0x20000

    invoke-static {v0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->THREED__LIGHTFACE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v3, 0x80000

    invoke-static {v0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    return-object v1
.end method


# virtual methods
.method public addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;
    .locals 5

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->createBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->createBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    return-object p0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->createBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_5
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    return-object p0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->createBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v1, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_7
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    return-object p0
.end method

.method public applyLineProperties(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineWidth(D)V

    invoke-virtual {p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    return-void
.end method

.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__SIZE_TEXT_TO_FIT_SHAPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x20000

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v2, 0x150001

    invoke-static {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__SHADOWOBSURED:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v1, 0x40000

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-object p1
.end method

.method public getBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/awt/Color;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTableCell;Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/lang/Double;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineWidth()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGridSpan()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->gridSpan:I

    return p0
.end method

.method public getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;

    return-object p0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p0

    return-object p0
.end method

.method public getRowSpan()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->rowSpan:I

    return p0
.end method

.method public getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->getRelativeCell(Lorg/apache/poi/hslf/usermodel/HSLFTableCell;II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    return-object p0
.end method

.method public isMerged()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V
    .locals 5

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    if-eqz p0, :cond_8

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    if-eqz p0, :cond_8

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    if-eqz p0, :cond_8

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getParent()Lorg/apache/poi/hslf/usermodel/HSLFTable;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->removeShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->getSiblingCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    if-eqz p0, :cond_8

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_8
    :goto_0
    return-void
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    sget-object p1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->top:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    sget-object p1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->right:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    sget-object p1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->bottom:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    sget-object p1, Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;->left:Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->anchorBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    return-void
.end method

.method public setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/awt/Color;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BorderEdge and/or Color need to be specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BorderEdge and/or LineCompound need to be specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BorderEdge and/or LineDash need to be specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "StrokeStyle needs to be specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->addLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineWidth(D)V

    return-void
.end method

.method public setGridSpan(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->gridSpan:I

    return-void
.end method

.method public setRowSpan(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->rowSpan:I

    return-void
.end method
