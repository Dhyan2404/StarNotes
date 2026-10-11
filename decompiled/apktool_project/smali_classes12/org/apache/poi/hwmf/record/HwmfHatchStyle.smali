.class public final enum Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfHatchStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_BDIAGONAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_CROSS:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_DIAGCROSS:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_DITHEREDBKCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_DITHEREDCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_DITHEREDTEXTCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_FDIAGONAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_HORIZONTAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_SOLIDBKCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_SOLIDCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_SOLIDTEXTCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field public static final enum HS_VERTICAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;


# instance fields
.field private final flag:I

.field private final pattern:J


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v1, "HS_HORIZONTAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, 0xff000000ffL

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_HORIZONTAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v8, "HS_VERTICAL"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide v11, -0x7777777777777778L    # -1.48603973805866E-267

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_VERTICAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v14, "HS_FDIAGONAL"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-wide v17, 0x804020180402010L

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_FDIAGONAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v8, "HS_BDIAGONAL"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-wide v11, 0x1020408001020408L

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_BDIAGONAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v14, "HS_CROSS"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const-wide v17, 0x111111ff111111ffL

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_CROSS:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v8, "HS_DIAGCROSS"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-wide v11, 0x1824428181422418L

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_DIAGCROSS:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v14, "HS_SOLIDCLR"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-wide/16 v17, -0x1

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_SOLIDCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v14, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v9, "HS_DITHEREDCLR"

    const/4 v10, 0x7

    const/4 v11, 0x7

    const-wide v12, -0x55aa55aa55aa55abL    # -9.446428046111031E-105

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v14, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_DITHEREDCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v16, "HS_SOLIDTEXTCLR"

    const/16 v17, 0x8

    const/16 v18, 0x8

    const-wide/16 v19, -0x1

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_SOLIDTEXTCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v9, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v22, "HS_DITHEREDTEXTCLR"

    const/16 v23, 0x9

    const/16 v24, 0x9

    const-wide v25, -0x55aa55aa55aa55abL    # -9.446428046111031E-105

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v9, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_DITHEREDTEXTCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v10, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v16, "HS_SOLIDBKCLR"

    const/16 v17, 0xa

    const/16 v18, 0xa

    const-wide/16 v19, 0x0

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v10, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_SOLIDBKCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    new-instance v11, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-string v22, "HS_DITHEREDBKCLR"

    const/16 v23, 0xb

    const/16 v24, 0xb

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;-><init>(Ljava/lang/String;IIJ)V

    sput-object v11, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_DITHEREDBKCLR:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->flag:I

    iput-wide p4, p0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->pattern:J

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->values()[Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->flag:I

    return p0
.end method

.method public getPattern()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->pattern:J

    return-wide v0
.end method
