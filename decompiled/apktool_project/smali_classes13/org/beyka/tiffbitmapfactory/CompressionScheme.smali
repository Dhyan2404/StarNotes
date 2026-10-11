.class public final enum Lorg/beyka/tiffbitmapfactory/CompressionScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/beyka/tiffbitmapfactory/CompressionScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum ADOBE_DEFLATE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum CCITTFAX3:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum CCITTFAX4:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum CCITTRLE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum DEFLATE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum JPEG:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum LZW:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum NONE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum OTHER:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

.field public static final enum PACKBITS:Lorg/beyka/tiffbitmapfactory/CompressionScheme;


# instance fields
.field final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->NONE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v1, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v4, "CCITTRLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->CCITTRLE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v3, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v4, "CCITTFAX3"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->CCITTFAX3:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v4, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v5, "CCITTFAX4"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->CCITTFAX4:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v5, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v6, "LZW"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->LZW:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v6, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v7, "JPEG"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->JPEG:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v7, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const/4 v8, 0x6

    const v10, 0x8005

    const-string v11, "PACKBITS"

    invoke-direct {v7, v11, v8, v10}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->PACKBITS:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v8, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v10, "DEFLATE"

    const v11, 0x80b2

    invoke-direct {v8, v10, v9, v11}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->DEFLATE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v9, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v10, "ADOBE_DEFLATE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->ADOBE_DEFLATE:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    new-instance v10, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    const-string v11, "OTHER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v2}, Lorg/beyka/tiffbitmapfactory/CompressionScheme;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->OTHER:Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    filled-new-array/range {v0 .. v9}, [Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    move-result-object v0

    sput-object v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->$VALUES:[Lorg/beyka/tiffbitmapfactory/CompressionScheme;

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

    iput p3, p0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/CompressionScheme;
    .locals 1

    const-class v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    return-object p0
.end method

.method public static values()[Lorg/beyka/tiffbitmapfactory/CompressionScheme;
    .locals 1

    sget-object v0, Lorg/beyka/tiffbitmapfactory/CompressionScheme;->$VALUES:[Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    invoke-virtual {v0}, [Lorg/beyka/tiffbitmapfactory/CompressionScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/beyka/tiffbitmapfactory/CompressionScheme;

    return-object v0
.end method
