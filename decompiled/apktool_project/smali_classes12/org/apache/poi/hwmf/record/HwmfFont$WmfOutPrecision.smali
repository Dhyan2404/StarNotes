.class public final enum Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WmfOutPrecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_DEFAULT_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_DEVICE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_OUTLINE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_PS_ONLY_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_RASTER_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_SCREEN_OUTLINE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_STRING_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_STROKE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_TT_ONLY_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field public static final enum OUT_TT_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;


# instance fields
.field flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v1, "OUT_DEFAULT_PRECIS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_DEFAULT_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v2, "OUT_STRING_PRECIS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_STRING_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v3, "OUT_STROKE_PRECIS"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_STROKE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v4, "OUT_TT_PRECIS"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_TT_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v5, "OUT_DEVICE_PRECIS"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_DEVICE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v6, "OUT_RASTER_PRECIS"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_RASTER_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v7, "OUT_TT_ONLY_PRECIS"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_TT_ONLY_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v8, "OUT_OUTLINE_PRECIS"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_OUTLINE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v9, "OUT_SCREEN_OUTLINE_PRECIS"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_SCREEN_OUTLINE_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    new-instance v9, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    const-string v10, "OUT_PS_ONLY_PRECIS"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_PS_ONLY_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

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

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->values()[Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    return-object v0
.end method
