.class public abstract Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "k"
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field public f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public i:I

.field public final synthetic j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public b()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;)V

    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->g:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->j:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->h:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
