.class public Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/queue/CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public final synthetic h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    invoke-static {p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$100(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->g:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    iget-object p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result p0

    if-eq v0, p0, :cond_0

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

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->g:Z

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 7

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    iget-object v6, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v6}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$500(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v3

    iget-object v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v5}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    goto :goto_0

    :cond_3
    :goto_1
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->f:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$202(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0, v4}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$102(Lorg/apache/commons/collections4/queue/CircularFifoQueue;Z)Z

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->h:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$a;->e:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
