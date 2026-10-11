.class public final Lcom/sunia/HTREnginev2/m8j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/m8j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/m8j;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/m8j;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->a()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->e(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->j(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->k(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/m8j;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {v3, v0, v1}, Lcom/sunia/HTREnginev2/m8j;->b(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->d()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/m8j$a;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/m8j$a;-><init>(Lcom/sunia/HTREnginev2/m8j;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/m8j;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->h(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->o(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/m8j;->p(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/m8j;->d()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/m8j;->q(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/m8j$c;->e:Lcom/sunia/HTREnginev2/m8j;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/m8j;->r([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
