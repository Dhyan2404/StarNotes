.class public final Ljavax/imageio/plugins/tiff/TIFFField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final k:J = 0xffffffffL

.field public static final l:[Ljava/lang/String;

.field public static final m:[Z


# instance fields
.field public e:Ljavax/imageio/plugins/tiff/TIFFTag;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;

.field public j:Ljavax/imageio/plugins/tiff/TIFFDirectory;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x0

    const-string v1, "Byte"

    const-string v2, "Ascii"

    const-string v3, "Short"

    const-string v4, "Long"

    const-string v5, "Rational"

    const-string v6, "SByte"

    const-string v7, "Undefined"

    const-string v8, "SShort"

    const-string v9, "SLong"

    const-string v10, "SRational"

    const-string v11, "Float"

    const-string v12, "Double"

    const-string v13, "IFDPointer"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/imageio/plugins/tiff/TIFFField;->l:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/imageio/plugins/tiff/TIFFField;->m:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V
    .locals 1

    .line 43
    invoke-static {p2, p3}, Ljavax/imageio/plugins/tiff/TIFFField;->createArrayForType(II)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz v1, :cond_1b

    const-string v5, "Unknown data type "

    const/4 v6, 0x1

    if-lt v2, v6, :cond_1a

    const/16 v7, 0xd

    if-gt v2, v7, :cond_1a

    .line 3
    invoke-virtual/range {p1 .. p2}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v8

    if-eqz v8, :cond_19

    if-ltz v3, :cond_18

    const/4 v8, 0x5

    if-eq v2, v8, :cond_0

    const/16 v8, 0xa

    if-ne v2, v8, :cond_1

    :cond_0
    if-lt v3, v6, :cond_17

    :cond_1
    if-ne v2, v7, :cond_3

    if-ne v3, v6, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type is TIFF_IFD_POINTER and count != 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-eqz v4, :cond_16

    const/4 v7, 0x2

    const-wide v8, 0xffffffffL

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_0
    instance-of v5, v4, [J

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, [J

    array-length v5, v5

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v12

    .line 7
    :goto_1
    move-object v5, v4

    check-cast v5, [J

    aget-wide v12, v5, v12

    cmp-long v5, v12, v10

    if-ltz v5, :cond_6

    cmp-long v5, v12, v8

    if-gtz v5, :cond_5

    goto/16 :goto_9

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too large value supplied for TIFF_IFD_POINTER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative value supplied for TIFF_IFD_POINTER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_1
    instance-of v5, v4, [D

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [D

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto/16 :goto_9

    .line 11
    :pswitch_2
    instance-of v5, v4, [F

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [F

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto/16 :goto_9

    .line 12
    :pswitch_3
    instance-of v5, v4, [[I

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, [[I

    array-length v5, v5

    if-ne v5, v3, :cond_7

    goto :goto_2

    :cond_7
    move v6, v12

    :goto_2
    if-eqz v6, :cond_14

    .line 13
    move-object v5, v4

    check-cast v5, [[I

    array-length v8, v5

    move v9, v12

    :goto_3
    if-ge v9, v8, :cond_9

    aget-object v10, v5, v9

    .line 14
    array-length v10, v10

    if-eq v10, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    move v12, v6

    goto/16 :goto_6

    .line 15
    :pswitch_4
    instance-of v5, v4, [I

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [I

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto/16 :goto_9

    .line 16
    :pswitch_5
    instance-of v5, v4, [S

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [S

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto/16 :goto_9

    .line 17
    :pswitch_6
    instance-of v5, v4, [[J

    if-eqz v5, :cond_a

    move-object v5, v4

    check-cast v5, [[J

    array-length v5, v5

    if-ne v5, v3, :cond_a

    move v5, v6

    goto :goto_4

    :cond_a
    move v5, v12

    :goto_4
    if-eqz v5, :cond_10

    .line 18
    move-object v13, v4

    check-cast v13, [[J

    array-length v14, v13

    move v15, v12

    :goto_5
    if-ge v15, v14, :cond_e

    aget-object v8, v13, v15

    .line 19
    array-length v9, v8

    if-eq v9, v7, :cond_b

    goto :goto_6

    .line 20
    :cond_b
    aget-wide v18, v8, v12

    cmp-long v9, v18, v10

    if-ltz v9, :cond_d

    aget-wide v8, v8, v6

    cmp-long v20, v8, v10

    if-ltz v20, :cond_d

    const-wide v16, 0xffffffffL

    cmp-long v18, v18, v16

    if-gtz v18, :cond_c

    cmp-long v8, v8, v16

    if-gtz v8, :cond_c

    add-int/lit8 v15, v15, 0x1

    const-wide v8, 0xffffffffL

    goto :goto_5

    .line 21
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too large value supplied for TIFF_RATIONAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative value supplied for TIFF_RATIONAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v12, v5

    :cond_f
    :goto_6
    move v6, v12

    goto :goto_9

    :cond_10
    move v6, v5

    goto :goto_9

    .line 23
    :pswitch_7
    instance-of v5, v4, [J

    if-eqz v5, :cond_11

    move-object v5, v4

    check-cast v5, [J

    array-length v5, v5

    if-ne v5, v3, :cond_11

    goto :goto_7

    :cond_11
    move v6, v12

    :goto_7
    if-eqz v6, :cond_14

    .line 24
    move-object v5, v4

    check-cast v5, [J

    array-length v7, v5

    :goto_8
    if-ge v12, v7, :cond_14

    aget-wide v8, v5, v12

    cmp-long v13, v8, v10

    if-ltz v13, :cond_13

    const-wide v13, 0xffffffffL

    cmp-long v8, v8, v13

    if-gtz v8, :cond_12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 25
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too large value supplied for TIFF_LONG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative value supplied for TIFF_LONG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :pswitch_8
    instance-of v5, v4, [C

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [C

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto :goto_9

    .line 28
    :pswitch_9
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5

    if-ne v5, v3, :cond_f

    goto :goto_9

    .line 29
    :pswitch_a
    instance-of v5, v4, [B

    if-eqz v5, :cond_f

    move-object v5, v4

    check-cast v5, [B

    array-length v5, v5

    if-ne v5, v3, :cond_f

    :cond_14
    :goto_9
    if-eqz v6, :cond_15

    .line 30
    iput-object v1, v0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    .line 31
    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result v1

    iput v1, v0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    .line 32
    iput v2, v0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    .line 33
    iput v3, v0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    .line 34
    iput-object v4, v0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    return-void

    .line 35
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal class or length for data array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type is TIFF_RATIONAL or TIFF_SRATIONAL and count < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal data type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag == null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFTag;IJLjavax/imageio/plugins/tiff/TIFFDirectory;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-lt p2, v0, :cond_5

    const/16 v1, 0xd

    if-gt p2, v1, :cond_5

    .line 64
    invoke-virtual {p1, p2}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is neither TIFFTag.TIFF_LONG nor TIFFTag.TIFF_IFD_POINTER"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_3

    if-eqz p5, :cond_2

    .line 66
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    .line 67
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result p1

    iput p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    .line 68
    iput p2, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    .line 69
    iput v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    new-array p1, v0, [J

    const/4 p2, 0x0

    aput-wide p3, p1, p2

    .line 70
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    .line 71
    iput-object p5, p0, Ljavax/imageio/plugins/tiff/TIFFField;->j:Ljavax/imageio/plugins/tiff/TIFFDirectory;

    return-void

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "dir == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " is non-positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal data type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown data type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V
    .locals 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3

    .line 45
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    .line 46
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result v0

    iput v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    const-wide/32 v1, 0x10000

    cmp-long v1, p2, v1

    const-string v2, "\""

    const-string v3, " for tag \""

    const-string v4, "Illegal data type "

    const/4 v5, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x3

    .line 48
    invoke-virtual {p1, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    iput v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    new-array p1, v0, [C

    long-to-int p2, p2

    int-to-char p2, p2

    aput-char p2, p1, v5

    .line 50
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getTypeName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x4

    .line 54
    invoke-virtual {p1, v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    iput v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    new-array p1, v0, [J

    aput-wide p2, p1, v5

    .line 56
    iput-object p1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    :goto_0
    return-void

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getTypeName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value > 0xffffffff!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tag == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/w3c/dom/Node;[I[I[Ljava/lang/Object;)V
    .locals 11

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getTypeByName(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move v6, v4

    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-lez v6, :cond_1

    invoke-static {v2, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->createArrayForType(II)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    move v1, v4

    :goto_1
    if-eqz p0, :cond_2

    const-string v5, "value"

    invoke-static {p0, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    const-string v8, "/"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    move-object v7, v0

    check-cast v7, [D

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aput-wide v8, v7, v1

    goto/16 :goto_2

    :pswitch_2
    move-object v7, v0

    check-cast v7, [F

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v7, v1

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v0

    check-cast v8, [[I

    new-array v7, v7, [I

    aput-object v7, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v4

    aget-object v7, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v7, v3

    goto :goto_2

    :pswitch_4
    move-object v7, v0

    check-cast v7, [I

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v7, v1

    goto :goto_2

    :pswitch_5
    move-object v7, v0

    check-cast v7, [S

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v7, v1

    goto :goto_2

    :pswitch_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v0

    check-cast v8, [[J

    new-array v7, v7, [J

    aput-object v7, v8, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v7, v4

    aget-object v7, v8, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v3

    goto :goto_2

    :pswitch_7
    move-object v7, v0

    check-cast v7, [J

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v1

    goto :goto_2

    :pswitch_8
    move-object v7, v0

    check-cast v7, [C

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v7, v1

    goto :goto_2

    :pswitch_9
    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    aput-object v5, v7, v1

    goto :goto_2

    :pswitch_a
    move-object v7, v0

    check-cast v7, [B

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    aput v2, p1, v4

    aput v6, p2, v4

    aput-object v0, p3, v4

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "typeName = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static createArrayForType(II)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    if-lt p1, v1, :cond_4

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type is TIFF_IFD_POINTER and count != 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown data type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-array p0, p1, [D

    return-object p0

    :pswitch_1
    new-array p0, p1, [F

    return-object p0

    :pswitch_2
    filled-new-array {p1, v0}, [I

    move-result-object p0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :pswitch_3
    new-array p0, p1, [I

    return-object p0

    :pswitch_4
    new-array p0, p1, [S

    return-object p0

    :pswitch_5
    filled-new-array {p1, v0}, [I

    move-result-object p0

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[J

    return-object p0

    :pswitch_6
    new-array p0, p1, [J

    return-object p0

    :pswitch_7
    new-array p0, p1, [C

    return-object p0

    :pswitch_8
    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :pswitch_9
    new-array p0, p1, [B

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type is TIFF_RATIONAL or TIFF_SRATIONAL and count < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static createFromMetadataNode(Ljavax/imageio/plugins/tiff/TIFFTagSet;Lorg/w3c/dom/Node;)Ljavax/imageio/plugins/tiff/TIFFField;
    .locals 7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIFFField"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "number"

    invoke-static {p1, v0}, Ljavax/imageio/plugins/tiff/TIFFField;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "TIFFUndefined"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "value"

    invoke-static {v2, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array v2, p1, [B

    :goto_1
    if-ge v4, p1, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, p1

    goto :goto_2

    :cond_2
    new-array v1, v5, [I

    new-array v2, v5, [I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1, v1, v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->b(Lorg/w3c/dom/Node;[I[I[Ljava/lang/Object;)V

    aget p1, v1, v4

    aget v1, v2, v4

    aget-object v2, v3, v4

    move v3, p1

    move v4, v1

    :goto_2
    move-object v1, v2

    goto :goto_4

    :cond_3
    if-eqz p0, :cond_4

    const/16 p1, 0xd

    move v3, p1

    :goto_3
    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v3}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result p1

    if-nez p1, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-nez p0, :cond_5

    new-instance p0, Ljavax/imageio/plugins/tiff/TIFFTag;

    const-string p1, "UnknownTag"

    shl-int v2, v5, v3

    invoke-direct {p0, p1, v0, v2}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;II)V

    :cond_5
    :try_start_0
    new-instance p1, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-direct {p1, p0, v3, v4, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "!name.equals(\"TIFFField\")"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "node == null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getTypeByName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_1

    sget-object v1, Ljavax/imageio/plugins/tiff/TIFFField;->l:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    sget-object v0, Ljavax/imageio/plugins/tiff/TIFFField;->l:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->clone()Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljavax/imageio/plugins/tiff/TIFFField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFField;

    .line 3
    iget v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    .line 5
    :pswitch_0
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [[I

    invoke-virtual {v1}, [[I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [[J

    invoke-virtual {v1}, [[J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    .line 15
    :goto_0
    iget-object v2, p0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    iput-object v2, v0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    .line 16
    iget v2, p0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    iput v2, v0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    .line 17
    iget v2, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    iput v2, v0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    .line 18
    iget v2, p0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    iput v2, v0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    .line 19
    iput-object v1, v0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    .line 20
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->j:Ljavax/imageio/plugins/tiff/TIFFDirectory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->clone()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    iput-object p0, v0, Ljavax/imageio/plugins/tiff/TIFFField;->j:Ljavax/imageio/plugins/tiff/TIFFDirectory;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getAsBytes()[B
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public getAsChars()[C
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    return-object p0
.end method

.method public getAsDouble(I)D
    .locals 4

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, p1

    return-wide p0

    :pswitch_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    aget p0, p0, p1

    float-to-double p0, p0

    return-wide p0

    :pswitch_2
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsSRational(I)[I

    move-result-object p0

    aget p1, p0, v2

    int-to-double v2, p1

    aget p0, p0, v1

    int-to-double p0, p0

    :goto_0
    div-double/2addr v2, p0

    return-wide v2

    :pswitch_3
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    int-to-double p0, p0

    return-wide p0

    :pswitch_4
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    aget-short p0, p0, p1

    int-to-double p0, p0

    return-wide p0

    :pswitch_5
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    int-to-double p0, p0

    return-wide p0

    :pswitch_6
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object p0

    aget-wide v2, p0, v2

    long-to-double v2, v2

    aget-wide p0, p0, v1

    long-to-double p0, p0

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    long-to-double p0, p0

    return-wide p0

    :pswitch_8
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-double p0, p0

    return-wide p0

    :pswitch_9
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :pswitch_a
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-double p0, p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getAsDoubles()[D
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    return-object p0
.end method

.method public getAsFloat(I)F
    .locals 4

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, p1

    double-to-float p0, p0

    return p0

    :pswitch_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    aget p0, p0, p1

    return p0

    :pswitch_2
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsSRational(I)[I

    move-result-object p0

    aget p1, p0, v2

    int-to-double v2, p1

    aget p0, p0, v1

    int-to-double p0, p0

    div-double/2addr v2, p0

    double-to-float p0, v2

    return p0

    :pswitch_3
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    int-to-float p0, p0

    return p0

    :pswitch_4
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    aget-short p0, p0, p1

    int-to-float p0, p0

    return p0

    :pswitch_5
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    int-to-float p0, p0

    return p0

    :pswitch_6
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object p0

    aget-wide v2, p0, v2

    long-to-double v2, v2

    aget-wide p0, p0, v1

    long-to-double p0, p0

    div-double/2addr v2, p0

    double-to-float p0, v2

    return p0

    :pswitch_7
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    long-to-float p0, p0

    return p0

    :pswitch_8
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-float p0, p0

    return p0

    :pswitch_9
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :pswitch_a
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getAsFloats()[F
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    return-object p0
.end method

.method public getAsInt(I)I
    .locals 4

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, p1

    double-to-int p0, p0

    return p0

    :pswitch_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    aget p0, p0, p1

    float-to-int p0, p0

    return p0

    :pswitch_2
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsSRational(I)[I

    move-result-object p0

    aget p1, p0, v2

    int-to-double v2, p1

    aget p0, p0, v1

    int-to-double p0, p0

    div-double/2addr v2, p0

    double-to-int p0, v2

    return p0

    :pswitch_3
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    return p0

    :pswitch_4
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    aget-short p0, p0, p1

    return p0

    :pswitch_5
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    return p0

    :pswitch_6
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object p0

    aget-wide v2, p0, v2

    long-to-double v2, v2

    aget-wide p0, p0, v1

    long-to-double p0, p0

    div-double/2addr v2, p0

    double-to-int p0, v2

    return p0

    :pswitch_7
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    long-to-int p0, p0

    return p0

    :pswitch_8
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    :pswitch_9
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :pswitch_a
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getAsInts()[I
    .locals 4

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    instance-of v0, p0, [I

    if-eqz v0, :cond_0

    check-cast p0, [I

    return-object p0

    :cond_0
    instance-of v0, p0, [C

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, [C

    array-length v0, p0

    new-array v0, v0, [I

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    check-cast p0, [S

    array-length v0, p0

    new-array v0, v0, [I

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-short v2, p0, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "Data not char[], short[], or int[]!"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAsLong(I)J
    .locals 4

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, p1

    double-to-long p0, p0

    return-wide p0

    :pswitch_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    aget p0, p0, p1

    float-to-long p0, p0

    return-wide p0

    :pswitch_2
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsSRational(I)[I

    move-result-object p0

    aget p1, p0, v2

    int-to-double v2, p1

    aget p0, p0, v1

    int-to-double p0, p0

    div-double/2addr v2, p0

    double-to-long p0, v2

    return-wide p0

    :pswitch_3
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    int-to-long p0, p0

    return-wide p0

    :pswitch_4
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    aget-short p0, p0, p1

    int-to-long p0, p0

    return-wide p0

    :pswitch_5
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    int-to-long p0, p0

    return-wide p0

    :pswitch_6
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object p0

    aget-wide v2, p0, v2

    long-to-double v2, v2

    aget-wide p0, p0, v1

    long-to-double p0, p0

    div-double/2addr v2, p0

    double-to-long p0, v2

    return-wide p0

    :pswitch_7
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    return-wide p0

    :pswitch_8
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :pswitch_9
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0

    :pswitch_a
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getAsLongs()[J
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    return-object p0
.end method

.method public getAsNativeNode()Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;-><init>(Ljavax/imageio/plugins/tiff/TIFFField;)V

    return-object v0
.end method

.method public getAsRational(I)[J
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [[J

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAsRationals()[[J
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [[J

    return-object p0
.end method

.method public getAsSRational(I)[I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [[I

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAsSRationals()[[I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [[I

    return-object p0
.end method

.method public getAsShorts()[S
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    return-object p0
.end method

.method public getAsString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->h:I

    return p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->j:Ljavax/imageio/plugins/tiff/TIFFDirectory;

    return-object p0
.end method

.method public getTag()Ljavax/imageio/plugins/tiff/TIFFTag;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->e:Ljavax/imageio/plugins/tiff/TIFFTag;

    return-object p0
.end method

.method public getTagNumber()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->f:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    return p0
.end method

.method public getValueAsString(I)Ljava/lang/String;
    .locals 11

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    const-string v1, "/1"

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [D

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [F

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsSRational(I)[I

    move-result-object p0

    aget p1, p0, v4

    if-eqz p1, :cond_0

    aget v0, p0, v3

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, p0, v3

    aget p0, p0, v4

    div-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_3
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [S

    aget-short p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object p0

    aget-wide v5, p0, v4

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    aget-wide v9, p0, v3

    rem-long/2addr v9, v5

    cmp-long p1, v9, v7

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v2, p0, v3

    aget-wide v4, p0, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v0, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_7
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [C

    aget-char p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_a
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->i:Ljava/lang/Object;

    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public hasDirectory()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIntegral()Z
    .locals 1

    sget-object v0, Ljavax/imageio/plugins/tiff/TIFFField;->m:[Z

    iget p0, p0, Ljavax/imageio/plugins/tiff/TIFFField;->g:I

    aget-boolean p0, v0, p0

    return p0
.end method
