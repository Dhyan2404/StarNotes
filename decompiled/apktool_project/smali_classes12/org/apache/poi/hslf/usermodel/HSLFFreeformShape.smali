.class public final Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FreeformShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;",
        "Lorg/apache/poi/sl/usermodel/FreeformShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

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

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

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

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    sget-object v0, Lorg/apache/poi/sl/usermodel/ShapeType;->NOT_PRIMITIVE:Lorg/apache/poi/sl/usermodel/ShapeType;

    instance-of p1, p1, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->createSpContainer(Lorg/apache/poi/sl/usermodel/ShapeType;Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/awt/geom/Path2D;
    .locals 9

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->getGeometry(Ljava/awt/geom/Path2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v0, v2}, Ljava/awt/geom/Path2D;->transform(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public setPath(Ljava/awt/geom/Path2D;)I
    .locals 17

    invoke-interface/range {p1 .. p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    invoke-interface {v1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-nez v7, :cond_5

    const/4 v7, 0x6

    new-array v7, v7, [D

    invoke-interface {v1, v7}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v11

    if-eqz v11, :cond_4

    if-eq v11, v10, :cond_3

    if-eq v11, v8, :cond_2

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1

    if-eq v11, v9, :cond_0

    sget-object v7, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v7

    const-string v8, "Ignoring invalid segment type {}"

    invoke-static {v11}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v15, v5

    goto/16 :goto_2

    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_LINETO:[B

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_ESCAPE:[B

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_CLOSE:[B

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_3

    :cond_1
    new-instance v11, Ljava/awt/geom/Point2D$Double;

    aget-wide v13, v7, v4

    move v15, v5

    aget-wide v4, v7, v10

    invoke-direct {v11, v13, v14, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    aget-wide v10, v7, v8

    aget-wide v12, v7, v12

    invoke-direct {v4, v10, v11, v12, v13}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    aget-wide v8, v7, v9

    const/4 v5, 0x5

    aget-wide v10, v7, v5

    invoke-direct {v4, v8, v9, v10, v11}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_CUBICTO:[B

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_ESCAPE2:[B

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v15, v5

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v4

    const-string v5, "SEG_QUADTO is not supported"

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v15, v5

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    const/4 v5, 0x0

    aget-wide v8, v7, v5

    aget-wide v10, v7, v10

    invoke-direct {v4, v8, v9, v10, v11}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_LINETO:[B

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_ESCAPE:[B

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v15, v5

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    const/4 v5, 0x0

    aget-wide v8, v7, v5

    aget-wide v10, v7, v10

    invoke-direct {v4, v8, v9, v10, v11}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_MOVETO:[B

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    :goto_2
    move v5, v15

    :goto_3
    invoke-interface {v1}, Ljava/awt/geom/PathIterator;->next()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    move v15, v5

    if-nez v15, :cond_6

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_LINETO:[B

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_END:[B

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v1

    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v5, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SHAPEPATH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v4, v5, v9}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherArrayProperty;

    sget-object v5, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__VERTICES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v10, v7}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/awt/geom/Point2D$Double;

    new-array v12, v5, [B

    invoke-virtual {v11}, Ljava/awt/geom/Point2D$Double;->getX()D

    move-result-wide v13

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v11}, Ljava/awt/geom/Point2D$Double;->getY()D

    move-result-wide v13

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v11

    invoke-static {v12, v9, v11}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v4, v7, v12}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v3, Lorg/apache/poi/ddf/EscherArrayProperty;

    sget-object v4, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SEGMENTINFO:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v10, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    invoke-virtual {v3, v8}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    move v4, v5

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v1, v3}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__RIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__BOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    invoke-virtual {v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return v6
.end method
