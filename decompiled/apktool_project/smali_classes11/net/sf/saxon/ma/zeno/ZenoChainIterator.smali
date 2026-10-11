.class public Lnet/sf/saxon/ma/zeno/ZenoChainIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    iput-object p1, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    iget-object v1, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    iget-object v1, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->g:Ljava/util/ArrayList;

    iget p0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->g:Ljava/util/ArrayList;

    iget v1, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoChainIterator;->f:I

    :cond_0
    return-object v1
.end method
