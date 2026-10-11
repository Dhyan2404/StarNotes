.class public Lonyx/org/apache/commons/io/input/BOMInputStream;
.super Lonyx/org/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lonyx/org/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/ByteOrderMark;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lonyx/org/apache/commons/io/ByteOrderMark;

.field public g:I

.field public h:I

.field public i:[I

.field public final j:Z

.field public k:Z

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yl;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/input/BOMInputStream;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->g()[Lonyx/org/apache/commons/io/ByteOrderMark;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lonyx/org/apache/commons/io/ByteOrderMark;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;->g()[Lonyx/org/apache/commons/io/ByteOrderMark;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lonyx/org/apache/commons/io/ByteOrderMark;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;Z[Lonyx/org/apache/commons/io/ByteOrderMark;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-static {p3}, Lonyx/org/apache/commons/io/IOUtils;->length([Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iput-boolean p2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->j:Z

    .line 6
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    sget-object p2, Lonyx/org/apache/commons/io/input/BOMInputStream;->m:Ljava/util/Comparator;

    invoke-interface {p1, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 8
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->e:Ljava/util/List;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No BOMs specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;[Lonyx/org/apache/commons/io/ByteOrderMark;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, p2}, Lonyx/org/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lonyx/org/apache/commons/io/ByteOrderMark;)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/BOMInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/BOMInputStream;Lonyx/org/apache/commons/io/ByteOrderMark;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/BOMInputStream;->w(Lonyx/org/apache/commons/io/ByteOrderMark;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final H()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->getBOM()Lonyx/org/apache/commons/io/ByteOrderMark;

    iget v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->g:I

    iget v1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->g:I

    aget p0, v1, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getBOM()Lonyx/org/apache/commons/io/ByteOrderMark;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->h:I

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lonyx/org/apache/commons/io/ByteOrderMark;

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/ByteOrderMark;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v2, v1

    iget v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->h:I

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    aget v2, v2, v1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->j()Lonyx/org/apache/commons/io/ByteOrderMark;

    move-result-object v1

    iput-object v1, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->f:Lonyx/org/apache/commons/io/ByteOrderMark;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->j:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/ByteOrderMark;->length()I

    move-result v1

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->f:Lonyx/org/apache/commons/io/ByteOrderMark;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/ByteOrderMark;->length()I

    move-result v0

    iput v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->g:I

    goto :goto_2

    :cond_2
    iput v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->h:I

    :cond_3
    :goto_2
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->f:Lonyx/org/apache/commons/io/ByteOrderMark;

    return-object p0
.end method

.method public getBOMCharsetName()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->getBOM()Lonyx/org/apache/commons/io/ByteOrderMark;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->f:Lonyx/org/apache/commons/io/ByteOrderMark;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasBOM()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->getBOM()Lonyx/org/apache/commons/io/ByteOrderMark;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBOM(Lonyx/org/apache/commons/io/ByteOrderMark;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->getBOM()Lonyx/org/apache/commons/io/ByteOrderMark;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream not configured to detect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()Lonyx/org/apache/commons/io/ByteOrderMark;
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zl;-><init>(Lonyx/org/apache/commons/io/input/BOMInputStream;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/ByteOrderMark;

    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->g:I

    iput v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->l:I

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->k:Z

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->H()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->H()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, p2, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    .line 5
    aput-byte v3, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-gez p0, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, p0

    :goto_1
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->l:I

    iput v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->g:I

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/BOMInputStream;->H()I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    add-long/2addr p0, v1

    return-wide p0
.end method

.method public final w(Lonyx/org/apache/commons/io/ByteOrderMark;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lonyx/org/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lonyx/org/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v2

    iget-object v3, p0, Lonyx/org/apache/commons/io/input/BOMInputStream;->i:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
