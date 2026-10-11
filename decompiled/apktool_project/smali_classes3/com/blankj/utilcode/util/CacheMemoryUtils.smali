.class public final Lcom/blankj/utilcode/util/CacheMemoryUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CacheMemoryUtils$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x100

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/collection/LruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .locals 1

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .locals 4

    .line 3
    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    if-nez v1, :cond_1

    .line 4
    const-class v2, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/blankj/utilcode/util/CacheMemoryUtils;

    new-instance v3, Landroidx/collection/LruCache;

    invoke-direct {v3, p1}, Landroidx/collection/LruCache;-><init>(I)V

    invoke-direct {v1, p0, v3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;-><init>(Ljava/lang/String;Landroidx/collection/LruCache;)V

    .line 7
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;

    if-nez v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    iget-wide v1, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;->a:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 5
    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getCacheCount()I
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->size()I

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-gez p3, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    new-instance p3, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;

    invoke-direct {p3, v0, v1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;-><init>(JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->b:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
