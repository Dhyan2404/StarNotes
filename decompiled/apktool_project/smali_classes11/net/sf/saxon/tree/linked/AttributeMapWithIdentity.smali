.class public Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AttributeMap;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/AttributeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->d(Lnet/sf/saxon/om/AttributeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/AttributeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e(Lnet/sf/saxon/om/AttributeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/om/AttributeInfo;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/om/AttributeInfo;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public asList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/lh;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lh;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final c(Lnet/sf/saxon/om/AttributeInfo;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    return p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 3

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    .line 4
    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    .line 2
    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getByFingerprint(ILnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1, p2}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/AttributeInfo;

    return-object p0
.end method

.method public iterateAttributes(Lnet/sf/saxon/tree/linked/ElementImpl;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    instance-of v2, v2, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-nez v2, :cond_0

    new-instance v2, Lnet/sf/saxon/tree/linked/AttributeImpl;

    invoke-direct {v2, p1, v1}, Lnet/sf/saxon/tree/linked/AttributeImpl;-><init>(Lnet/sf/saxon/tree/linked/ElementImpl;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/mh;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mh;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ltz p1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    new-instance v1, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-direct {v1, p0}, Lnet/sf/saxon/om/AttributeInfo$Deleted;-><init>(Lnet/sf/saxon/om/AttributeInfo;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public set(ILnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ltz p1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    new-instance p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public size()I
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/AttributeMapWithIdentity;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    instance-of v1, v1, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
