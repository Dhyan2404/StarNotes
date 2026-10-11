.class public final Lorg/apache/commons/collections4/map/StaticBucketMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/StaticBucketMap$j;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$f;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$d;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$e;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$i;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$c;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$b;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$g;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final g:I = 0xff


# instance fields
.field public final e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/map/StaticBucketMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    const/16 v0, 0x11

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5
    :cond_0
    new-array v0, p1, [Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    .line 6
    new-array v0, p1, [Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    new-instance v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$g;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$h;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$g;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/collections4/map/StaticBucketMap;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->e(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->d(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    iput v0, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :cond_2
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object v3, v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    goto :goto_1

    :cond_1
    :goto_2
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :cond_2
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return v0
.end method

.method public final d(Ljava/lang/Runnable;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v0, v0, p2

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->d(Ljava/lang/Runnable;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0xb

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length p0, p0

    rem-int/2addr p1, p0

    if-gez p1, :cond_1

    mul-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$d;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    monitor-exit v1

    return-object p0

    :cond_2
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v0

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v3, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    goto :goto_1

    :cond_0
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$f;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    iput-object p1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aput-object v2, p1, v0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object p0, p0, v0

    iget p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    monitor-exit v1

    return-object v3

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    if-eq v4, p1, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    monitor-exit v1

    return-object p0

    :cond_3
    new-instance v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    iput-object p1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    iput-object p2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    iput-object v2, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object p0, p0, v0

    iget p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->e:Ljava/lang/Object;

    if-eq v5, p1, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    iget-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    iget-object v3, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    aput-object v3, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    iput-object p1, v4, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->g:Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    :goto_2
    iget-object p0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object p0, p0, v0

    iget p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    iget-object p0, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->f:Ljava/lang/Object;

    monitor-exit v1

    return-object p0

    :cond_3
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->e:[Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v0

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->f:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v3, v3, v0

    iget v3, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:I

    add-int/2addr v1, v3

    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$j;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;Lorg/apache/commons/collections4/map/StaticBucketMap$a;)V

    return-object v0
.end method
