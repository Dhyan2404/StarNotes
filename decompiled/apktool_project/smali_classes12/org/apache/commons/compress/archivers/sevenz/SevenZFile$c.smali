.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Ljava/util/BitSet;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a:I

    return p1
.end method

.method public static synthetic c(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    return p0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    return p1
.end method

.method public static synthetic e(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c:J

    return-wide v0
.end method

.method public static synthetic f(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c:J

    return-wide p1
.end method

.method public static synthetic g(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->d:J

    return-wide v0
.end method

.method public static synthetic h(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->d:J

    return-wide p1
.end method

.method public static synthetic i(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->g:Ljava/util/BitSet;

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->g:Ljava/util/BitSet;

    return-object p1
.end method

.method public static synthetic k(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->e:J

    return-wide v0
.end method

.method public static synthetic l(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->e:J

    return-wide p1
.end method

.method public static synthetic m(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->b:J

    return-wide v0
.end method

.method public static synthetic n(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->b:J

    return-wide p1
.end method

.method public static synthetic o(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h:I

    return p0
.end method

.method public static synthetic p(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h:I

    return p1
.end method

.method public static synthetic q(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i:I

    return p1
.end method


# virtual methods
.method public r(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->i:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "archive with entries but no folders"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    int-to-long v0, v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long p0, v2, v0

    if-ltz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "archive doesn\'t contain enough substreams for entries"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()J
    .locals 2

    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method public final t()J
    .locals 2

    const-wide/16 v0, 0x16

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Archive with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " folders. Estimated size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->v()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " kB."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public v()J
    .locals 9

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a:I

    int-to-long v1, v0

    const-wide/16 v3, 0x10

    mul-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    int-to-long v3, v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->w()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->b:J

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->t()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c:J

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->s()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->d:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->c:J

    sub-long/2addr v3, v5

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    int-to-long v7, v0

    add-long/2addr v3, v7

    const-wide/16 v7, 0x8

    mul-long/2addr v3, v7

    add-long/2addr v1, v3

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h:I

    int-to-long v3, v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->u()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->x()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public final w()J
    .locals 2

    const-wide/16 v0, 0x1e

    return-wide v0
.end method

.method public final x()J
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->f:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->a:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$c;->h:I

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method
