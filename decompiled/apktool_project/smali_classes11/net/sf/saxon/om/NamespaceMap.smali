.class public Lnet/sf/saxon/om/NamespaceMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceBindingSet;
.implements Lnet/sf/saxon/om/NamespaceResolver;


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:Lnet/sf/saxon/om/NamespaceMap;


# instance fields
.field protected prefixes:[Ljava/lang/String;

.field protected uris:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/sf/saxon/om/NamespaceMap;->e:[Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {v0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/om/NamespaceMap;->f:Lnet/sf/saxon/om/NamespaceMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnet/sf/saxon/om/NamespaceMap;->e:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/NamespaceBinding;

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->b([Lnet/sf/saxon/om/NamespaceBinding;)V

    .line 7
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    .line 8
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_0
    array-length v2, p1

    const-string v3, "xml"

    if-ge v0, v2, :cond_3

    .line 10
    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 11
    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 12
    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    if-eqz v2, :cond_1

    .line 13
    iget-object v1, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binds xml prefix to the wrong namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binds xml namespace to the wrong prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p0, v3}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    :cond_4
    return-void
.end method

.method public static emptyMap()Lnet/sf/saxon/om/NamespaceMap;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/NamespaceMap;->f:Lnet/sf/saxon/om/NamespaceMap;

    return-object v0
.end method

.method public static fromNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 5

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v4, v2, v3}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {p0, v1}, Lnet/sf/saxon/om/NamespaceMap;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {v0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lnet/sf/saxon/om/NamespaceMap;->f:Lnet/sf/saxon/om/NamespaceMap;

    return-object p0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    if-eqz p0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid URI for xml prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid prefix for XML namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAll(Lnet/sf/saxon/om/NamespaceBindingSet;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->putAll(Lnet/sf/saxon/om/NamespaceMap;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public allowsNamespaceUndeclarations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public applyDifferences(Lnet/sf/saxon/om/NamespaceDeltaMap;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 9

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object v1, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object p1, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_6

    array-length v7, v1

    if-ge v6, v7, :cond_6

    aget-object v7, v0, v5

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    aget-object v7, v0, v5

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p0, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-lez v7, :cond_3

    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v6

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    aget-object v7, v1, v6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v6

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    array-length v7, v0

    if-ge v5, v7, :cond_7

    aget-object v7, v0, v5

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p0, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    array-length p0, v1

    if-ge v6, p0, :cond_9

    aget-object p0, p1, v6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    aget-object p0, v1, v6

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, p1, v6

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    new-instance p0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {p0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-object p0
.end method

.method public final b([Lnet/sf/saxon/om/NamespaceBinding;)V
    .locals 0

    new-instance p0, Lcom/sunia/HTREnginev2/nsj;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/nsj;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/om/NamespaceMap;

    iget-object v1, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object p1, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDefaultNamespace()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getDifferences(Lnet/sf/saxon/om/NamespaceMap;Z)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v4, v3

    const-string v5, ""

    if-ge v1, v4, :cond_4

    iget-object v4, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v6, v4

    if-ge v2, v6, :cond_4

    aget-object v3, v3, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v3, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    iget-object v3, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    new-instance v3, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v4, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    array-length v3, v3

    if-ge v1, v3, :cond_5

    new-instance v3, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    new-instance v3, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v4, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getNamespaceBindings()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/om/NamespaceBinding;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrefixArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURIsAsArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "xml"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/NamespaceMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/NamespaceMap$a;-><init>(Lnet/sf/saxon/om/NamespaceMap;)V

    return-object v0
.end method

.method public makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    new-instance p0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {p0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v3, p2

    if-le v3, v2, :cond_3

    array-length p2, p2

    sub-int/2addr p2, v2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v5, p2

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-static {p2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length p2, p2

    sub-int/2addr p2, v2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    invoke-static {v4, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object p2, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-static {p0, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    aput-object p2, p0, v0

    return-object p1

    :cond_5
    neg-int v0, v0

    sub-int/2addr v0, v2

    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v5, v2

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v4, v0

    aput-object p2, v2, v0

    iget-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    add-int/lit8 p2, v0, 0x1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    iput-object v4, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-object p0
.end method

.method public putAll(Lnet/sf/saxon/om/NamespaceMap;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 9

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    iget-object v1, p1, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iget-object p1, p1, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :cond_3
    aget-object v7, v0, v5

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_4

    aget-object v7, v0, v5

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p0, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    array-length v7, v0

    if-lt v5, v7, :cond_3

    goto :goto_0

    :cond_4
    if-lez v7, :cond_5

    aget-object v7, v1, v6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v6

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    if-lt v6, v7, :cond_3

    goto :goto_0

    :cond_5
    aget-object v7, v1, v6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v6

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    if-ge v5, v7, :cond_6

    array-length v7, v1

    if-lt v6, v7, :cond_3

    :cond_6
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_7

    aget-object v7, v0, v5

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, p0, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    array-length p0, v1

    if-ge v6, p0, :cond_8

    aget-object p0, v1, v6

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object p0, p1, v6

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    new-instance p0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-direct {p0}, Lnet/sf/saxon/om/NamespaceMap;-><init>()V

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    array-length v4, v0

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->makeNamespaceMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    iput-object v1, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/om/NamespaceMap;->uris:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceMap;->prefixes:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
