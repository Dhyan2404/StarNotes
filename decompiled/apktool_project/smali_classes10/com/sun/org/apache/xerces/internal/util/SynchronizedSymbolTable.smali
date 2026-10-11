.class public final Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;
.super Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
.source "SourceFile"


# instance fields
.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    .line 6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsSymbol([CII)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->containsSymbol([CII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
