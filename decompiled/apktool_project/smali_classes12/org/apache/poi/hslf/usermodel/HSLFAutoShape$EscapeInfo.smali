.class final enum Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EscapeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ANGLE_ELLIPSE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ANGLE_ELLIPSE_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum AUTO_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum AUTO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum CLOCKWISE_ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum CLOCKWISE_ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum CORNER_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum CORNER_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ELLIPTICAL_QUADRANT_X:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum ELLIPTICAL_QUADRANT_Y:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum EXTENSION:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum FILL_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum FREEFORM:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum LINE_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum NO_FILL:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum NO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum QUADRATIC_BEZIER:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum SMOOTH_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum SMOOTH_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum SYMMETRIC_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

.field public static final enum SYMMETRIC_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;


# instance fields
.field private final flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v0, v1

    const-string v2, "EXTENSION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->EXTENSION:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v1, v2

    const-string v3, "ANGLE_ELLIPSE_TO"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ANGLE_ELLIPSE_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v2, v3

    const-string v4, "ANGLE_ELLIPSE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ANGLE_ELLIPSE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v3, v4

    const-string v5, "ARC_TO"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v4, v5

    const-string v6, "ARC"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v5, v6

    const-string v7, "CLOCKWISE_ARC_TO"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CLOCKWISE_ARC_TO:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v7, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v6, v7

    const-string v8, "CLOCKWISE_ARC"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CLOCKWISE_ARC:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v8, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v7, v8

    const-string v9, "ELLIPTICAL_QUADRANT_X"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ELLIPTICAL_QUADRANT_X:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v8, v9

    const-string v10, "ELLIPTICAL_QUADRANT_Y"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->ELLIPTICAL_QUADRANT_Y:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v10, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v9, v10

    const-string v11, "QUADRATIC_BEZIER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->QUADRATIC_BEZIER:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v11, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v10, v11

    const-string v12, "NO_FILL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->NO_FILL:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v12, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v11, v12

    const-string v13, "NO_LINE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->NO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v13, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v12, v13

    const-string v14, "AUTO_LINE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->AUTO_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v14, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v13, v14

    const-string v15, "AUTO_CURVE"

    move-object/from16 v23, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->AUTO_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v14, v0

    const-string v15, "CORNER_LINE"

    move-object/from16 v24, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CORNER_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object v15, v0

    const-string v1, "CORNER_CURVE"

    move-object/from16 v25, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->CORNER_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v16, v0

    const-string v1, "SMOOTH_LINE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SMOOTH_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v17, v0

    const-string v1, "SMOOTH_CURVE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SMOOTH_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v18, v0

    const-string v1, "SYMMETRIC_LINE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SYMMETRIC_LINE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v19, v0

    const-string v1, "SYMMETRIC_CURVE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->SYMMETRIC_CURVE:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v20, v0

    const-string v1, "FREEFORM"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->FREEFORM:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v21, v0

    const-string v1, "FILL_COLOR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->FILL_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x16

    move-object/from16 v26, v3

    const-string v3, "LINE_COLOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->LINE_COLOR:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    filled-new-array/range {v0 .. v22}, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$EscapeInfo;->flag:I

    return p0
.end method
