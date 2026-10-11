.class public Lnet/sf/saxon/event/NamespaceReducer;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# instance fields
.field public e:[Lnet/sf/saxon/om/NamespaceBinding;

.field public f:I

.field public g:[I

.field public h:I

.field public i:[Z

.field public j:[Lnet/sf/saxon/om/NamespaceBinding;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/16 p1, 0x32

    new-array v0, p1, [Lnet/sf/saxon/om/NamespaceBinding;

    iput-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    new-array v1, p1, [I

    iput-object v1, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    iput v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/om/NamespaceBinding;)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/NamespaceBinding;

    iput-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    iget v1, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final d(Lnet/sf/saxon/om/NamespaceBinding;)Z
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->isXmlNamespace()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lnet/sf/saxon/om/NamespaceBinding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->isDefaultUndeclaration()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    iget-object v2, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to output end tag with no matching start tag"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    const-string p2, "xml"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_1
    iget p2, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public isDisinheritingNamespaces()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string p0, "xml"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    const/high16 p1, 0x10000

    invoke-static {p6, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    iget p3, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/NamespaceBinding;

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    goto :goto_3

    :cond_0
    iget p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    if-lez p1, :cond_4

    iget-object p3, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    add-int/lit8 p1, p1, -0x1

    aget-boolean p1, p3, p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    iget p3, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iget p3, p0, Lnet/sf/saxon/event/NamespaceReducer;->f:I

    iget p4, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-ltz p4, :cond_3

    iget-object p5, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    aget-boolean p5, p5, p4

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    move p5, p2

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    aget v0, v0, p4

    if-ge p5, v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/event/NamespaceReducer;->e:[Lnet/sf/saxon/om/NamespaceBinding;

    add-int/lit8 p3, p3, -0x1

    aget-object v0, v0, p3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    sget-object p3, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/om/NamespaceBinding;

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->j:[Lnet/sf/saxon/om/NamespaceBinding;

    :goto_3
    iget-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    iget p3, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    aput p2, p1, p3

    iget-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    const/16 p2, 0x80

    invoke-static {p6, p2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p2

    aput-boolean p2, p1, p3

    iget p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    iget-object p2, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    array-length p3, p2

    if-lt p1, p3, :cond_5

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->g:[I

    iget-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    iget p2, p0, Lnet/sf/saxon/event/NamespaceReducer;->h:I

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/NamespaceReducer;->i:[Z

    :cond_5
    return-void
.end method
