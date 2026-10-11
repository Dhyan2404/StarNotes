.class public final enum Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_BITFIELDS:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_CMYK:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_CMYKRLE4:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_CMYKRLE8:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_JPEG:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_PNG:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_RGB:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_RLE4:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field public static final enum BI_RLE8:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;


# instance fields
.field flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v1, "BI_RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_RGB:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v2, "BI_RLE8"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_RLE8:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v3, "BI_RLE4"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_RLE4:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v4, "BI_BITFIELDS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_BITFIELDS:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v5, "BI_JPEG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_JPEG:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const-string v6, "BI_PNG"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_PNG:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const/4 v7, 0x6

    const/16 v8, 0xb

    const-string v9, "BI_CMYK"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_CMYK:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v7, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const/4 v8, 0x7

    const/16 v9, 0xc

    const-string v10, "BI_CMYKRLE8"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_CMYKRLE8:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    new-instance v8, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    const/16 v9, 0x8

    const/16 v10, 0xd

    const-string v11, "BI_CMYKRLE4"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_CMYKRLE4:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

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

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->values()[Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    return-object v0
.end method
