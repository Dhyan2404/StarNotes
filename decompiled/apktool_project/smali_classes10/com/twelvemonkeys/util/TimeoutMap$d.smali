.class public abstract Lcom/twelvemonkeys/util/TimeoutMap$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/TimeoutMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
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
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;>;"
        }
    .end annotation
.end field

.field public f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public g:J

.field public final synthetic h:Lcom/twelvemonkeys/util/TimeoutMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->h:Lcom/twelvemonkeys/util/TimeoutMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->e:Ljava/util/Iterator;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->g:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/TimeoutMap;Lcom/twelvemonkeys/util/TimeoutMap$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/TimeoutMap$d;-><init>(Lcom/twelvemonkeys/util/TimeoutMap;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/util/TimeoutMap$d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;

    iget-wide v2, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/twelvemonkeys/util/TimeoutMap$TimedEntry;->isExpiredBy(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->e:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->h:Lcom/twelvemonkeys/util/TimeoutMap;

    invoke-virtual {v2, v0}, Lcom/twelvemonkeys/util/TimeoutMap;->processRemoved(Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->f:Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/TimeoutMap$d;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
