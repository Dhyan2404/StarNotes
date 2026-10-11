.class public Lcom/sunia/HTREnginev2/ari$c;
.super Lcom/sunia/HTREnginev2/ari$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final e:J

.field public final f:[B

.field public g:I


# direct methods
.method public constructor <init>(IJJJ[B)V
    .locals 10

    move-object v8, p0

    move-object/from16 v9, p8

    array-length v0, v9

    int-to-long v6, v0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/sunia/HTREnginev2/ari$d;-><init>(IJJJ)V

    move-wide/from16 v0, p6

    iput-wide v0, v8, Lcom/sunia/HTREnginev2/ari$c;->e:J

    iput-object v9, v8, Lcom/sunia/HTREnginev2/ari$c;->f:[B

    return-void
.end method


# virtual methods
.method public b(Ljavax/imageio/stream/ImageInputStream;)I
    .locals 2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ari$c;->f:[B

    iget v0, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public c(Ljavax/imageio/stream/ImageInputStream;[BII)I
    .locals 1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ari$c;->f:[B

    array-length p1, p1

    iget v0, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    sub-int/2addr p1, v0

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p4, p0, Lcom/sunia/HTREnginev2/ari$c;->f:[B

    iget v0, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    invoke-static {p4, v0, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    return p1
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ari$d;->b:J

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/ari$c;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public e(Ljavax/imageio/stream/ImageInputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ari$d;->c:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sunia/HTREnginev2/ari$c;->g:I

    invoke-super {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/ari$d;->e(Ljavax/imageio/stream/ImageInputStream;J)V

    return-void
.end method
