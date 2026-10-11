.class public abstract Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;
.super Lcom/sunia/HTREnginev2/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/c3<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/c3;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator contains no elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic hasNext()Z
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic nextIndex()I
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->nextIndex()I

    move-result p0

    return p0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previousIndex()I
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->previousIndex()I

    move-result p0

    return p0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/c3;->reset()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/c3;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Iterator contains no elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
