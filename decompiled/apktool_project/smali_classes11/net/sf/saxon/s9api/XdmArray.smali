.class public Lnet/sf/saxon/s9api/XdmArray;
.super Lnet/sf/saxon/s9api/XdmFunctionItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->EMPTY_ARRAY:Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Lnet/sf/saxon/ma/arrays/ArrayItem;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmArray;->d(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Lnet/sf/saxon/ma/arrays/ArrayItem;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/arrays/ArrayItem;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmFunctionItem;-><init>(Lnet/sf/saxon/om/Function;)V

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmArray;->c([Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Lnet/sf/saxon/ma/arrays/ArrayItem;)V

    return-void
.end method

.method public static c([Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/ma/arrays/SimpleArrayItem;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/arrays/SimpleArrayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;)",
            "Lnet/sf/saxon/ma/arrays/SimpleArrayItem;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, v0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static makeArray([B)Lnet/sf/saxon/s9api/XdmArray;
    .locals 5

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 23
    new-instance v4, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static makeArray([I)Lnet/sf/saxon/s9api/XdmArray;
    .locals 5

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 15
    new-instance v4, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static makeArray([J)Lnet/sf/saxon/s9api/XdmArray;
    .locals 6

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 11
    new-instance v5, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-direct {v5, v3, v4}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static makeArray([Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Lnet/sf/saxon/s9api/XdmValue;->makeValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static makeArray([S)Lnet/sf/saxon/s9api/XdmArray;
    .locals 5

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p0, v2

    .line 19
    new-instance v4, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(S)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public static makeArray([Z)Lnet/sf/saxon/s9api/XdmArray;
    .locals 5

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, p0, v2

    .line 7
    new-instance v4, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-direct {v4, v3}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/XdmArray;

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmArray;-><init>(Ljava/lang/Iterable;)V

    return-object p0
.end method


# virtual methods
.method public addMember(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmArray;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayAppend;->append(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmArray;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public arrayLength()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    return p0
.end method

.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getLength()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public concat(Lnet/sf/saxon/s9api/XdmArray;)Lnet/sf/saxon/s9api/XdmArray;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->concat(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmArray;

    return-object p0
.end method

.method public get(I)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 0

    .line 3
    invoke-super {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public put(ILnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->put(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmArray;

    return-object p0
.end method
