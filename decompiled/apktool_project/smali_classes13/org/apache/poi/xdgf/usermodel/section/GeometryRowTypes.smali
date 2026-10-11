.class final enum Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ELLIPSE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum INFINITE_LINE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum NURBS_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum POLYLINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_CUB_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_QUAD_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum SPLINE_KNOT:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum SPLINE_START:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;


# instance fields
.field private final constructor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowType;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation
.end field

.field private final rowType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v1, Lcom/sunia/HTREnginev2/s1h;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/s1h;-><init>()V

    const-string v2, "ARC_TO"

    const/4 v3, 0x0

    const-string v4, "ArcTo"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v2, Lcom/sunia/HTREnginev2/e2h;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/e2h;-><init>()V

    const-string v3, "ELLIPSE"

    const/4 v4, 0x1

    const-string v5, "Ellipse"

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ELLIPSE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v3, Lcom/sunia/HTREnginev2/f2h;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/f2h;-><init>()V

    const-string v4, "ELLIPTICAL_ARC_TO"

    const/4 v5, 0x2

    const-string v6, "EllipticalArcTo"

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v2, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v3, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v4, Lcom/sunia/HTREnginev2/g2h;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/g2h;-><init>()V

    const-string v5, "INFINITE_LINE"

    const/4 v6, 0x3

    const-string v7, "InfiniteLine"

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v3, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->INFINITE_LINE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v5, Lcom/sunia/HTREnginev2/t1h;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/t1h;-><init>()V

    const-string v6, "LINE_TO"

    const/4 v7, 0x4

    const-string v8, "LineTo"

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v4, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v6, Lcom/sunia/HTREnginev2/u1h;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/u1h;-><init>()V

    const-string v7, "MOVE_TO"

    const/4 v8, 0x5

    const-string v9, "MoveTo"

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v5, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v7, Lcom/sunia/HTREnginev2/v1h;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/v1h;-><init>()V

    const-string v8, "NURBS_TO"

    const/4 v9, 0x6

    const-string v10, "NURBSTo"

    invoke-direct {v6, v8, v9, v10, v7}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v6, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->NURBS_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v8, Lcom/sunia/HTREnginev2/w1h;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/w1h;-><init>()V

    const-string v9, "POLYLINE_TO"

    const/4 v10, 0x7

    const-string v11, "PolylineTo"

    invoke-direct {v7, v9, v10, v11, v8}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v7, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->POLYLINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v8, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v9, Lcom/sunia/HTREnginev2/x1h;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/x1h;-><init>()V

    const-string v10, "REL_CUB_BEZ_TO"

    const/16 v11, 0x8

    const-string v12, "RelCubBezTo"

    invoke-direct {v8, v10, v11, v12, v9}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v8, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_CUB_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v9, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v10, Lcom/sunia/HTREnginev2/y1h;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/y1h;-><init>()V

    const-string v11, "REL_ELLIPTICAL_ARC_TO"

    const/16 v12, 0x9

    const-string v13, "RelEllipticalArcTo"

    invoke-direct {v9, v11, v12, v13, v10}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v9, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v11, Lcom/sunia/HTREnginev2/z1h;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/z1h;-><init>()V

    const-string v12, "REL_LINE_TO"

    const/16 v13, 0xa

    const-string v14, "RelLineTo"

    invoke-direct {v10, v12, v13, v14, v11}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v10, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v11, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lcom/sunia/HTREnginev2/a2h;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/a2h;-><init>()V

    const-string v13, "REL_MOVE_TO"

    const/16 v14, 0xb

    const-string v15, "RelMoveTo"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v11, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v13, Lcom/sunia/HTREnginev2/b2h;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/b2h;-><init>()V

    const-string v14, "REL_QUAD_BEZ_TO"

    const/16 v15, 0xc

    move-object/from16 v16, v11

    const-string v11, "RelQuadBezTo"

    invoke-direct {v12, v14, v15, v11, v13}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v12, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_QUAD_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v13, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v11, Lcom/sunia/HTREnginev2/c2h;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/c2h;-><init>()V

    const-string v14, "SPLINE_KNOT"

    const/16 v15, 0xd

    move-object/from16 v17, v12

    const-string v12, "SplineKnot"

    invoke-direct {v13, v14, v15, v12, v11}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v13, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->SPLINE_KNOT:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v11, Lcom/sunia/HTREnginev2/d2h;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/d2h;-><init>()V

    const-string v12, "SPLINE_START"

    const/16 v15, 0xe

    move-object/from16 v18, v13

    const-string v13, "SplineStart"

    invoke-direct {v14, v12, v15, v13, v11}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->SPLINE_START:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    filled-new-array/range {v0 .. v14}, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-static {}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->values()[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/a;

    invoke-direct {v1}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowType;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->rowType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->constructor:Ljava/util/function/Function;

    return-void
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    .locals 4

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getT()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LOOKUP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->constructor:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' name \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
    .locals 1

    const-class v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
    .locals 1

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-virtual {v0}, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    return-object v0
.end method


# virtual methods
.method public getRowType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->rowType:Ljava/lang/String;

    return-object p0
.end method
