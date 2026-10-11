.class public Lnet/sf/saxon/tree/tiny/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:D

.field public c:D

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->a:I

    const-wide v0, 0x40af400000000000L    # 4000.0

    .line 3
    iput-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 4
    iput-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 5
    iput-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    .line 6
    iput-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->a:I

    int-to-double v0, p1

    .line 9
    iput-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    int-to-double p1, p2

    .line 10
    iput-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    int-to-double p1, p3

    .line 11
    iput-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    int-to-double p1, p4

    .line 12
    iput-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    return-void
.end method


# virtual methods
.method public getAverageAttributes()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    return-wide v0
.end method

.method public getAverageCharacters()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    return-wide v0
.end method

.method public getAverageNamespaces()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    return-wide v0
.end method

.method public getAverageNodes()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized updateStatistics(IIII)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/Statistics;->a:I

    const v1, 0xf4240

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->a:I

    iget-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    int-to-double v4, v0

    mul-double/2addr v2, v4

    int-to-double v6, p1

    add-double/2addr v2, v6

    int-to-double v0, v1

    div-double/2addr v2, v0

    iput-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double p1, v2, v6

    if-gez p1, :cond_0

    iput-wide v6, p0, Lnet/sf/saxon/tree/tiny/Statistics;->b:D

    :cond_0
    iget-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    mul-double/2addr v2, v4

    int-to-double p1, p2

    add-double/2addr v2, p1

    div-double/2addr v2, v0

    iput-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    cmpg-double p1, v2, v6

    if-gez p1, :cond_1

    iput-wide v6, p0, Lnet/sf/saxon/tree/tiny/Statistics;->c:D

    :cond_1
    iget-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    mul-double/2addr p1, v4

    int-to-double v2, p3

    add-double/2addr p1, v2

    div-double/2addr p1, v0

    iput-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double p1, p1, v2

    if-gez p1, :cond_2

    iput-wide v2, p0, Lnet/sf/saxon/tree/tiny/Statistics;->d:D

    :cond_2
    iget-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    mul-double/2addr p1, v4

    int-to-double p3, p4

    add-double/2addr p1, p3

    div-double/2addr p1, v0

    iput-wide p1, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_3

    iput-wide p3, p0, Lnet/sf/saxon/tree/tiny/Statistics;->e:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
