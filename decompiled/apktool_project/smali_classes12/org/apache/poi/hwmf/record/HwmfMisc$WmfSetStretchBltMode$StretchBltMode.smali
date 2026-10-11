.class public final enum Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StretchBltMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

.field public static final enum BLACKONWHITE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

.field public static final enum COLORONCOLOR:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

.field public static final enum HALFTONE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

.field public static final enum WHITEONBLACK:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;


# instance fields
.field public final flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    const-string v1, "BLACKONWHITE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->BLACKONWHITE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    const-string v2, "WHITEONBLACK"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->WHITEONBLACK:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    const-string v3, "COLORONCOLOR"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->COLORONCOLOR:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    const-string v4, "HALFTONE"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->HALFTONE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

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

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->values()[Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetStretchBltMode$StretchBltMode;

    return-object v0
.end method
