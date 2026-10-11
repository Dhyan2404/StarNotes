.class public Lnet/sf/saxon/s9api/XdmMap$b;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/XdmMap;->asImmutableMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lnet/sf/saxon/s9api/XdmAtomicValue;",
        "Lnet/sf/saxon/s9api/XdmValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XdmMap;

.field public final synthetic f:Lnet/sf/saxon/s9api/XdmMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XdmMap;Lnet/sf/saxon/s9api/XdmMap;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmMap$b;->f:Lnet/sf/saxon/s9api/XdmMap;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmMap;->get(Lnet/sf/saxon/s9api/XdmAtomicValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Lnet/sf/saxon/s9api/XdmAtomicValue;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public c(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmMap;->containsKey(Lnet/sf/saxon/s9api/XdmAtomicValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmMap$b;->a(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p2, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/XdmMap$b;->b(Lnet/sf/saxon/s9api/XdmAtomicValue;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            "+",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XdmMap$b;->c(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->mapSize()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmMap$b;->e:Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
