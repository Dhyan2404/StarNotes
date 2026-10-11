.class public Lcom/twelvemonkeys/util/FilterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/util/FilterIterator$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected final filter:Lcom/twelvemonkeys/util/FilterIterator$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/FilterIterator$Filter<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/twelvemonkeys/util/FilterIterator$Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Lcom/twelvemonkeys/util/FilterIterator$Filter<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->f:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/twelvemonkeys/util/FilterIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/twelvemonkeys/util/FilterIterator;->filter:Lcom/twelvemonkeys/util/FilterIterator$Filter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filter == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iterator == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/twelvemonkeys/util/FilterIterator;->filter:Lcom/twelvemonkeys/util/FilterIterator$Filter;

    invoke-interface {v1, v0}, Lcom/twelvemonkeys/util/FilterIterator$Filter;->accept(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/FilterIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twelvemonkeys/util/FilterIterator;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Iteration has no more elements."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/FilterIterator;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/util/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iteration has no current element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
