.class public Lnet/sf/saxon/pull/NamespaceContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field public e:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/pull/NamespaceContextImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/pull/NamespaceContextImpl;->b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    const/4 v0, 0x1

    invoke-interface {p0, p3, v0}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/2000/xmlns/"

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/pull/NamespaceContextImpl;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/NamespaceContextImpl;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/msj;

    invoke-direct {v2, p0, p1, v0}, Lcom/sunia/HTREnginev2/msj;-><init>(Lnet/sf/saxon/pull/NamespaceContextImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/NamespaceContextImpl;->e:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
