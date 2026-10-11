.class public Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;
.implements Ljavax/swing/ListModel;


# instance fields
.field private cache:Ljava/util/TreeSet;

.field private listeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->listeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->cache:Ljava/util/TreeSet;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->attach(Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->update(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListDataListener(Ljavax/swing/event/ListDataListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getElementAt(I)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->cache:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->cache:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListDataListener(Ljavax/swing/event/ListDataListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifiers()[Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->cache:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->cache:Ljava/util/TreeSet;

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_1

    new-instance v3, Ljavax/swing/event/ListDataEvent;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, p0, v2, v2, v4}, Ljavax/swing/event/ListDataEvent;-><init>(Ljava/lang/Object;III)V

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/swing/event/ListDataListener;

    move-object v5, v4

    check-cast v5, Ljavax/swing/event/ListDataListener;

    invoke-interface {v4, v3}, Ljavax/swing/event/ListDataListener;->contentsChanged(Ljavax/swing/event/ListDataEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
