.class public final Lnet/sf/saxon/expr/sort/DocumentOrderIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/sunia/HTREnginev2/kaf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kaf;-><init>(Lnet/sf/saxon/expr/sort/DocumentOrderIterator;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_1
    new-instance p1, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p1, v1}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method

.method public static synthetic f(Lnet/sf/saxon/expr/sort/DocumentOrderIterator;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->j(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic j(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->f:Ljava/util/ArrayList;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item in input for sorting is not a node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPTY0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0
.end method
