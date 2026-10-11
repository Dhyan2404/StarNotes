.class public final Lnet/sf/saxon/event/SequenceCollector;
.super Lnet/sf/saxon/event/SequenceWriter;
.source "SourceFile"


# instance fields
.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    const/16 v0, 0x32

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;I)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceWriter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    return-void
.end method

.method public static allocateSequenceOutputter(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/HostLanguage;)Lnet/sf/saxon/event/Outputter;
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    new-instance p1, Lnet/sf/saxon/event/SequenceCollector;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/event/SequenceCollector;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;I)V

    new-instance p0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method


# virtual methods
.method public getFirstItem()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    return-object p0
.end method

.method public getSequence()Lnet/sf/saxon/om/Sequence;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public reset()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    return-void
.end method

.method public write(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceCollector;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
