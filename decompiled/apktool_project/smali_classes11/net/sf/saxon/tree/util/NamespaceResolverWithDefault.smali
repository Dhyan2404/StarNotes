.class public Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# instance fields
.field public final e:Lnet/sf/saxon/om/NamespaceResolver;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamespaceResolver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;->e:Lnet/sf/saxon/om/NamespaceResolver;

    iput-object p2, p0, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;->e:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/tree/util/NamespaceResolverWithDefault;->e:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
