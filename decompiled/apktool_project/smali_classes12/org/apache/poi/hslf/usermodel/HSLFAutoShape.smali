.class public Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/AutoShape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;,
        Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFTextShape;",
        "Lorg/apache/poi/sl/usermodel/AutoShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final ESCAPE_INFO:Lorg/apache/poi/util/BitField;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final PATH_INFO:Lorg/apache/poi/util/BitField;

.field static final SEGMENTINFO_CLOSE:[B

.field static final SEGMENTINFO_CUBICTO:[B

.field static final SEGMENTINFO_END:[B

.field static final SEGMENTINFO_ESCAPE:[B

.field static final SEGMENTINFO_ESCAPE2:[B

.field static final SEGMENTINFO_LINETO:[B

.field static final SEGMENTINFO_MOVETO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->LOG:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_MOVETO:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_LINETO:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_ESCAPE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_ESCAPE2:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_CUBICTO:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_CLOSE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->SEGMENTINFO_END:[B

    const v0, 0xe000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->PATH_INFO:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1f00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->ESCAPE_INFO:Lorg/apache/poi/util/BitField;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x54t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x20t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        -0x53t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x60t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        -0x80t
    .end array-data
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
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ShapeType;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;-><init>(Lorg/apache/poi/sl/usermodel/ShapeType;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ShapeType;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeType;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    .line 3
    instance-of p2, p2, Lorg/apache/poi/hslf/usermodel/HSLFGroupShape;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->createSpContainer(Lorg/apache/poi/sl/usermodel/ShapeType;Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method

.method private static d2s(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    array-length v1, p0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    :cond_1
    array-length v1, p1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    :cond_2
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Invalid number of master bytes for a single point - ignore point"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_4

    invoke-static {p0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-static {p0, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    :goto_0
    aput v0, p1, v1

    const/4 v0, 0x1

    aput p0, p1, v0

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->toPoint([I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Master bytes or points not set - ignore point"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBounds(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Ljava/awt/geom/Path2D;)Ljava/awt/geom/Rectangle2D;
    .locals 8

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__LEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__RIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__TOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__BOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    new-instance v3, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    int-to-double v6, v0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    int-to-double v4, p0

    invoke-direct {v0, v1, v2, v4, v5}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {p1, v3, v0}, Ljava/awt/geom/RectangularShape;->setFrameFromDiagonal(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method private static getEscapeInfo([B)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->ESCAPE_INFO:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getPathInfo([B)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->PATH_INFO:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    move-result-object p0

    return-object p0
.end method

.method private static handleClosedShape(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SHAPEPATH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->LINES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->CURVES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    if-ne p0, v0, :cond_2

    :cond_1
    new-instance p0, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    invoke-virtual {p2}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_2
    return-void
.end method

.method private static handleCurveTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "[B>;[I",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            "Ljava/awt/geom/Path2D;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p3}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleMoveTo0(Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/CurveToCommand;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x3

    new-array v4, v3, [Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    if-ge v6, v3, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object v7

    aput-object v7, v4, v6

    mul-int/lit8 v7, v6, 0x2

    aget v9, v0, v5

    aput v9, v2, v7

    add-int/2addr v7, v8

    aget v8, v0, v8

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v4, v5

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    aget-object v0, v4, v8

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    const/4 v0, 0x2

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt3(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    aget v1, v2, v5

    int-to-double v10, v1

    aget v1, v2, v8

    int-to-double v12, v1

    aget v0, v2, v0

    int-to-double v14, v0

    aget v0, v2, v3

    int-to-double v0, v0

    const/4 v3, 0x4

    aget v3, v2, v3

    int-to-double v3, v3

    const/4 v5, 0x5

    aget v2, v2, v5

    int-to-double v5, v2

    move-object/from16 v9, p3

    move-wide/from16 v16, v0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v9 .. v21}, Ljava/awt/geom/Path2D;->curveTo(DDDDDD)V

    return-void
.end method

.method private static handleEscapeInfo(Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;[BLjava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            "Ljava/awt/geom/Path2D;",
            "[B",
            "Ljava/util/Iterator<",
            "[B>;)V"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->getEscapeInfo([B)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$EscapeInfo:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array v0, p2, [I

    new-array v1, p2, [I

    new-array v2, p2, [I

    new-array p2, p2, [I

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-static {p3, p2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    new-instance p3, Ljava/awt/geom/Arc2D$Double;

    invoke-direct {p3}, Ljava/awt/geom/Arc2D$Double;-><init>()V

    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->xy2p([I)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-static {v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->xy2p([I)Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/awt/geom/RectangularShape;->setFrameFromDiagonal(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V

    invoke-virtual {p3, v3}, Ljava/awt/geom/RectangularShape;->setFrame(Ljava/awt/geom/Rectangle2D;)V

    invoke-static {v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->xy2p([I)Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->xy2p([I)Ljava/awt/geom/Point2D;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Ljava/awt/geom/Arc2D;->setAngles(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    new-instance p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;-><init>()V

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D$Double;->getHeight()D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->d2s(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setHR(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D$Double;->getWidth()D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->d2s(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setWR(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->d2s(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setStAng(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide p2

    neg-double p2, p2

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->d2s(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setSwAng(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    :goto_0
    return-void
.end method

.method private static handleLineTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "[B>;[I",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            "Ljava/awt/geom/Path2D;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleMoveTo0(Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    new-instance v0, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 p0, 0x0

    aget p0, p1, p0

    int-to-double v0, p0

    const/4 p0, 0x1

    aget p0, p1, p0

    int-to-double p0, p0

    invoke-virtual {p3, v0, v1, p0, p1}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    return-void
.end method

.method private static handleMoveTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "[B>;[I",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            "Ljava/awt/geom/Path2D;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->fillPoint([B[I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 p0, 0x0

    aget p0, p1, p0

    int-to-double v0, p0

    const/4 p0, 0x1

    aget p0, p1, p0

    int-to-double p0, p0

    invoke-virtual {p3, v0, v1, p0, p1}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    return-void
.end method

.method private static handleMoveTo0(Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V
    .locals 3

    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>()V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    :cond_0
    return-void
.end method

.method private static toPoint([I)Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    return-object v0
.end method

.method private static xy2p([I)Ljava/awt/geom/Point2D;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public createSpContainer(Lorg/apache/poi/sl/usermodel/ShapeType;Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    invoke-super {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v0, 0x40000

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x8000004

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v0, 0x8000000

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x100010

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x8000001

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x80008

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x8000002

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-object p2
.end method

.method public getAdjustmentValue(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->ADJUST_VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypes;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The index of an adjustment value must be in the [0, 9] range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 3

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__VERTICES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SEGMENTINFO:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    if-eq v0, v1, :cond_1

    sget-object v2, Lorg/apache/poi/sl/usermodel/ShapeType;->NOT_PRIMITIVE:Lorg/apache/poi/sl/usermodel/ShapeType;

    if-ne v0, v2, :cond_2

    :cond_1
    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object p0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->getGeometry(Ljava/awt/geom/Path2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object p0

    return-object p0
.end method

.method public getGeometry(Ljava/awt/geom/Path2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 10

    .line 2
    new-instance v0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v1

    .line 4
    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__VERTICES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherArrayProperty;

    .line 5
    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__SEGMENTINFO:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v1, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-nez v2, :cond_0

    .line 6
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "Freeform is missing GEOMETRY__VERTICES "

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v3, :cond_1

    .line 8
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "Freeform is missing GEOMETRY__SEGMENTINFO "

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object p0

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 11
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 12
    new-instance v5, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v5}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    .line 13
    invoke-virtual {v0, v5}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addPath(Lorg/apache/poi/sl/draw/geom/PathIf;)V

    const/4 v6, 0x0

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 16
    invoke-static {v7}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->getPathInfo([B)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    sget-object v9, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFAutoShape$PathInfo:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    if-eq v8, v3, :cond_7

    const/4 v7, 0x3

    if-eq v8, v7, :cond_6

    const/4 v7, 0x4

    if-eq v8, v7, :cond_5

    const/4 v7, 0x5

    if-eq v8, v7, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 19
    new-instance v6, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v6}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {v5, v6}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    .line 20
    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_4
    move v6, v9

    goto :goto_0

    .line 21
    :cond_5
    invoke-static {p0, v4, v5, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleCurveTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-static {p0, v4, v5, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleLineTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    goto :goto_0

    .line 23
    :cond_7
    invoke-static {p0, v4, v5, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleMoveTo(Ljava/util/Iterator;[ILorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    goto :goto_0

    .line 24
    :cond_8
    invoke-static {v5, p1, v7, p0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleEscapeInfo(Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;[BLjava/util/Iterator;)V

    goto :goto_0

    :cond_9
    if-nez v6, :cond_a

    .line 25
    invoke-static {v1, v5, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->handleClosedShape(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/sl/draw/geom/Path;Ljava/awt/geom/Path2D;)V

    .line 26
    :cond_a
    invoke-static {v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;->getBounds(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Ljava/awt/geom/Path2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-int p1, v1

    int-to-long v1, p1

    invoke-virtual {v5, v1, v2}, Lorg/apache/poi/sl/draw/geom/Path;->setW(J)V

    .line 28
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-long p0, p0

    invoke-virtual {v5, p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->setH(J)V

    return-object v0
.end method

.method public setAdjustmentValue(II)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->ADJUST_VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypes;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The index of an adjustment value must be in the [0, 9] range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultTextProperties(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V
    .locals 0

    sget-object p1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->MIDDLE:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->setWordWrap(Z)V

    return-void
.end method
