.class public final enum Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPenStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwmfLineDash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum DASH:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum DASHDOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum DASHDOTDOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum DOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum INSIDEFRAME:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum NULL:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum SOLID:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

.field public static final enum USERSTYLE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;


# instance fields
.field public final dashes:[F

.field public final wmfFlag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->SOLID:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    const-string v5, "DASH"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v6, v4}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->DASH:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    const-string v6, "DOT"

    invoke-direct {v4, v6, v2, v2, v5}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->DOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const/4 v2, 0x4

    new-array v6, v2, [F

    fill-array-data v6, :array_2

    const-string v7, "DASHDOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v6}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->DASHDOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const/4 v7, 0x6

    new-array v8, v7, [F

    fill-array-data v8, :array_3

    const-string v9, "DASHDOTDOT"

    invoke-direct {v6, v9, v2, v2, v8}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->DASHDOTDOT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const-string v2, "NULL"

    const/4 v9, 0x5

    invoke-direct {v8, v2, v9, v9, v3}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->NULL:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v9, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const-string v2, "INSIDEFRAME"

    invoke-direct {v9, v2, v7, v7, v3}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v9, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->INSIDEFRAME:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const-string v2, "USERSTYLE"

    const/4 v10, 0x7

    invoke-direct {v7, v2, v10, v10, v3}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;-><init>(Ljava/lang/String;II[F)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->USERSTYLE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41000000    # 8.0f
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data

    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41000000    # 8.0f
        0x40000000    # 2.0f
        0x41000000    # 8.0f
    .end array-data

    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->wmfFlag:I

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->dashes:[F

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->values()[Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->wmfFlag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    return-object v0
.end method
