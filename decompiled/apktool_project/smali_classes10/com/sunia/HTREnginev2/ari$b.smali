.class public final Lcom/sunia/HTREnginev2/ari$b;
.super Lcom/sunia/HTREnginev2/ari$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(JJJILjavax/imageio/stream/ImageInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0xffdb

    move-wide v6, p5

    long-to-int v0, v6

    move/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v0, v2, v3}, Lcom/sunia/HTREnginev2/ari$b;->f(IILjavax/imageio/stream/ImageInputStream;)[B

    move-result-object v8

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/ari$c;-><init>(IJJJ[B)V

    return-void
.end method

.method public static f(IILjavax/imageio/stream/ImageInputStream;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p0, [B

    div-int/lit16 v1, p0, 0x80

    mul-int/lit8 v2, v1, 0x40

    const/4 v3, 0x3

    add-int/2addr v2, v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    aput-byte v4, v0, v5

    const/4 v4, 0x1

    const/16 v6, -0x25

    aput-byte v6, v0, v4

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x2

    aput-byte v4, v0, v6

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    const/4 v3, 0x4

    aput-byte p1, v0, v3

    const/4 p1, 0x5

    sub-int/2addr p0, p1

    invoke-interface {p2, v0, p1, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    move p0, v3

    move p1, v5

    :goto_0
    if-ge p1, v1, :cond_1

    add-int/lit8 p2, v3, 0x1

    add-int/lit8 v4, p0, 0x1

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    move p0, v5

    :goto_1
    const/16 v3, 0x40

    if-ge p0, v3, :cond_0

    add-int v3, p2, p0

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v8, p0, 0x2

    add-int/2addr v7, v8

    aget-byte v7, v0, v7

    aput-byte v7, v0, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, p2, 0x40

    add-int/lit16 p0, v4, 0x80

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v6

    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method
