.class public Lnet/sf/saxon/om/SingletonAttributeMap;
.super Lnet/sf/saxon/om/AttributeInfo;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/AttributeMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public static of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;
    .locals 7

    instance-of v0, p0, Lnet/sf/saxon/om/SingletonAttributeMap;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/SingletonAttributeMap;

    return-object p0

    :cond_0
    new-instance v6, Lnet/sf/saxon/om/SingletonAttributeMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/om/SingletonAttributeMap;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-object v6
.end method


# virtual methods
.method public apply(Ljava/util/function/Function;)Lnet/sf/saxon/om/AttributeMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;)",
            "Lnet/sf/saxon/om/AttributeMap;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/SingletonAttributeMap;->of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;

    move-result-object p0

    return-object p0
.end method

.method public asList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public get(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getByFingerprint(ILnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/AttributeInfo;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
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

    new-instance v0, Lnet/sf/saxon/tree/jiter/MonoIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/MonoIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/SingletonAttributeMap;->of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lnet/sf/saxon/om/SmallAttributeMap;

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/SmallAttributeMap;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public remove(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/om/AttributeMap;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
