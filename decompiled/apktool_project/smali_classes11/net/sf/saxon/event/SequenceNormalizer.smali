.class public abstract Lnet/sf/saxon/event/SequenceNormalizer;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/Action;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field protected level:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    return-void
.end method


# virtual methods
.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->close()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->close()V

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->e:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/Action;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Action;->act()V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyReceiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    throw p1
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->endElement()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    throw v1
.end method

.method public onClose(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/Action;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->e:Ljava/util/List;

    return-void
.end method

.method public onClose(Lnet/sf/saxon/s9api/Action;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->e:Ljava/util/List;

    .line 4
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->open()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, v0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyReceiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    throw p1
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceReceiver;->previousAtomic:Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->f:Z

    throw p1
.end method
