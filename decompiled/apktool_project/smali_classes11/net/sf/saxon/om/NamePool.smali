.class public final Lnet/sf/saxon/om/NamePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/NamePool$NamePoolLimitException;
    }
.end annotation


# static fields
.field public static final FP_MASK:I = 0xfffff

.field public static final USER_DEFINED_MASK:I = 0xffc00

.field public static final e:I = 0xfffff


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnet/sf/saxon/om/AtomicCounter;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/om/NamePool;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/om/NamePool;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lnet/sf/saxon/om/AtomicCounter;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/AtomicCounter;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/om/NamePool;->c:Lnet/sf/saxon/om/AtomicCounter;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/om/NamePool;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrefixed(I)Z
    .locals 1

    const/high16 v0, 0x3ff00000    # 1.875f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public allocateClarkName(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing local part in Clark name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No closing \'}\' in Clark name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/lib/NamespaceConstant;->isReserved(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "http://saxon.sf.net/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    invoke-direct {v0, v2, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/om/NamePool;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz p1, :cond_2

    monitor-exit p0

    return p1

    :cond_2
    :try_start_2
    iget-object p2, p0, Lnet/sf/saxon/om/NamePool;->c:Lnet/sf/saxon/om/AtomicCounter;

    invoke-virtual {p2}, Lnet/sf/saxon/om/AtomicCounter;->getAndIncrement()J

    move-result-wide v1

    const-wide/32 v3, 0xfffff

    cmp-long p2, v1, v3

    if-gtz p2, :cond_4

    long-to-int p2, v1

    iget-object v1, p0, Lnet/sf/saxon/om/NamePool;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lnet/sf/saxon/om/NamePool;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/om/NamePool;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p2

    :cond_3
    monitor-exit p0

    return p1

    :cond_4
    :try_start_3
    new-instance p1, Lnet/sf/saxon/om/NamePool$NamePoolLimitException;

    const-string p2, "Too many distinct names in NamePool"

    invoke-direct {p1, p2}, Lnet/sf/saxon/om/NamePool$NamePoolLimitException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClarkName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/lib/NamespaceConstant;->isReserved(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "http://saxon.sf.net/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lnet/sf/saxon/om/StandardNames;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/om/NamePool;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    invoke-direct {v0, v2, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    const v0, 0xfffff

    and-int/2addr p1, v0

    const v0, 0xffc00

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/StandardNames;->getURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;
    .locals 1

    const v0, 0xfffff

    and-int/2addr p1, v0

    const v0, 0xffc00

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/StandardNames;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/NamePool;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public suggestPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamePool;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public suggestPrefixForURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "xml"

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/om/NamePool;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
