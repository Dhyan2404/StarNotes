.class public final Lcom/sunia/HTREnginev2/ari$a;
.super Lcom/sunia/HTREnginev2/ari$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(JJJLjavax/imageio/stream/ImageInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0xffee

    invoke-static/range {p7 .. p7}, Lcom/sunia/HTREnginev2/ari$a;->f(Ljavax/imageio/stream/ImageInputStream;)[B

    move-result-object v8

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/ari$c;-><init>(IJJJ[B)V

    return-void
.end method

.method public static f(Ljavax/imageio/stream/ImageInputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x12

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-interface {p0, v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    return-object v0
.end method
