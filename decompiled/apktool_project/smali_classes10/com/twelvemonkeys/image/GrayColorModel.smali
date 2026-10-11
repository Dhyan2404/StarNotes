.class public Lcom/twelvemonkeys/image/GrayColorModel;
.super Ljava/awt/image/IndexColorModel;
.source "SourceFile"


# static fields
.field public static final e:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/twelvemonkeys/image/GrayColorModel;->a()[B

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/GrayColorModel;->e:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v1, 0x8

    sget-object v5, Lcom/twelvemonkeys/image/GrayColorModel;->e:[B

    array-length v2, v5

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    return-void
.end method

.method public static a()[B
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
