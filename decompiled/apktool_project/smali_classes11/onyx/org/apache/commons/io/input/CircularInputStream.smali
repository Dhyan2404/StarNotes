.class public Lonyx/org/apache/commons/io/input/CircularInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public e:J

.field public f:I

.field public final g:[B

.field public final h:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->f:I

    invoke-static {p1}, Lonyx/org/apache/commons/io/input/CircularInputStream;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->g:[B

    array-length p1, p1

    if-eqz p1, :cond_0

    iput-wide p2, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->h:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "repeatContent is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f([B)[B
    .locals 4

    const-string v0, "repeatContent"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeatContent contains the end-of-stream marker -1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public read()I
    .locals 4

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->e:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->e:J

    :cond_1
    iget v0, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->g:[B

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lonyx/org/apache/commons/io/input/CircularInputStream;->f:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
