.class public final enum Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfBrushStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_DIBPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_DIBPATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_DIBPATTERNPT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_HATCHED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_INDEXED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_LINEAR_GRADIENT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_MONOPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_PATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field public static final enum BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;


# instance fields
.field flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v1, "BS_SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v2, "BS_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v3, "BS_HATCHED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_HATCHED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v4, "BS_PATTERN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v5, "BS_INDEXED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_INDEXED:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v6, "BS_DIBPATTERN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v7, "BS_DIBPATTERNPT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERNPT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v8, "BS_PATTERN8X8"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v9, "BS_DIBPATTERN8X8"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_DIBPATTERN8X8:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v9, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const-string v10, "BS_MONOPATTERN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_MONOPATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance v10, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    const/16 v11, 0xa

    const/16 v12, 0x100

    const-string v13, "BS_LINEAR_GRADIENT"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_LINEAR_GRADIENT:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    filled-new-array/range {v0 .. v10}, [Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

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

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->values()[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object v0
.end method
