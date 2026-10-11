.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$g;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final c:[B

.field public final d:[B

.field public final e:I

.field public final f:[B

.field public final g:[B

.field public final h:[B

.field public i:[B

.field public j:[B

.field public final k:[B

.field public final l:[B

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->e()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 2
    invoke-direct/range {v0 .. v14}, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    .line 4
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;-><init>()V

    if-eqz p1, :cond_c

    .line 5
    iput v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->e:I

    move-object/from16 v4, p13

    .line 6
    iput-object v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->c:[B

    move-object/from16 v4, p14

    .line 7
    iput-object v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->d:[B

    .line 8
    invoke-static/range {p5 .. p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 9
    invoke-static/range {p4 .. p4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->p([BLjava/security/cert/Certificate;)[B

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    move-object v12, v3

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v15, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    move-object v12, v2

    .line 13
    :goto_0
    new-instance v16, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v7, v14

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v3 .. v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz p10, :cond_2

    .line 14
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    .line 15
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    .line 19
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v2

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    .line 23
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v2, v15, [B

    .line 26
    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    .line 27
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v2

    :goto_1
    and-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v3

    iput-object v3, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->l:[B

    .line 31
    invoke-static {v3, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->d([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    goto :goto_2

    .line 32
    :cond_7
    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    .line 33
    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->l:[B

    goto :goto_2

    .line 34
    :cond_8
    iget-boolean v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    if-nez v2, :cond_b

    .line 35
    iput-object v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    .line 36
    iput-object v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->l:[B

    .line 37
    :goto_2
    invoke-static/range {p9 .. p9}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->w(I)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v13, :cond_9

    .line 38
    invoke-virtual {v13, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v2, v4

    :goto_3
    iput-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->g:[B

    if-eqz v14, :cond_a

    .line 39
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    :cond_a
    iput-object v4, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->f:[B

    move-object/from16 v2, p6

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->h:[B

    return-void

    .line 41
    :cond_b
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "Cannot sign/seal: no exported session key"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "Random generator not available"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e()V
    .locals 15

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->f:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->g:[B

    if-eqz v4, :cond_1

    array-length v4, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->h:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    if-eqz v6, :cond_2

    array-length v6, v6

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-boolean v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    add-int/lit8 v7, v7, 0x48

    add-int v8, v7, v1

    add-int v9, v8, v0

    add-int v10, v9, v2

    add-int v11, v10, v5

    add-int v12, v11, v4

    add-int v13, v12, v6

    const/4 v14, 0x3

    invoke-virtual {p0, v13, v14}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->j(II)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    invoke-virtual {p0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->e:I

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->d(I)V

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    add-int/lit8 v1, v0, 0x10

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    :goto_4
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->i:[B

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->j:[B

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->f:[B

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->h:[B

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->g:[B

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    :cond_5
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->m:Z

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->l:[B

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;-><init>([B)V

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->c:[B

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b([B)V

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->d:[B

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b([B)V

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b([B)V

    invoke-virtual {v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a()[B

    move-result-object v1

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    array-length v2, v1

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-void
.end method

.method public final p([BLjava/security/cert/Certificate;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    array-length p0, p1

    add-int/lit8 p0, p0, 0x8

    const/16 v0, 0x14

    add-int/2addr p0, v0

    new-array p0, p0, [B

    array-length v1, p1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x6

    invoke-static {p0, p1, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->i0([BII)V

    add-int/lit8 p1, v1, 0x2

    invoke-static {p0, v2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->i0([BII)V

    add-int/lit8 p1, v1, 0x4

    const/4 v2, 0x2

    invoke-static {p0, v2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->h0([BII)V

    add-int/lit8 p1, v1, 0x8

    const/16 v2, 0xa

    invoke-static {p0, v2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->i0([BII)V

    add-int/lit8 p1, v1, 0xa

    const/16 v2, 0x10

    invoke-static {p0, v2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->i0([BII)V

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    const-string p2, "SHA-256"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->x()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, v0

    array-length v4, p1

    add-int/2addr p2, v4

    new-array p2, p2, [B

    const/16 v4, 0x35

    invoke-static {p2, v4, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->h0([BII)V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->x()[B

    move-result-object v4

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->x()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v3, p2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->x()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v0

    array-length v0, p1

    invoke-static {p1, v3, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->M()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0xc

    invoke-static {p1, v3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public q()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->k:[B

    return-object p0
.end method

.method public r()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$g;->l:[B

    return-object p0
.end method
