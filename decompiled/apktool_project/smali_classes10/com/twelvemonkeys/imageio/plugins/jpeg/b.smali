.class public final Lcom/twelvemonkeys/imageio/plugins/jpeg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:I = 0xffd0

.field public static final D:I = 0xffd7

.field public static final E:I = 0x32

.field public static final F:I = -0x80000000


# instance fields
.field public final a:Ljavax/imageio/stream/ImageInputStream;

.field public final b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

.field public final c:Lcom/sunia/HTREnginev2/n0i;

.field public final d:Lcom/sunia/HTREnginev2/hal;

.field public e:Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

.field public final f:[[[I

.field public final g:[I

.field public final h:[I

.field public final i:[[I

.field public final j:[[I

.field public final k:[[I

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:[I

.field public x:[I

.field public y:[I

.field public z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->A:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->B:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5
        0x28
        0x10
        0x2d
        0x2
        0x7
        0x2a
        0x15
        0x38
        0x8
        0x3d
        0x12
        0x2f
        0x1
        0x4
        0x29
        0x17
        0x3a
        0xd
        0x20
        0x18
        0x25
        0xa
        0x3f
        0x11
        0x2c
        0x3
        0x6
        0x2b
        0x14
        0x39
        0xf
        0x22
        0x1d
        0x30
        0x35
        0x1a
        0x27
        0x9
        0x3c
        0x13
        0x2e
        0x16
        0x3b
        0xc
        0x21
        0x1f
        0x32
        0x37
        0x19
        0x24
        0xb
        0x3e
        0xe
        0x23
        0x1c
        0x31
        0x34
        0x1b
        0x26
        0x1e
        0x33
        0x36
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;",
            "Ljavax/imageio/stream/ImageInputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/16 v1, 0x3200

    const/4 v2, 0x4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->f:[[[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g:[I

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->h:[I

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i:[[I

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j:[[I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k:[[I

    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    const-class v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    const-class v0, Lcom/sunia/HTREnginev2/hal;

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/hal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/hal;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hal;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->d:Lcom/sunia/HTREnginev2/hal;

    const-class v0, Lcom/sunia/HTREnginev2/n0i;

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/n0i;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->c:Lcom/sunia/HTREnginev2/n0i;

    const-class v0, Lcom/sunia/HTREnginev2/cml;

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/cml;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/sunia/HTREnginev2/cml;->b:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->p:I

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method


# virtual methods
.method public final a([I[I[I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->d([I[I[I)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->c([I[I[I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public b()[[I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    const v4, 0xffd8

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->c:Lcom/sunia/HTREnginev2/n0i;

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->f:[[[I

    invoke-virtual {v3, v4}, Lcom/sunia/HTREnginev2/n0i;->c([[[I)V

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->d:Lcom/sunia/HTREnginev2/hal;

    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->B:[I

    invoke-virtual {v3, v4}, Lcom/sunia/HTREnginev2/hal;->c([I)V

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    :goto_0
    const v4, 0xffda

    const/4 v5, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iget v6, v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    const/16 v7, 0xff

    iput v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->v:I

    goto :goto_1

    :cond_1
    const v7, 0xffff

    iput v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->v:I

    :goto_1
    iget-object v4, v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u()Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    move-result-object v7

    iput-object v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->e:Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    iget-object v8, v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    array-length v9, v8

    iput v9, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    iget v7, v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b:I

    iput v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->q:I

    iget-object v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->d:Lcom/sunia/HTREnginev2/hal;

    iget-object v7, v7, Lcom/sunia/HTREnginev2/hal;->d:[[I

    move v9, v2

    :goto_2
    iget v10, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    const/4 v11, 0x1

    if-ge v9, v10, :cond_2

    aget-object v10, v8, v9

    iget v10, v10, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->a:I

    invoke-virtual {p0, v4, v10}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->f([Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    move-result-object v10

    iget-object v12, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k:[[I

    iget v13, v10, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->d:I

    aget-object v13, v7, v13

    aput-object v13, v12, v9

    iget-object v12, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->h:[I

    iget v13, v10, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->c:I

    iget v10, v10, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->b:I

    mul-int/2addr v13, v10

    aput v13, v12, v9

    iget-object v10, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j:[[I

    iget-object v12, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->f:[[[I

    aget-object v13, v8, v9

    iget v13, v13, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->c:I

    aget-object v13, v12, v13

    aget-object v13, v13, v2

    aput-object v13, v10, v9

    iget-object v10, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i:[[I

    aget-object v13, v8, v9

    iget v13, v13, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->b:I

    aget-object v12, v12, v13

    aget-object v11, v12, v11

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iget v7, v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d:I

    iput v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    iget v4, v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->c:I

    iput v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    new-array v8, v10, [[I

    if-ne v10, v11, :cond_3

    mul-int/2addr v7, v4

    new-array v4, v7, [I

    iput-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    aput-object v4, v8, v2

    goto :goto_3

    :cond_3
    mul-int v9, v7, v4

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    mul-int v10, v7, v4

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    mul-int/2addr v7, v4

    new-array v4, v7, [I

    iput-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    aput-object v9, v8, v2

    aput-object v10, v8, v11

    aput-object v4, v8, v5

    :goto_3
    filled-new-array {v2}, [I

    move-result-object v4

    filled-new-array {v2}, [I

    move-result-object v5

    move v7, v2

    :goto_4
    if-ge v7, v0, :cond_4

    add-int/lit8 v9, v6, -0x1

    shl-int v9, v11, v9

    aput v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    iget v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->p:I

    if-nez v7, :cond_5

    invoke-virtual {p0, v1, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a([I[I[I)I

    move-result v0

    :goto_5
    if-nez v0, :cond_c

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    if-ge v2, v3, :cond_c

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    if-ge v2, v3, :cond_c

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->q([I)V

    invoke-virtual {p0, v1, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a([I[I[I)I

    move-result v0

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_6
    iget v9, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->p:I

    if-ge v7, v9, :cond_8

    if-nez v7, :cond_6

    move v3, v11

    goto :goto_7

    :cond_6
    move v3, v2

    :goto_7
    iput-boolean v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l:Z

    invoke-virtual {p0, v1, v4, v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a([I[I[I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->q([I)V

    if-eqz v3, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    :goto_8
    if-nez v3, :cond_a

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-eqz v3, :cond_9

    const v3, 0xff00

    iget v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    or-int/2addr v3, v4

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    goto :goto_9

    :cond_9
    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    :cond_a
    :goto_9
    const v4, 0xffd0

    if-lt v3, v4, :cond_b

    const v4, 0xffd7

    if-gt v3, v4, :cond_b

    goto :goto_3

    :cond_b
    move v0, v3

    :cond_c
    const v1, 0xffdc

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t()I

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    :cond_d
    return-object v8

    :cond_e
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Not a JPEG file"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c([I[I[I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->q:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    aput v3, p1, v4

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    int-to-long v7, v3

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    long-to-int v3, v7

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    int-to-long v7, v3

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    div-long/2addr v7, v9

    long-to-int v3, v7

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    int-to-long v7, v3

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    div-long/2addr v7, v9

    long-to-int v3, v7

    aput v3, p1, v4

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v4

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/2addr v7, v6

    add-int/2addr v3, v7

    aput v3, p1, v4

    goto :goto_0

    :pswitch_3
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v7

    sub-int/2addr v3, v7

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v7

    sub-int/2addr v3, v7

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v7

    sub-int/2addr v3, v7

    aput v3, p1, v4

    goto :goto_0

    :pswitch_4
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v3

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v3

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v3

    aput v3, p1, v4

    goto :goto_0

    :pswitch_5
    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    aput v3, p1, v5

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    aput v3, p1, v6

    iget-object v3, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    invoke-virtual {v0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    aput v3, p1, v4

    :goto_0
    move v3, v5

    :goto_1
    iget v4, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k:[[I

    aget-object v4, v4, v3

    iget-object v7, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i:[[I

    aget-object v7, v7, v3

    iget-object v8, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j:[[I

    aget-object v8, v8, v3

    move v9, v5

    :goto_2
    iget-object v10, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->h:[I

    aget v10, v10, v3

    if-ge v9, v10, :cond_6

    move v10, v5

    :goto_3
    iget-object v11, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g:[I

    array-length v12, v11

    if-ge v10, v12, :cond_0

    aput v5, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v8, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i([I[I[I)I

    move-result v10

    const v11, 0xff00

    if-lt v10, v11, :cond_1

    return v10

    :cond_1
    iget-object v12, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g:[I

    aget v13, p1, v3

    invoke-virtual {v0, v2, v10, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o([II[I[I)I

    move-result v10

    add-int/2addr v13, v10

    aput v13, v12, v5

    aput v13, p1, v3

    iget-object v10, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g:[I

    aget v12, v10, v5

    aget v13, v4, v5

    mul-int/2addr v12, v13

    aput v12, v10, v5

    move v10, v6

    :goto_4
    const/16 v12, 0x40

    if-ge v10, v12, :cond_5

    invoke-virtual {v0, v7, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i([I[I[I)I

    move-result v12

    if-lt v12, v11, :cond_2

    return v12

    :cond_2
    shr-int/lit8 v13, v12, 0x4

    add-int/2addr v10, v13

    and-int/lit8 v12, v12, 0xf

    if-nez v12, :cond_3

    if-nez v13, :cond_4

    goto :goto_5

    :cond_3
    iget-object v13, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g:[I

    sget-object v14, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->A:[I

    aget v14, v14, v10

    invoke-virtual {v0, v2, v12, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o([II[I[I)I

    move-result v12

    aget v15, v4, v10

    mul-int/2addr v12, v15

    aput v12, v13, v14

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d([I[I[I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l:Z

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    aput v0, p1, v2

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->q:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v0

    int-to-long v0, v0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    const-wide/16 v3, 0x2

    div-long/2addr v0, v3

    long-to-int v0, v0

    aput v0, p1, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v3

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v4}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    aput v0, p1, v2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v3

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v4}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    aput v0, p1, v2

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p1, v2

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m([I)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result v0

    aput v0, p1, v2

    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->h:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j:[[I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->i([I[I[I)I

    move-result v1

    const v3, 0xff00

    if-lt v1, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o([II[I[I)I

    move-result v1

    shr-int/lit8 v3, v1, 0x8

    const v4, 0xffd0

    if-lt v3, v4, :cond_2

    const v4, 0xffd7

    if-gt v3, v4, :cond_2

    return v3

    :cond_2
    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/sdm;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f([Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    iget v2, v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such component id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    return p0
.end method

.method public final i([I[I[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p3, v0

    const/16 v2, 0x9

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    aget v1, p2, v0

    shl-int/2addr v1, v4

    aput v1, p2, v0

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    if-eqz v5, :cond_0

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    :cond_0
    aget v5, p2, v0

    or-int/2addr v1, v5

    aput v1, p2, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v4

    aput v1, p3, v0

    :goto_0
    aget v1, p2, v0

    aget v5, p3, v0

    shr-int v6, v1, v5

    aget v6, p1, v6

    const/high16 v7, -0x80000000

    and-int/2addr v7, v6

    const v8, 0xff00

    const v9, 0xffff

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-eqz v7, :cond_2

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    or-int/2addr p0, v8

    return p0

    :cond_2
    rsub-int/lit8 v5, v5, 0x10

    shr-int v5, v9, v5

    and-int/2addr v1, v5

    aput v1, p2, v0

    shl-int/2addr v1, v4

    aput v1, p2, v0

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    if-eqz v5, :cond_3

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    :cond_3
    aget v2, p2, v0

    or-int/2addr v1, v2

    aput v1, p2, v0

    and-int/lit16 v2, v6, 0xff

    mul-int/lit16 v2, v2, 0x100

    aget v5, p3, v0

    shr-int/2addr v1, v5

    add-int/2addr v2, v1

    aget v6, p1, v2

    add-int/2addr v5, v4

    aput v5, p3, v0

    :cond_4
    aget p1, p3, v0

    shr-int/lit8 v1, v6, 0x8

    sub-int/2addr v4, v1

    add-int/2addr p1, v4

    aput p1, p3, v0

    if-ltz p1, :cond_6

    iget p3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-ge p1, p3, :cond_5

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    or-int/2addr p0, v8

    return p0

    :cond_5
    aget p0, p2, v0

    rsub-int/lit8 p1, p1, 0x10

    shr-int p1, v9, p1

    and-int/2addr p0, p1

    aput p0, p2, v0

    and-int/lit16 p0, v6, 0xff

    return p0

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " temp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in HuffmanValue()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    return p0
.end method

.method public final l([I)I
    .locals 3

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    mul-int/2addr v2, p0

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    aget p0, p1, v2

    return p0

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b:Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    sub-int/2addr p0, v1

    shl-int p0, v1, p0

    return p0
.end method

.method public final m([I)I
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    mul-int/2addr v1, p0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget p0, p1, v1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n([I)I

    move-result p0

    return p0
.end method

.method public final n([I)I
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    add-int/2addr v0, p0

    aget p0, p1, v0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->l([I)I

    move-result p0

    return p0
.end method

.method public final o([II[I[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    aget p0, p1, v0

    if-ltz p0, :cond_1

    const/16 p0, -0x8000

    return p0

    :cond_1
    const p0, 0x8000

    return p0

    :cond_2
    aget p1, p4, v0

    sub-int/2addr p1, p2

    aput p1, p4, v0

    const v2, 0xffff

    const v3, 0xff00

    if-ltz p1, :cond_4

    iget v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-ge p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->p()Z

    move-result p1

    if-nez p1, :cond_3

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    :goto_0
    or-int/2addr p0, v3

    shl-int/lit8 p0, p0, 0x8

    return p0

    :cond_3
    aget p0, p3, v0

    aget p1, p4, v0

    shr-int p4, p0, p1

    sub-int/2addr v1, p1

    shr-int p1, v2, v1

    and-int/2addr p0, p1

    aput p0, p3, v0

    goto :goto_1

    :cond_4
    aget p1, p3, v0

    shl-int/lit8 p1, p1, 0x8

    aput p1, p3, v0

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p1

    const/16 v4, 0x9

    const/16 v5, 0xff

    if-ne p1, v5, :cond_5

    iget-object v6, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v6

    iput v6, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    if-eqz v6, :cond_5

    iput v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    :cond_5
    aget v6, p3, v0

    or-int/2addr p1, v6

    aput p1, p3, v0

    aget p1, p4, v0

    add-int/lit8 p1, p1, 0x8

    aput p1, p4, v0

    if-gez p1, :cond_8

    iget p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-eqz p1, :cond_6

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    goto :goto_0

    :cond_6
    aget p1, p3, v0

    shl-int/lit8 p1, p1, 0x8

    aput p1, p3, v0

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p1

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    if-eqz v5, :cond_7

    iput v4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    :cond_7
    aget v4, p3, v0

    or-int/2addr p1, v4

    aput p1, p3, v0

    aget p1, p4, v0

    add-int/lit8 p1, p1, 0x8

    aput p1, p4, v0

    :cond_8
    aget p1, p4, v0

    if-ltz p1, :cond_b

    iget p4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    if-ge p1, p4, :cond_9

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->n:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->m:I

    goto :goto_0

    :cond_9
    aget p0, p3, v0

    shr-int p4, p0, p1

    sub-int/2addr v1, p1

    shr-int p1, v2, v1

    and-int/2addr p0, p1

    aput p0, p3, v0

    :goto_1
    add-int/lit8 p0, p2, -0x1

    const/4 p1, 0x1

    shl-int p0, p1, p0

    if-ge p4, p0, :cond_a

    const/4 p0, -0x1

    shl-int/2addr p0, p2

    add-int/2addr p0, p1

    add-int/2addr p4, p0

    :cond_a
    return p4

    :cond_b
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "index="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p4, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in getn()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()Z
    .locals 3

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final q([I)V
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s([I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r([I)V

    :goto_0
    return-void
.end method

.method public final r([I)V
    .locals 8

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->x:[I

    mul-int v4, v2, v1

    add-int/2addr v4, v0

    const/4 v5, 0x0

    aget v6, p1, v5

    aput v6, v3, v4

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->y:[I

    mul-int v4, v2, v1

    add-int/2addr v4, v0

    const/4 v6, 0x1

    aget v7, p1, v6

    aput v7, v3, v4

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->z:[I

    mul-int v4, v2, v1

    add-int/2addr v4, v0

    const/4 v7, 0x2

    aget p1, p1, v7

    aput p1, v3, v4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    if-lt v0, v1, :cond_0

    add-int/2addr v2, v6

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iput v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    :cond_0
    return-void
.end method

.method public final s([I)V
    .locals 7

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->r:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->s:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->w:[I

    mul-int v4, v2, v1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->v:I

    const/4 v6, 0x0

    aget p1, p1, v6

    and-int/2addr p1, v5

    aput p1, v3, v4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->u:I

    iput v6, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->t:I

    :cond_0
    return-void
.end method

.method public final t()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ERROR: Define number format throw new IOException [Ld!=4]"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u()Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->a:Ljavax/imageio/stream/ImageInputStream;

    invoke-static {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b(Ljava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    move-result-object p0

    return-object p0
.end method
