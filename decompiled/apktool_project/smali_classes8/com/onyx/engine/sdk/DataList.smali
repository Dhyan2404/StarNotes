.class public abstract Lcom/onyx/engine/sdk/DataList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/DataList$StringList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DataList;->ensureList()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/onyx/engine/sdk/DataList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/engine/sdk/DataList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DataList;->ensureList()V

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/DataList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public ensureList()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DataList;->ensureList()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DataList;->total:I

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/DataList;->ensureList()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setList(Ljava/util/List;)Lcom/onyx/engine/sdk/DataList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/onyx/engine/sdk/DataList<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    return-object p0
.end method

.method public setTotal(I)Lcom/onyx/engine/sdk/DataList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/onyx/engine/sdk/DataList<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/onyx/engine/sdk/DataList;->total:I

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/DataList;->list:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method
