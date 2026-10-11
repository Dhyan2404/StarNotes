.class public final Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_TEXT_ARCH_DOWN:I = 0xb

.field static final INT_TEXT_ARCH_DOWN_POUR:I = 0xf

.field static final INT_TEXT_ARCH_UP:I = 0xa

.field static final INT_TEXT_ARCH_UP_POUR:I = 0xe

.field static final INT_TEXT_BUTTON:I = 0xd

.field static final INT_TEXT_BUTTON_POUR:I = 0x11

.field static final INT_TEXT_CAN_DOWN:I = 0x15

.field static final INT_TEXT_CAN_UP:I = 0x14

.field static final INT_TEXT_CASCADE_DOWN:I = 0x29

.field static final INT_TEXT_CASCADE_UP:I = 0x28

.field static final INT_TEXT_CHEVRON:I = 0x6

.field static final INT_TEXT_CHEVRON_INVERTED:I = 0x7

.field static final INT_TEXT_CIRCLE:I = 0xc

.field static final INT_TEXT_CIRCLE_POUR:I = 0x10

.field static final INT_TEXT_CURVE_DOWN:I = 0x13

.field static final INT_TEXT_CURVE_UP:I = 0x12

.field static final INT_TEXT_DEFLATE:I = 0x1b

.field static final INT_TEXT_DEFLATE_BOTTOM:I = 0x1d

.field static final INT_TEXT_DEFLATE_INFLATE:I = 0x20

.field static final INT_TEXT_DEFLATE_INFLATE_DEFLATE:I = 0x21

.field static final INT_TEXT_DEFLATE_TOP:I = 0x1f

.field static final INT_TEXT_DOUBLE_WAVE_1:I = 0x18

.field static final INT_TEXT_FADE_DOWN:I = 0x25

.field static final INT_TEXT_FADE_LEFT:I = 0x23

.field static final INT_TEXT_FADE_RIGHT:I = 0x22

.field static final INT_TEXT_FADE_UP:I = 0x24

.field static final INT_TEXT_INFLATE:I = 0x1a

.field static final INT_TEXT_INFLATE_BOTTOM:I = 0x1c

.field static final INT_TEXT_INFLATE_TOP:I = 0x1e

.field static final INT_TEXT_NO_SHAPE:I = 0x1

.field static final INT_TEXT_PLAIN:I = 0x2

.field static final INT_TEXT_RING_INSIDE:I = 0x8

.field static final INT_TEXT_RING_OUTSIDE:I = 0x9

.field static final INT_TEXT_SLANT_DOWN:I = 0x27

.field static final INT_TEXT_SLANT_UP:I = 0x26

.field static final INT_TEXT_STOP:I = 0x3

.field static final INT_TEXT_TRIANGLE:I = 0x4

.field static final INT_TEXT_TRIANGLE_INVERTED:I = 0x5

.field static final INT_TEXT_WAVE_1:I = 0x16

.field static final INT_TEXT_WAVE_2:I = 0x17

.field static final INT_TEXT_WAVE_4:I = 0x19

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 45

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v1, v2

    const-string v3, "textNoShape"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v2, v3

    const-string v4, "textPlain"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v3, v4

    const-string v5, "textStop"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v4, v5

    const-string v6, "textTriangle"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v5, v6

    const-string v7, "textTriangleInverted"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v6, v7

    const-string v8, "textChevron"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v7, v8

    const-string v9, "textChevronInverted"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v8, v9

    const-string v10, "textRingInside"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v9, v10

    const-string v11, "textRingOutside"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v10, v11

    const-string v12, "textArchUp"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v11, v12

    const-string v13, "textArchDown"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v12, v13

    const-string v14, "textCircle"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v13, v14

    const-string v15, "textButton"

    move-object/from16 v42, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v14, v0

    const-string v15, "textArchUpPour"

    move-object/from16 v43, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object v15, v0

    const-string v1, "textArchDownPour"

    move-object/from16 v44, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v16, v0

    const-string v1, "textCirclePour"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v17, v0

    const-string v1, "textButtonPour"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v18, v0

    const-string v1, "textCurveUp"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v19, v0

    const-string v1, "textCurveDown"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v20, v0

    const-string v1, "textCanUp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v21, v0

    const-string v1, "textCanDown"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v22, v0

    const-string v1, "textWave1"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v23, v0

    const-string v1, "textWave2"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v24, v0

    const-string v1, "textDoubleWave1"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v25, v0

    const-string v1, "textWave4"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v26, v0

    const-string v1, "textInflate"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v27, v0

    const-string v1, "textDeflate"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v28, v0

    const-string v1, "textInflateBottom"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v29, v0

    const-string v1, "textDeflateBottom"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v30, v0

    const-string v1, "textInflateTop"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v31, v0

    const-string v1, "textDeflateTop"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v32, v0

    const-string v1, "textDeflateInflate"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v33, v0

    const-string v1, "textDeflateInflateDeflate"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v34, v0

    const-string v1, "textFadeRight"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v35, v0

    const-string v1, "textFadeLeft"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v36, v0

    const-string v1, "textFadeUp"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v37, v0

    const-string v1, "textFadeDown"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v38, v0

    const-string v1, "textSlantUp"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v39, v0

    const-string v1, "textSlantDown"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v40, v0

    const-string v1, "textCascadeUp"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-object/from16 v41, v0

    const-string v1, "textCascadeDown"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    filled-new-array/range {v1 .. v41}, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-result-object v0

    move-object/from16 v1, v42

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextShapeType$Enum;

    move-result-object p0

    return-object p0
.end method
