.class public final Lorg/apache/poi/hslf/usermodel/HSLFTable;
.super Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/TableShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/TableShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final BORDERS_ALL:I = 0x5

.field protected static final BORDERS_INSIDE:I = 0x7

.field protected static final BORDERS_NONE:I = 0x8

.field protected static final BORDERS_OUTSIDE:I = 0x6


# instance fields
.field protected cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

.field private columnCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;-><init>(IILorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 2
    invoke-direct {v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    move/from16 v3, p2

    if-lt v3, v2, :cond_2

    .line 4
    filled-new-array/range {p1 .. p2}, [I

    move-result-object v3

    const-class v4, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iput-object v3, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v12, v3

    move-wide/from16 v23, v12

    move v6, v5

    .line 5
    :goto_0
    iget-object v7, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    move-wide v12, v3

    move v7, v5

    .line 6
    :goto_1
    iget-object v8, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v8, v8, v6

    array-length v9, v8

    if-ge v7, v9, :cond_0

    .line 7
    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-direct {v9, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTable;)V

    aput-object v9, v8, v7

    .line 8
    new-instance v8, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    const-wide/high16 v21, 0x4044000000000000L    # 40.0

    move-object v14, v8

    move-wide v15, v12

    move-wide/from16 v17, v23

    invoke-direct/range {v14 .. v22}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 9
    iget-object v9, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v9, v9, v6

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    add-double/2addr v12, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    add-double v23, v23, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v3

    move-wide/from16 v14, v23

    invoke-direct/range {v7 .. v15}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 12
    new-instance v3, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 13
    sget-object v4, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v4, v4, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 14
    new-instance v4, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__TABLEPROPERTIES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 15
    new-instance v4, Lorg/apache/poi/ddf/EscherArrayProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__TABLEROWPROPERTIES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v4, v6, v2, v5}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    const/4 v2, 0x4

    .line 16
    invoke-virtual {v4, v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->setSizeOfElements(I)V

    .line 17
    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInArray(I)V

    .line 18
    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setNumberOfElementsInMemory(I)V

    .line 19
    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 20
    sget-object v1, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v1, v1, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V

    return-void

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    return-void
.end method

.method private calcSpan(Ljava/util/List;DI)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;DI)I"
        }
    .end annotation

    invoke-interface {p1, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 p1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, v0

    cmpg-double p4, v2, p2

    if-gez p4, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private cellListToArray()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    instance-of v3, v2, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    iput-object v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v7, v7, v5

    aput-object v2, v7, v6

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-direct {p0, v3, v7, v8, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->calcSpan(Ljava/util/List;DI)I

    move-result v6

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-direct {p0, v1, v7, v8, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->calcSpan(Ljava/util/List;DI)I

    move-result v4

    invoke-virtual {v2, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setGridSpan(I)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setRowSpan(I)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "HSLFTable without HSLFTableCells"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fitLinesToCells()V
    .locals 35

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    instance-of v3, v2, Lorg/apache/poi/hslf/usermodel/HSLFLine;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-direct {v3, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFLine;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    iget-object v1, v2, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_d

    aget-object v5, v1, v4

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    if-nez v8, :cond_2

    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v30, v2

    move/from16 v34, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v19

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v21

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v23

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v25

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object/from16 v27, v0

    move v13, v10

    move v14, v13

    move v15, v14

    move-object v0, v11

    move-object v3, v0

    move-object v12, v3

    move-object v10, v12

    move v11, v15

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v16

    check-cast v28, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;

    move-object/from16 v29, v1

    move-object v1, v10

    move-object/from16 v10, v28

    move/from16 v30, v2

    move-object/from16 v31, v5

    move v5, v11

    move-object v2, v12

    move-wide/from16 v11, v19

    move/from16 v32, v6

    move-object/from16 v33, v9

    move v6, v13

    move v9, v14

    move-wide/from16 v13, v21

    move/from16 v34, v4

    move v4, v15

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    invoke-virtual/range {v10 .. v18}, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->leftFit(DDDD)I

    move-result v10

    if-ge v10, v4, :cond_3

    move v4, v10

    move-object/from16 v2, v28

    :cond_3
    move-object/from16 v10, v28

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    invoke-virtual/range {v10 .. v18}, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->topFit(DDDD)I

    move-result v10

    if-ge v10, v6, :cond_4

    move v6, v10

    move-object/from16 v1, v28

    :cond_4
    move-object/from16 v10, v28

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    invoke-virtual/range {v10 .. v18}, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->rightFit(DDDD)I

    move-result v10

    if-ge v10, v9, :cond_5

    move v9, v10

    move-object/from16 v3, v28

    :cond_5
    move-object/from16 v10, v28

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    invoke-virtual/range {v10 .. v18}, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->bottomFit(DDDD)I

    move-result v10

    if-ge v10, v5, :cond_6

    move v11, v10

    move-object/from16 v0, v28

    goto :goto_4

    :cond_6
    move v11, v5

    :goto_4
    move-object v10, v1

    move-object v12, v2

    move v15, v4

    move v13, v6

    move v14, v9

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v5, v31

    move/from16 v6, v32

    move-object/from16 v9, v33

    move/from16 v4, v34

    goto :goto_3

    :cond_7
    move-object/from16 v29, v1

    move/from16 v30, v2

    move/from16 v34, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object v1, v10

    move v5, v11

    move-object v2, v12

    move v6, v13

    move v9, v14

    move v4, v15

    const/4 v10, 0x5

    if-ge v4, v10, :cond_8

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v2, v8, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_8
    if-ge v6, v10, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v1, v8, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_9
    if-ge v9, v10, :cond_a

    if-eqz v3, :cond_a

    iget-object v1, v3, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v1, v8, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_a
    if-ge v5, v10, :cond_b

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable$LineRect;->l:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iput-object v0, v8, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v5, v31

    move/from16 v6, v32

    move/from16 v4, v34

    goto/16 :goto_2

    :cond_c
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move/from16 v30, v2

    move/from16 v34, v4

    add-int/lit8 v4, v34, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private updateRowHeightsProperty()V
    .locals 6

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__TABLEROWPROPERTIES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v4

    invoke-static {v1, v2, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 11

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {p0, v7}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    iget-object v8, v7, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderTop:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iget-object v9, v7, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderRight:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iget-object v10, v7, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderBottom:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    iget-object v7, v7, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->borderLeft:Lorg/apache/poi/hslf/usermodel/HSLFLine;

    filled-new-array {v8, v9, v10, v7}, [Lorg/apache/poi/hslf/usermodel/HSLFLine;

    move-result-object v7

    move v8, v2

    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    aget-object v9, v7, v8

    if-eqz v9, :cond_0

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFLine;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->addShape(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->updateRowHeightsProperty()V

    return-void
.end method

.method public getCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v1, p0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, p0, p1

    if-eqz p0, :cond_2

    if-ltz p2, :cond_2

    .line 4
    array-length p1, p0

    if-gt p1, p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    aget-object p0, p0, p2

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->getCell(II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    move-result-object p0

    return-object p0
.end method

.method public getColumnWidth(I)D
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v1, v1, v0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object p0, v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column index \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' is not within range [0-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object p0, p0, v0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNumberOfColumns()I
    .locals 5

    iget v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    array-length v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->columnCount:I

    return p0
.end method

.method public getNumberOfRows()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length p0, p0

    return p0
.end method

.method public getRelativeCell(Lorg/apache/poi/hslf/usermodel/HSLFTableCell;II)Lorg/apache/poi/hslf/usermodel/HSLFTableCell;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    array-length v6, v5

    move v7, v2

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    if-ne v9, p1, :cond_0

    const/4 v2, 0x1

    move v5, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    :goto_2
    add-int/2addr v4, p2

    add-int/2addr v5, p3

    if-eqz v2, :cond_3

    if-ltz v4, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length p1, p0

    if-ge v4, p1, :cond_3

    if-ltz v5, :cond_3

    aget-object p0, p0, v4

    array-length p1, p0

    if-ge v5, p1, :cond_3

    aget-object p0, p0, v5

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public getRowHeight(I)D
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p0, v0, p1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Row index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' is not within range [0-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initTable()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cellListToArray()V

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->fitLinesToCells()V

    return-void
.end method

.method public moveAndScale(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->moveAndScale(Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->updateRowHeightsProperty()V

    return-void
.end method

.method public setColumnWidth(ID)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget-object v3, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v3, v3, v2

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    sub-double v3, p2, v3

    iget-object v14, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v15, v14

    :goto_0
    if-ge v2, v15, :cond_1

    aget-object v12, v14, v2

    aget-object v5, v12, v1

    invoke-virtual {v5}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v13

    invoke-virtual {v13}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {v13}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    invoke-virtual {v13}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v16

    move-object v5, v13

    move-wide/from16 v10, p2

    move-object/from16 v18, v14

    move/from16 v19, v15

    move-object v14, v12

    move-object v15, v13

    move-wide/from16 v12, v16

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    aget-object v5, v14, v1

    invoke-virtual {v5, v15}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    :goto_1
    array-length v6, v14

    if-ge v5, v6, :cond_0

    aget-object v6, v14, v5

    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    add-double v21, v7, v3

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v23

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v25

    invoke-virtual {v6}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v27

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v28}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    aget-object v7, v14, v5

    invoke-virtual {v7, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v18

    move/from16 v15, v19

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v10

    add-double/2addr v10, v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v12

    move-object v5, v1

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Column index \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' is not within range [0-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    aget-object v0, v0, v2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRowHeight(ID)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_4

    iget-object v2, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    sget-object v2, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__TABLEROWPROPERTIES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v5

    invoke-static/range {p2 .. p3}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v7

    invoke-static {v3, v4, v7}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->setElement(I[B)V

    sub-double v2, p2, v5

    move v5, v1

    :goto_0
    iget-object v6, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    aget-object v6, v6, v5

    array-length v7, v6

    move v15, v4

    :goto_1
    if-ge v15, v7, :cond_2

    aget-object v13, v6, v15

    if-nez v13, :cond_0

    move/from16 v26, v15

    goto :goto_3

    :cond_0
    invoke-virtual {v13}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    if-ne v5, v1, :cond_1

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v9

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v11

    invoke-virtual {v14}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v16

    move-object v8, v14

    move-object v4, v13

    move-object/from16 v25, v14

    move-wide/from16 v13, v16

    move/from16 v26, v15

    move-wide/from16 v15, p2

    invoke-virtual/range {v8 .. v16}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    goto :goto_2

    :cond_1
    move-object v4, v13

    move-object/from16 v25, v14

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v25}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v17

    invoke-virtual/range {v25 .. v25}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    add-double v19, v8, v2

    invoke-virtual/range {v25 .. v25}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v21

    invoke-virtual/range {v25 .. v25}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v23

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v24}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :goto_2
    move-object/from16 v8, v25

    invoke-virtual {v4, v8}, Lorg/apache/poi/hslf/usermodel/HSLFTableCell;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    :goto_3
    add-int/lit8 v15, v26, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v9

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v11

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double v13, v4, v2

    move-object v6, v1

    invoke-virtual/range {v6 .. v14}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;->setExteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row index \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' is not within range [0-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 7

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTable;->cells:[[Lorg/apache/poi/hslf/usermodel/HSLFTableCell;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTable;->initTable()V

    goto :goto_2

    :cond_0
    array-length p0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
