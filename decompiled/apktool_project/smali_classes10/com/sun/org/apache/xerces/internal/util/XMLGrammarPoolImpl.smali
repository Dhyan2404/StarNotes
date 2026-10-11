.class public Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    .line 8
    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 1

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->putGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->clear()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return-void
.end method

.method public containsGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->hashCode(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->equals(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->hashCode(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->equals(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;->getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->hashCode(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v4

    rem-int/2addr v3, v5

    aget-object v4, v4, v3

    :goto_0
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v5, v2, :cond_0

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->equals(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object p1, v4, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    monitor-exit v0

    return-void

    :cond_0
    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    aget-object v5, v5, v3

    invoke-direct {v4, v2, v1, p1, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;-><init>(ILcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    aput-object v4, p1, v3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->hashCode(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v3

    rem-int/2addr v2, v4

    aget-object v3, v3, v2

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    if-eqz v3, :cond_2

    iget v6, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-ne v6, v1, :cond_1

    iget-object v6, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v6, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->equals(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_0

    iget-object p1, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    iput-object p1, v5, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    iget-object v1, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    aput-object v1, p1, v2

    :goto_1
    iget-object p1, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v0

    return-object p1

    :cond_1
    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    aget-object v6, v6, v4

    :goto_1
    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    invoke-interface {v7}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v6, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    aput-object v8, v2, v5

    move v5, v7

    :cond_0
    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v5, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    invoke-static {v2, v3, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unlockPool()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method
