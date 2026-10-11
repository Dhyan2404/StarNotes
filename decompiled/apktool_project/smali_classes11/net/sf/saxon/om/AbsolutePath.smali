.class public Lnet/sf/saxon/om/AbsolutePath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/AbsolutePath$PathElement;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AbsolutePath$PathElement;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/om/AbsolutePath$PathElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    return-void
.end method

.method public static pathToNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AbsolutePath;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    new-instance v1, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lnet/sf/saxon/om/AbsolutePath$PathElement;-><init>(ILnet/sf/saxon/om/NodeName;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/om/AbsolutePath;

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/AbsolutePath;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public appendAttributeName(Lnet/sf/saxon/om/NodeName;)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->getNodeKind()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    invoke-direct {v0, v1, p1, v2}, Lnet/sf/saxon/om/AbsolutePath$PathElement;-><init>(ILnet/sf/saxon/om/NodeName;I)V

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/AbsolutePath;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPathUsingAbbreviatedUris()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->addToString(Ljava/lang/StringBuilder;C)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathUsingPrefixes()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x70

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->addToString(Ljava/lang/StringBuilder;C)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathUsingUris()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x75

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/om/AbsolutePath$PathElement;->addToString(Ljava/lang/StringBuilder;C)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/AbsolutePath;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/AbsolutePath;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getPathUsingUris()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
