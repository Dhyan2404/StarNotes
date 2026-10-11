.class public Lorg/mortbay/jetty/HttpURI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:[B = null

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x4

.field public static final s:I = 0x5

.field public static final t:I = 0x6

.field public static final u:I = 0x7

.field public static final v:I = 0x8

.field public static final w:I = 0x9

.field public static final x:I = 0xa


# instance fields
.field public a:Z

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Lorg/mortbay/util/Utf8StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/mortbay/jetty/HttpURI;->n:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->a:Z

    .line 3
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->n:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    .line 4
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->a:Z

    .line 12
    sget-object v1, Lorg/mortbay/jetty/HttpURI;->n:[B

    iput-object v1, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    .line 13
    new-instance v1, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    .line 14
    iput-object p1, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 16
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/jetty/HttpURI;->parse([BII)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->a:Z

    .line 7
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->n:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    .line 8
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    .line 9
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpURI;->a:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpURI;->a:Z

    .line 19
    sget-object v0, Lorg/mortbay/jetty/HttpURI;->n:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    .line 20
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpURI;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    iput-object v2, v0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int v2, v1, v3

    iput v2, v0, Lorg/mortbay/jetty/HttpURI;->l:I

    iput v1, v0, Lorg/mortbay/jetty/HttpURI;->d:I

    iput v1, v0, Lorg/mortbay/jetty/HttpURI;->e:I

    iput v1, v0, Lorg/mortbay/jetty/HttpURI;->f:I

    iput v1, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    iput v1, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    iput v2, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v2, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v2, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    const/4 v4, 0x0

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_20

    iget-object v7, v0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v8, v7, v5

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    add-int/lit8 v9, v5, 0x1

    const/4 v11, 0x6

    const/16 v14, 0x3b

    const/16 v10, 0x3f

    const/16 v16, 0x7

    const/16 v12, 0x23

    const/16 v13, 0x2f

    const/16 v15, 0x3a

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only \'*\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-ne v8, v12, :cond_1f

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    goto/16 :goto_b

    :pswitch_3
    if-eq v8, v12, :cond_1

    if-eq v8, v10, :cond_0

    goto/16 :goto_b

    :cond_0
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    :goto_1
    const/16 v4, 0x9

    goto/16 :goto_b

    :cond_1
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    goto/16 :goto_b

    :pswitch_4
    if-eq v8, v12, :cond_4

    if-eq v8, v14, :cond_3

    if-eq v8, v10, :cond_2

    goto/16 :goto_b

    :cond_2
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    goto :goto_1

    :cond_3
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    const/16 v4, 0x8

    goto/16 :goto_b

    :cond_4
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    goto/16 :goto_b

    :pswitch_5
    if-ne v8, v13, :cond_1f

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v4, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    iget v6, v0, Lorg/mortbay/jetty/HttpURI;->e:I

    if-gt v4, v6, :cond_5

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    :cond_5
    move v6, v5

    :cond_6
    :goto_2
    move v5, v9

    :goto_3
    move/from16 v4, v16

    goto :goto_0

    :pswitch_6
    if-eq v8, v13, :cond_8

    const/16 v5, 0x5d

    if-eq v8, v5, :cond_7

    goto/16 :goto_b

    :cond_7
    const/4 v4, 0x4

    goto/16 :goto_b

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No closing \']\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sget-object v5, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v0, v1, v3, v5}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_7
    if-eq v8, v13, :cond_c

    if-eq v8, v15, :cond_b

    const/16 v5, 0x40

    if-eq v8, v5, :cond_a

    const/16 v5, 0x5b

    if-eq v8, v5, :cond_9

    goto/16 :goto_b

    :cond_9
    const/4 v4, 0x5

    goto/16 :goto_b

    :cond_a
    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->f:I

    goto/16 :goto_b

    :cond_b
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    move v4, v11

    goto/16 :goto_b

    :cond_c
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    move v6, v5

    move/from16 v4, v16

    goto/16 :goto_b

    :pswitch_8
    if-le v3, v11, :cond_f

    const/16 v11, 0x74

    if-ne v8, v11, :cond_f

    add-int/lit8 v11, v1, 0x3

    aget-byte v14, v7, v11

    if-ne v14, v15, :cond_d

    add-int/lit8 v9, v1, 0x4

    :goto_4
    move v5, v11

    move v8, v15

    goto :goto_5

    :cond_d
    add-int/lit8 v11, v1, 0x4

    aget-byte v14, v7, v11

    if-ne v14, v15, :cond_e

    add-int/lit8 v9, v1, 0x5

    goto :goto_4

    :cond_e
    add-int/lit8 v11, v1, 0x5

    aget-byte v14, v7, v11

    if-ne v14, v15, :cond_f

    add-int/lit8 v9, v1, 0x6

    goto :goto_4

    :cond_f
    :goto_5
    if-eq v8, v12, :cond_14

    if-eq v8, v13, :cond_6

    if-eq v8, v10, :cond_13

    if-eq v8, v15, :cond_11

    const/16 v10, 0x3b

    if-eq v8, v10, :cond_10

    goto/16 :goto_b

    :cond_10
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v4, v9, 0x1

    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->e:I

    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    aget-byte v5, v7, v4

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    if-ne v5, v13, :cond_12

    move v5, v4

    move v6, v9

    goto/16 :goto_9

    :cond_12
    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->f:I

    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    move v5, v4

    move v6, v9

    goto/16 :goto_3

    :cond_13
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    goto :goto_7

    :cond_14
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    goto/16 :goto_b

    :pswitch_9
    iget-boolean v4, v0, Lorg/mortbay/jetty/HttpURI;->a:Z

    if-nez v4, :cond_15

    iget v4, v0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget v5, v0, Lorg/mortbay/jetty/HttpURI;->e:I

    if-eq v4, v5, :cond_16

    :cond_15
    if-ne v8, v13, :cond_16

    iput v9, v0, Lorg/mortbay/jetty/HttpURI;->f:I

    iget v4, v0, Lorg/mortbay/jetty/HttpURI;->l:I

    iput v4, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    iput v4, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    move v5, v9

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_16
    const/16 v4, 0x3b

    if-eq v8, v4, :cond_18

    if-eq v8, v10, :cond_18

    if-ne v8, v12, :cond_17

    goto :goto_6

    :cond_17
    iput v6, v0, Lorg/mortbay/jetty/HttpURI;->f:I

    iput v6, v0, Lorg/mortbay/jetty/HttpURI;->g:I

    goto/16 :goto_2

    :cond_18
    :goto_6
    add-int/lit8 v5, v9, -0x1

    goto/16 :goto_3

    :pswitch_a
    if-eq v8, v12, :cond_1e

    const/16 v4, 0x2a

    if-eq v8, v4, :cond_1d

    if-eq v8, v13, :cond_1c

    const/16 v4, 0x3b

    if-eq v8, v4, :cond_1b

    if-eq v8, v10, :cond_1a

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x2

    goto :goto_a

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sget-object v4, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    move v6, v5

    :goto_7
    move v5, v9

    const/16 v4, 0x9

    goto/16 :goto_0

    :cond_1b
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    move v6, v5

    :goto_8
    move v5, v9

    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_1c
    move v6, v5

    move v5, v9

    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1d
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->h:I

    const/16 v4, 0xa

    goto :goto_a

    :cond_1e
    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v5, v0, Lorg/mortbay/jetty/HttpURI;->k:I

    :goto_a
    move v6, v5

    :cond_1f
    :goto_b
    move v5, v9

    goto/16 :goto_0

    :cond_20
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->g:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->f:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->e:I

    iput v0, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    sget-object v0, Lorg/mortbay/jetty/HttpURI;->n:[B

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    const-string v0, ""

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    return-void
.end method

.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-static {v0, v2, v3, p1, p0}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V

    return-void
.end method

.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 5
    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    add-int/lit8 v1, v0, 0x1

    iget p0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, v1, p0, p1}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;)V

    :goto_1
    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->e:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    sub-int/2addr v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    if-ge v0, v5, :cond_4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v7, v6, v0

    const/16 v8, 0x25

    if-ne v7, v8, :cond_1

    add-int/lit8 v8, v0, 0x2

    if-ge v8, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x10

    const/4 v7, 0x2

    invoke-static {v6, v0, v7, v5}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v7, v0

    move v0, v8

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    new-array v2, v1, [B

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    iget v8, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    add-int/2addr v8, v5

    aget-byte v6, v6, v8

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aput-byte v7, v2, v4

    move v4, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {v0, v2, v3, v4}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->m:Lorg/mortbay/util/Utf8StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->f:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->g:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->g:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0xa

    invoke-static {p0, v2, v1, v0}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result p0

    return p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-virtual {p0, v2, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v2, v1, p1}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->e:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int v2, v1, v0

    const/4 v3, 0x5

    const/16 v4, 0x70

    const/16 v5, 0x68

    const/16 v6, 0x74

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v7, v3, v0

    if-ne v7, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v3, v7

    if-ne v7, v6, :cond_1

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, v3, v7

    if-ne v7, v6, :cond_1

    add-int/lit8 v7, v0, 0x3

    aget-byte v3, v3, v7

    if-ne v3, v4, :cond_1

    const-string p0, "http"

    return-object p0

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v3, v2, v0

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    const-string p0, "https"

    return-object p0

    :cond_2
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasQuery()Z
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    iget p0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/mortbay/jetty/HttpURI;->a([BII)V

    .line 3
    iput-object p1, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    return-void
.end method

.method public parse([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpURI;->a([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpURI;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget p0, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    sub-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, p0}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    return-void
.end method
