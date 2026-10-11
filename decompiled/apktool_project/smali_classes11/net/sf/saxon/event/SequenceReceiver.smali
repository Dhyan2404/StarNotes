.class public abstract Lnet/sf/saxon/event/SequenceReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# instance fields
.field protected pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

.field protected previousAtomic:Z

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/event/SequenceReceiver;Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->b(Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic b(Lnet/sf/saxon/s9api/Location;ILnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3, p1, p2}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/high16 v1, 0x80000

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public abstract append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_d

    sget-object v0, Lnet/sf/saxon/event/SequenceReceiver$a;->a:[I

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    const/4 v5, 0x5

    if-eq v0, v5, :cond_7

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    instance-of v6, v0, Lnet/sf/saxon/tree/util/Orphan;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {v6}, Lnet/sf/saxon/tree/util/Orphan;->isDisableOutputEscaping()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1, p2, v1}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v2, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    goto/16 :goto_4

    :cond_0
    const/16 p1, 0x9

    if-ne v5, p1, :cond_2

    invoke-interface {p0, v2}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v0, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    goto/16 :goto_4

    :cond_2
    if-eq v5, v3, :cond_5

    const/16 p1, 0xd

    if-ne v5, p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0x80000

    invoke-static {p3, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v4, 0x6

    :cond_4
    invoke-interface {v0, p0, v4, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    iput-boolean v2, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    goto/16 :goto_4

    :cond_5
    :goto_1
    if-ne v5, v3, :cond_6

    const-string p0, "attribute"

    goto :goto_2

    :cond_6
    const-string p0, "namespace"

    :goto_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence normalization: Cannot process free-standing "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " node ("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "SENR0001"

    invoke-direct {p1, p0, p3, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_7
    instance-of p1, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz p1, :cond_8

    const-string p1, "map"

    goto :goto_3

    :cond_8
    const-string p1, "function item"

    :goto_3
    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getErrorCodeForDecomposingFunctionItems()Ljava/lang/String;

    move-result-object p0

    const-string p3, "SENR"

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using this output method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p3

    :cond_9
    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to an XDM node tree"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p3

    :cond_a
    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->flatten(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :cond_b
    iget-boolean p3, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    if-eqz p3, :cond_c

    sget-object p3, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {p0, p3, p2, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_c
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1, p2, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    :cond_d
    :goto_4
    return-void
.end method

.method public flatten(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zgm;

    invoke-direct {v1, p0, p2, p3}, Lcom/sunia/HTREnginev2/zgm;-><init>(Lnet/sf/saxon/event/SequenceReceiver;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {v0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCodeForDecomposingFunctionItems()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "XTDE0450"

    goto :goto_0

    :cond_0
    const-string p0, "XQTY0105"

    :goto_0
    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public final getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    return-object p0
.end method

.method public handlesAppend()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
