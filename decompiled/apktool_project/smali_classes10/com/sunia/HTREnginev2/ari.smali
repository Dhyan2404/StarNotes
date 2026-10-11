.class public final Lcom/sunia/HTREnginev2/ari;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/ari$c;,
        Lcom/sunia/HTREnginev2/ari$b;,
        Lcom/sunia/HTREnginev2/ari$a;,
        Lcom/sunia/HTREnginev2/ari$d;
    }
.end annotation


# instance fields
.field public final e:Ljavax/imageio/stream/ImageInputStream;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/ari$d;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Lcom/sunia/HTREnginev2/ari$d;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 2

    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/ari;->g:I

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method

.method public static e0([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "ascii"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static f0([BI)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/sunia/HTREnginev2/ari;->e0([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h0(I)Z
    .locals 1

    const v0, 0xffe0

    if-lt p0, v0, :cond_0

    const v0, 0xffef

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i0(Ljava/lang/String;Ljavax/imageio/stream/ImageInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "segmentId"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    :try_start_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/ari;->f0([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    throw p0
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public final g0()Lcom/sunia/HTREnginev2/ari$d;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/ari;->k0()V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/ari$d;

    iput-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    :goto_0
    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_e

    iget v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v1, v3

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iput v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/ari$d;

    iput-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v5, v2, Lcom/sunia/HTREnginev2/ari$d;->c:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/ari$d;->e(Ljavax/imageio/stream/ImageInputStream;J)V

    iget-object v0, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->d()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :goto_1
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    :goto_2
    const/16 v5, 0xff

    const-wide/16 v6, 0x1

    if-eq v4, v5, :cond_3

    iget-object v4, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    add-long/2addr v1, v6

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    const v5, 0xff00

    or-int/2addr v4, v5

    move-wide v10, v1

    move v9, v4

    :goto_3
    const v1, 0xffff

    if-ne v9, v1, :cond_4

    add-long/2addr v10, v6

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    or-int v9, v1, v5

    goto :goto_3

    :cond_4
    invoke-static {v9}, Lcom/sunia/HTREnginev2/ari;->h0(I)Z

    move-result v1

    const v2, 0xffee

    const/4 v4, 0x0

    if-ne v9, v2, :cond_5

    const-string v2, "Adobe"

    iget-object v5, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-static {v2, v5}, Lcom/sunia/HTREnginev2/ari;->i0(Ljava/lang/String;Ljavax/imageio/stream/ImageInputStream;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    const v5, 0xffe1

    if-ne v9, v5, :cond_6

    const-string v5, "Exif"

    iget-object v6, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-static {v5, v6}, Lcom/sunia/HTREnginev2/ari;->i0(Ljava/lang/String;Ljavax/imageio/stream/ImageInputStream;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v4, v3

    :cond_6
    if-eqz v1, :cond_7

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    const-wide/16 v4, 0x2

    add-long/2addr v10, v4

    int-to-long v4, v1

    add-long/2addr v10, v4

    invoke-interface {v2, v10, v11}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_1

    :cond_7
    const v1, 0xffd9

    if-ne v9, v1, :cond_8

    new-instance v1, Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/sunia/HTREnginev2/ari$d;-><init>(IJJJ)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_8
    const v1, 0xffda

    if-ne v9, v1, :cond_9

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v4, v10

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    :goto_5
    move-wide v14, v4

    if-eqz v2, :cond_a

    const-wide/16 v1, 0x10

    cmp-long v1, v14, v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/sunia/HTREnginev2/ari$a;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v4

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    move-object v8, v1

    move-wide v9, v10

    move-wide v11, v4

    move-wide v13, v14

    move-object v15, v2

    invoke-direct/range {v8 .. v15}, Lcom/sunia/HTREnginev2/ari$a;-><init>(JJJLjavax/imageio/stream/ImageInputStream;)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    goto :goto_6

    :cond_a
    const v1, 0xffdb

    if-ne v9, v1, :cond_c

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v1

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_b

    new-instance v2, Lcom/sunia/HTREnginev2/ari$b;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    move-object v8, v2

    move-wide v9, v10

    move-wide v11, v4

    move-wide v13, v14

    move v15, v1

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v16}, Lcom/sunia/HTREnginev2/ari$b;-><init>(JJJILjavax/imageio/stream/ImageInputStream;)V

    iput-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    goto :goto_6

    :cond_b
    new-instance v1, Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v12

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/sunia/HTREnginev2/ari$d;-><init>(IJJJ)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    goto :goto_6

    :cond_c
    new-instance v1, Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v12

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/sunia/HTREnginev2/ari$d;-><init>(IJJJ)V

    iput-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    :goto_6
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    iget-wide v1, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-object v4, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-wide v5, v4, Lcom/sunia/HTREnginev2/ari$d;->c:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_d

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-gez v1, :cond_d

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/ari$d;->e(Ljavax/imageio/stream/ImageInputStream;J)V

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ari$d;->d()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto/16 :goto_1

    :cond_e
    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-wide v5, v1, Lcom/sunia/HTREnginev2/ari$d;->c:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_10

    iget v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    :cond_f
    add-int/2addr v1, v2

    if-ltz v1, :cond_11

    iput v1, v0, Lcom/sunia/HTREnginev2/ari;->g:I

    iget-object v3, v0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/ari$d;

    iput-object v3, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-wide v4, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v6, v3, Lcom/sunia/HTREnginev2/ari$d;->c:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_f

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_f

    iget-object v1, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v3, v0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/ari$d;->e(Ljavax/imageio/stream/ImageInputStream;J)V

    goto :goto_8

    :cond_10
    iget-object v2, v0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/ari$d;->e(Ljavax/imageio/stream/ImageInputStream;J)V

    :cond_11
    :goto_8
    iget-object v0, v0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    return-object v0
.end method

.method public final j0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/ari$d;->c:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ari;->g0()Lcom/sunia/HTREnginev2/ari$d;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final k0()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    const v0, 0xffd8

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v1, 0x1

    if-ne v3, v0, :cond_0

    new-instance v10, Lcom/sunia/HTREnginev2/ari$d;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sunia/HTREnginev2/ari$d;-><init>(IJJJ)V

    iput-object v10, p0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ari;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sunia/HTREnginev2/ari;->g:I

    return-void

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v2, "Not a JPEG stream (starts with: 0x%04x, expected SOI: 0x%04x)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v1, Ljavax/imageio/IIOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Not a JPEG stream (short stream. expected SOI: 0x%04x)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ari;->j0()V

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/ari$d;->b(Ljavax/imageio/stream/ImageInputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    :goto_0
    if-ge v0, p3, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ari;->j0()V

    .line 7
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ari$d;->a()J

    move-result-wide v1

    iget-wide v3, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/ari;->h:Lcom/sunia/HTREnginev2/ari$d;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ari;->e:Ljavax/imageio/stream/ImageInputStream;

    add-int v6, p2, v0

    sub-int v7, p3, v0

    int-to-long v7, v7

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v3, v5, p1, v6, v1}, Lcom/sunia/HTREnginev2/ari$d;->c(Ljavax/imageio/stream/ImageInputStream;[BII)I

    move-result v1

    :goto_1
    if-ne v1, v4, :cond_1

    if-nez v0, :cond_2

    return v4

    .line 9
    :cond_1
    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method
