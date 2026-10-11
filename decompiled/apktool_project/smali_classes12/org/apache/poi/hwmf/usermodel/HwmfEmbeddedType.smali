.class public final enum Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum BITMAP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum BMP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum EMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum EPS:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum GIF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum JPEG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum PNG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum TIFF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum UNKNOWN:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

.field public static final enum WMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v1, 0x0

    const-string v2, ".bitmap"

    const-string v3, "BITMAP"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->BITMAP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v2, 0x1

    const-string v3, ".wmf"

    const-string v4, "WMF"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->WMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v3, 0x2

    const-string v4, ".emf"

    const-string v5, "EMF"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v4, 0x3

    const-string v5, ".eps"

    const-string v6, "EPS"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EPS:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v4, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v5, 0x4

    const-string v6, ".jpg"

    const-string v7, "JPEG"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->JPEG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v5, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v6, 0x5

    const-string v7, ".gif"

    const-string v8, "GIF"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->GIF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v6, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v7, 0x6

    const-string v8, ".tiff"

    const-string v9, "TIFF"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->TIFF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v7, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/4 v8, 0x7

    const-string v9, ".png"

    const-string v10, "PNG"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->PNG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v8, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/16 v9, 0x8

    const-string v10, ".bmp"

    const-string v11, "BMP"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->BMP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    new-instance v9, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    const/16 v10, 0x9

    const-string v11, ".dat"

    const-string v12, "UNKNOWN"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->UNKNOWN:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->$VALUES:[Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->$VALUES:[Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    return-object v0
.end method
