.class public Lorg/apache/commons/compress/utils/SkipShieldingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field public static final e:I = 0x2000

.field public static final f:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/SkipShieldingInputStream;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/utils/SkipShieldingInputStream;->f:[B

    const-wide/16 v1, 0x2000

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method
