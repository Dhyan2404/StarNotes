.class public final enum Lorg/beyka/tiffbitmapfactory/Photometric;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/Photometric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum CIELAB:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum ICCLAB:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum ITULAB:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum LOGL:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum LOGLUV:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum MASK:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum MINISBLACK:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum MINISWHITE:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum OTHER:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum PALETTE:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum RGB:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum SEPARATED:Lorg/beyka/tiffbitmapfactory/Photometric;

.field public static final enum YCBCR:Lorg/beyka/tiffbitmapfactory/Photometric;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v1, "MINISWHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/Photometric;->MINISWHITE:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v2, "MINISBLACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/Photometric;->MINISBLACK:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v2, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v3, "RGB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/beyka/tiffbitmapfactory/Photometric;->RGB:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v3, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v4, "PALETTE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/beyka/tiffbitmapfactory/Photometric;->PALETTE:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v4, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v5, "MASK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/beyka/tiffbitmapfactory/Photometric;->MASK:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v5, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v6, "SEPARATED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/beyka/tiffbitmapfactory/Photometric;->SEPARATED:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v6, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v7, "YCBCR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/beyka/tiffbitmapfactory/Photometric;->YCBCR:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v7, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v8, "CIELAB"

    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/beyka/tiffbitmapfactory/Photometric;->CIELAB:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v8, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v9, "ICCLAB"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/beyka/tiffbitmapfactory/Photometric;->ICCLAB:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v9, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v10, "ITULAB"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/beyka/tiffbitmapfactory/Photometric;->ITULAB:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v10, Lorg/beyka/tiffbitmapfactory/Photometric;

    const-string v11, "LOGL"

    const v13, 0x804c

    invoke-direct {v10, v11, v12, v13}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/beyka/tiffbitmapfactory/Photometric;->LOGL:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v11, Lorg/beyka/tiffbitmapfactory/Photometric;

    const/16 v12, 0xb

    const v13, 0x804d

    const-string v14, "LOGLUV"

    invoke-direct {v11, v14, v12, v13}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/beyka/tiffbitmapfactory/Photometric;->LOGLUV:Lorg/beyka/tiffbitmapfactory/Photometric;

    new-instance v12, Lorg/beyka/tiffbitmapfactory/Photometric;

    const/16 v13, 0xc

    const/4 v14, -0x1

    const-string v15, "OTHER"

    invoke-direct {v12, v15, v13, v14}, Lorg/beyka/tiffbitmapfactory/Photometric;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/beyka/tiffbitmapfactory/Photometric;->OTHER:Lorg/beyka/tiffbitmapfactory/Photometric;

    filled-new-array/range {v0 .. v12}, [Lorg/beyka/tiffbitmapfactory/Photometric;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/Photometric;->$VALUES:[Lorg/beyka/tiffbitmapfactory/Photometric;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/Photometric;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/Photometric;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/Photometric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/Photometric;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/Photometric;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/Photometric;->$VALUES:[Lorg/beyka/tiffbitmapfactory/Photometric;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/Photometric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/Photometric;

    return-object v0
.end method
