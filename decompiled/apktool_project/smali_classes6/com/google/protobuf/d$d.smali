.class public final Lcom/google/protobuf/d$d;
.super Lcom/google/protobuf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public h:Ljava/nio/ByteBuffer;

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/hv;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alloc",
            "chunkSize"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/d;-><init>(Lcom/sunia/HTREnginev2/hv;ILcom/google/protobuf/d$a;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->F0()V

    return-void
.end method

.method public static synthetic B0()Z
    .locals 1

    invoke-static {}, Lcom/google/protobuf/d$d;->E0()Z

    move-result v0

    return v0
.end method

.method public static E0()Z
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/dun;->V()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/d;->D(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->U0(J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->Q0(J)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->N0(J)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->S0(J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->T0(J)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->O0(J)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->P0(J)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->V0(J)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->W0(J)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->R0(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$d;->writeTag(II)V

    invoke-static {}, Lcom/sunia/HTREnginev2/d9l;->a()Lcom/sunia/HTREnginev2/d9l;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/sunia/HTREnginev2/d9l;->k(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public final C0()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    iget-wide v2, p0, Lcom/google/protobuf/d$d;->i:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final D0()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->j:J

    iget-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final F0()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d;->J()Lcom/sunia/HTREnginev2/v9;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->H0(Lcom/sunia/HTREnginev2/v9;)V

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/d;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->D0()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->j:J

    :cond_0
    return-void
.end method

.method public final G0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d;->K(I)Lcom/sunia/HTREnginev2/v9;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->H0(Lcom/sunia/HTREnginev2/v9;)V

    return-void
.end method

.method public final H0(Lcom/sunia/HTREnginev2/v9;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocatedBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/v9;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/v9;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->G()V

    iget-object v1, p0, Lcom/google/protobuf/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/iri;->c(Ljava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/dun;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->i:J

    iget-object p1, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->j:J

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Allocator returned non-direct buffer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Allocated buffer does not have NIO buffer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final J0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final K0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-byte p0, p1

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final L0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final M0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 p0, p1, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final N0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final O0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final P0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final Q0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final R0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final S0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final T0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public final U0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public V(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->G0(I)V

    :cond_0
    return-void
.end method

.method public final V0(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-long p0, p1, v6

    or-long/2addr p0, v8

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public W(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->write(B)V

    return-void
.end method

.method public final W0(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    long-to-int p0, p1

    and-int/lit8 p0, p0, 0x7f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public b0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public e0(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/d$d;->k:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    long-to-int p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/d;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->D0()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public h(ILjava/lang/Object;Lcom/google/protobuf/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$d;->writeTag(II)V

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/z;->e(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public j0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->z0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/d$d;->A0(J)V

    :goto_0
    return-void
.end method

.method public k(ILjava/lang/Object;Lcom/google/protobuf/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result v0

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/z;->e(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->z0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public o0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->z0(I)V

    return-void
.end method

.method public r(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public r0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->A0(J)V

    return-void
.end method

.method public final spaceLeft()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_0

    iget-wide v5, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v1, v5, v2

    iput-wide v1, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-byte v1, v4

    invoke-static {v5, v6, v1}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v1, :cond_2

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/d$d;->i:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/d$d;->i:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    goto/16 :goto_2

    :cond_3
    const v6, 0xd800

    if-lt v5, v6, :cond_4

    const v6, 0xdfff

    if-ge v6, v5, :cond_5

    :cond_4
    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/d$d;->i:J

    add-long/2addr v8, v2

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    goto :goto_2

    :cond_5
    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/d$d;->i:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    if-eqz v0, :cond_6

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/d$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/d$d;->k:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 p1, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/2addr v0, v4

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public write(B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/d$d;->k:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/dun;->e0(JB)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->G0(I)V

    .line 10
    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/d$d;->k:J

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 12
    iget-object p0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/protobuf/d$d;->G0(I)V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 6
    iget-object p0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->write(B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->z0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->b0(I)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/d$d;->e0(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->j0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 10
    iget v1, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/d;->d:I

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/d;->c:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/v9;->j(Ljava/nio/ByteBuffer;)Lcom/sunia/HTREnginev2/v9;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->F0()V

    return-void

    .line 13
    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/d$d;->k:J

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 15
    iget-object p0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeLazy([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/d;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/d;->d:I

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/d;->c:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/sunia/HTREnginev2/v9;->l([BII)Lcom/sunia/HTREnginev2/v9;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->F0()V

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/d$d;->k:J

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->C0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/iri;->e(Ljava/nio/Buffer;I)V

    .line 7
    iget-object p0, p0, Lcom/google/protobuf/d$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->o0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/d$d;->r0(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->u0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->z0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->z0(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->z0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/d$d;->A0(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public z(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result v0

    invoke-static {}, Lcom/sunia/HTREnginev2/d9l;->a()Lcom/sunia/HTREnginev2/d9l;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/sunia/HTREnginev2/d9l;->k(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d$d;->getTotalBytesWritten()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$d;->V(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$d;->z0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d$d;->writeTag(II)V

    return-void
.end method

.method public z0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->K0(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->M0(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->L0(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->J0(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/d$d;->I0(I)V

    :goto_0
    return-void
.end method
