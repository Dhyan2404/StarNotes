.class public final enum Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

.field public static final enum ALPHA_8:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

.field public static final enum ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

.field public static final enum RGB_565:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    const-string v1, "ARGB_8888"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->ARGB_8888:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    const/4 v2, 0x1

    const/4 v4, 0x4

    const-string v5, "RGB_565"

    invoke-direct {v1, v5, v2, v4}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->RGB_565:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    new-instance v2, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    const-string v4, "ALPHA_8"

    const/16 v5, 0x8

    invoke-direct {v2, v4, v3, v5}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->ALPHA_8:Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    filled-new-array {v0, v1, v2}, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->$VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->$VALUES:[Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$ImageConfig;

    return-object v0
.end method
