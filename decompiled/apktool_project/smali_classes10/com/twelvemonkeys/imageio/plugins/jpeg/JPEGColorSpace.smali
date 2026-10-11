.class final enum Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum Gray:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum GrayA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum PhotoYCC:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum PhotoYCCA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum RGBA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

.field public static final enum YCbCrA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v1, "Gray"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->Gray:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v2, "GrayA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->GrayA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v3, "RGB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v4, "RGBA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGBA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v5, "YCbCr"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v6, "YCbCrA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCrA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v7, "PhotoYCC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->PhotoYCC:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v8, "PhotoYCCA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->PhotoYCCA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v8, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v9, "CMYK"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    new-instance v9, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const-string v10, "YCCK"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    filled-new-array/range {v0 .. v9}, [Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->$VALUES:[Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;
    .locals 1

    const-class v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0
.end method

.method public static values()[Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->$VALUES:[Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    invoke-virtual {v0}, [Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object v0
.end method
