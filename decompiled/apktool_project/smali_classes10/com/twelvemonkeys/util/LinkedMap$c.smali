.class public abstract Lcom/twelvemonkeys/util/LinkedMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/util/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
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
.field public e:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public g:I

.field public final synthetic h:Lcom/twelvemonkeys/util/LinkedMap;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v0, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->e:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    .line 4
    iget p1, p1, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    iput p1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/util/LinkedMap;Lcom/twelvemonkeys/util/LinkedMap$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/LinkedMap$c;-><init>(Lcom/twelvemonkeys/util/LinkedMap;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget v0, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    iget v1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->g:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->e:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget-object v1, v1, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v1, v0, Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;->next:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iput-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->e:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->e:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object p0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget-object p0, p0, Lcom/twelvemonkeys/util/LinkedMap;->head:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget v0, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    iget v1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget-object v1, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v1, v1, Lcom/twelvemonkeys/util/AbstractDecoratedMap$BasicEntry;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/util/LinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->f:Lcom/twelvemonkeys/util/LinkedMap$LinkedEntry;

    iget-object v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->h:Lcom/twelvemonkeys/util/LinkedMap;

    iget v0, v0, Lcom/twelvemonkeys/util/AbstractDecoratedMap;->modCount:I

    iput v0, p0, Lcom/twelvemonkeys/util/LinkedMap$c;->g:I

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
