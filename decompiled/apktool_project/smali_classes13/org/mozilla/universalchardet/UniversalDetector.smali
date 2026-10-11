.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# static fields
.field public static final MINIMUM_THRESHOLD:F = 0.2f

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field public a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:B

.field public g:Ljava/lang/String;

.field public h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public i:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public j:Lorg/mozilla/universalchardet/CharsetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->j:Lorg/mozilla/universalchardet/CharsetListener;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 p1, 0x3

    new-array p1, p1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 6
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 7
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_7

    aget-byte v0, p0, p1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/2addr v3, v2

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, p0, p1

    and-int/2addr p1, v2

    aget-byte p0, p0, v1

    and-int/2addr p0, v2

    const/16 v1, 0xfe

    if-eqz v0, :cond_5

    const/16 v4, 0xef

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    if-nez p1, :cond_1

    if-nez p0, :cond_1

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    return-object p0

    :cond_1
    if-ne v3, v1, :cond_7

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    return-object p0

    :cond_2
    if-ne v3, v2, :cond_3

    if-nez p1, :cond_3

    if-nez p0, :cond_3

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    return-object p0

    :cond_3
    if-ne v3, v2, :cond_7

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    return-object p0

    :cond_4
    const/16 p0, 0xbb

    if-ne v3, p0, :cond_7

    const/16 p0, 0xbf

    if-ne p1, p0, :cond_7

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    return-object p0

    :cond_5
    if-nez v3, :cond_6

    if-ne p1, v1, :cond_6

    if-ne p0, v2, :cond_6

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    return-object p0

    :cond_6
    if-nez v3, :cond_7

    if-ne p1, v2, :cond_7

    if-ne p0, v1, :cond_7

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static detectCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static detectCharset(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 7
    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v0, v3, v2}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 11
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    return-object p0
.end method

.method public static detectCharset(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    :try_start_0
    invoke-static {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static detectCharsetFromBOM([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->a([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dataEnd()V
    .locals 5

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object p0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->j:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    move v1, v0

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->j:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    if-eqz v0, :cond_7

    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_US_ASCCI:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getListener()Lorg/mozilla/universalchardet/CharsetListener;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->j:Lorg/mozilla/universalchardet/CharsetListener;

    return-object p0
.end method

.method public handleData([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    return-void
.end method

.method public handleData([BII)V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    .line 4
    :cond_1
    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v1, 0x3

    if-le p3, v1, :cond_2

    .line 6
    invoke-static {p1, p2}, Lorg/mozilla/universalchardet/UniversalDetector;->a([BI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    return-void

    :cond_2
    add-int v1, p2, p3

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_e

    .line 9
    aget-byte v4, p1, v3

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_6

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_6

    .line 10
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v4, v5, :cond_d

    .line 11
    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 12
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 13
    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 14
    :cond_3
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v4, v2

    if-nez v5, :cond_4

    .line 15
    new-instance v5, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v5}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v5, v4, v2

    .line 16
    :cond_4
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v4, v0

    if-nez v5, :cond_5

    .line 17
    new-instance v5, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    invoke-direct {v5}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;-><init>()V

    aput-object v5, v4, v0

    .line 18
    :cond_5
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v5, 0x2

    aget-object v6, v4, v5

    if-nez v6, :cond_d

    .line 19
    new-instance v6, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    invoke-direct {v6}, Lorg/mozilla/universalchardet/prober/Latin1Prober;-><init>()V

    aput-object v6, v4, v5

    goto :goto_3

    .line 20
    :cond_6
    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v7, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const/16 v8, 0x7e

    if-ne v6, v7, :cond_8

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_7

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_8

    iget-byte v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    if-ne v6, v8, :cond_8

    .line 21
    :cond_7
    sget-object v6, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 22
    :cond_8
    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    if-eqz v6, :cond_c

    const/16 v6, 0x20

    if-lt v5, v6, :cond_9

    if-le v5, v8, :cond_b

    :cond_9
    const/16 v6, 0xa

    if-eq v5, v6, :cond_b

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    goto :goto_1

    :cond_a
    move v5, v2

    goto :goto_2

    :cond_b
    :goto_1
    move v5, v0

    .line 23
    :goto_2
    iput-boolean v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    .line 24
    :cond_c
    iput-byte v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 25
    :cond_e
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_10

    .line 26
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v1, :cond_f

    .line 27
    new-instance v1, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 28
    :cond_f
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object p1

    .line 29
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_12

    .line 30
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 31
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    goto :goto_5

    .line 32
    :cond_10
    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v3, :cond_12

    .line 33
    :goto_4
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v1

    if-ge v2, v3, :cond_12

    .line 34
    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v1

    .line 35
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v3, :cond_11

    .line 36
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 37
    iget-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    return-void

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    return-void
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    return p0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setListener(Lorg/mozilla/universalchardet/CharsetListener;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->j:Lorg/mozilla/universalchardet/CharsetListener;

    return-void
.end method
