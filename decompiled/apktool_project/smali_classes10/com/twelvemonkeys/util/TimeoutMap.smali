.class public Lcom/twelvemonkeys/util/TimeoutMap;
.super Lcom/twelvemonkeys/util/AbstractDecoratedMap;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/ExpiringMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;,
        Lcom/twelvemonkeys/util/TimeoutMap$b;,
        Lcom/twelvemonkeys/util/TimeoutMap$e;,
        Lcom/twelvemonkeys/util/TimeoutMap$c;,
        Lcom/twelvemonkeys/util/TimeoutMap$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twelvemonkeys/util/AbstractDecoratedMap<",
        "TK;TV;>;",
        "Lcom/twelvemonkeys/util/ExpiringMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected expiryTime:J

.field private volatile nextExpiryTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>()V

    const-wide/32 v0, 0xea60

    .line 2
    iput-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/twelvemonkeys/util/TimeoutMap;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;)V

    const-wide/32 v0, 0xea60

    .line 4
    iput-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;J)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 8
    iput-wide p3, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    return-void
.end method

.method private declared-synchronized removeExpiredEntriesSynced(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap;->nextExpiryTime:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap;->nextExpiryTime:J

    new-instance v0, Lcom/twelvemonkeys/util/TimeoutMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/TimeoutMap$b;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    invoke-virtual {v1}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->expires()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_0

    move-wide p1, v1

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap;->nextExpiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->init()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/twelvemonkeys/util/TimeoutMap<",
            "TK;TV;>.TimedEntry<TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/TimeoutMap;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    move-result-object p0

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/util/TimeoutMap;->processRemoved(Ljava/util/Map$Entry;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->size()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/TimeoutMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/TimeoutMap$b;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    return-object v0
.end method

.method public newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/TimeoutMap$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/TimeoutMap$c;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    return-object v0
.end method

.method public newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/util/TimeoutMap$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/util/TimeoutMap$e;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V

    return-object v0
.end method

.method public processRemoved(Ljava/util/Map$Entry;)V
    .locals 0

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/util/TimeoutMap;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    move-result-object p2

    iget-object v0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->recordAccess(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    iget p2, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public removeExpiredEntries()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/util/TimeoutMap;->nextExpiryTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntriesSynced(J)V

    :cond_0
    return-void
.end method

.method public setExpiryTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap;->expiryTime:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/twelvemonkeys/util/TimeoutMap;->nextExpiryTime:J

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    iget-object p0, p0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap;->removeExpiredEntries()V

    invoke-super {p0}, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
