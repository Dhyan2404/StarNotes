.class public final Lcom/microsoft/schemas/office/word/STBorderType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/office/word/STBorderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_DASH:I = 0x7

.field static final INT_DASHED_SMALL:I = 0x16

.field static final INT_DASH_DOT_DOT:I = 0x9

.field static final INT_DASH_DOT_STROKED:I = 0x17

.field static final INT_DOT:I = 0x6

.field static final INT_DOT_DASH:I = 0x8

.field static final INT_DOUBLE:I = 0x4

.field static final INT_DOUBLE_WAVE:I = 0x15

.field static final INT_HAIRLINE:I = 0x5

.field static final INT_HTML_INSET:I = 0x1b

.field static final INT_HTML_OUTSET:I = 0x1a

.field static final INT_NONE:I = 0x1

.field static final INT_SINGLE:I = 0x2

.field static final INT_THICK:I = 0x3

.field static final INT_THICK_BETWEEN_THIN:I = 0x10

.field static final INT_THICK_BETWEEN_THIN_LARGE:I = 0x13

.field static final INT_THICK_BETWEEN_THIN_SMALL:I = 0xd

.field static final INT_THICK_THIN:I = 0xf

.field static final INT_THICK_THIN_LARGE:I = 0x12

.field static final INT_THICK_THIN_SMALL:I = 0xc

.field static final INT_THIN_THICK:I = 0xe

.field static final INT_THIN_THICK_LARGE:I = 0x11

.field static final INT_THIN_THICK_SMALL:I = 0xb

.field static final INT_THREE_D_EMBOSS:I = 0x18

.field static final INT_THREE_D_ENGRAVE:I = 0x19

.field static final INT_TRIPLE:I = 0xa

.field static final INT_WAVE:I = 0x14

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v2, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v1, v2

    const-string v3, "none"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v2, v3

    const-string v4, "single"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v3, v4

    const-string v5, "thick"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v4, v5

    const-string v6, "double"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v5, v6

    const-string v7, "hairline"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v6, v7

    const-string v8, "dot"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v7, v8

    const-string v9, "dash"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v8, v9

    const-string v10, "dotDash"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v9, v10

    const-string v11, "dashDotDot"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v10, v11

    const-string v12, "triple"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v11, v12

    const-string v13, "thinThickSmall"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v12, v13

    const-string v14, "thickThinSmall"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v13, v14

    const-string v15, "thickBetweenThinSmall"

    move-object/from16 v28, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v14, v0

    const-string v15, "thinThick"

    move-object/from16 v29, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object v15, v0

    const-string v1, "thickThin"

    move-object/from16 v30, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v16, v0

    const-string v1, "thickBetweenThin"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v17, v0

    const-string v1, "thinThickLarge"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v18, v0

    const-string v1, "thickThinLarge"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v19, v0

    const-string v1, "thickBetweenThinLarge"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v20, v0

    const-string v1, "wave"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v21, v0

    const-string v1, "doubleWave"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v22, v0

    const-string v1, "dashedSmall"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v23, v0

    const-string v1, "dashDotStroked"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v24, v0

    const-string v1, "threeDEmboss"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v25, v0

    const-string v1, "threeDEngrave"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v26, v0

    const-string v1, "HTMLOutset"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-object/from16 v27, v0

    const-string v1, "HTMLInset"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    filled-new-array/range {v1 .. v27}, [Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v1, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lcom/microsoft/schemas/office/word/STBorderType$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;
    .locals 1

    sget-object v0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forInt(I)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object p0

    return-object p0
.end method
