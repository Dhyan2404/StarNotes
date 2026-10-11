.class public final Lorg/apache/xerces/util/SynchronizedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;
.source "SourceFile"


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public containsSymbol([CII)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
