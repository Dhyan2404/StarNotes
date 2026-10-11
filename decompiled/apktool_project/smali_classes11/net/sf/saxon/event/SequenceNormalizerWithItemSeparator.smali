.class public Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;
.super Lnet/sf/saxon/event/SequenceNormalizer;
.source "SourceFile"


# instance fields
.field public final g:Lnet/sf/saxon/str/UnicodeString;

.field public h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceNormalizer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->h:Z

    iput-object p2, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->g:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->flatten(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SequenceNormalizer;->level:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->g:Lnet/sf/saxon/str/UnicodeString;

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-super {p0, v0, v2, v1}, Lnet/sf/saxon/event/SequenceNormalizer;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->h:Z

    :goto_0
    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceNormalizer;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/event/SequenceNormalizer;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceNormalizer;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->h:Z

    invoke-super {p0}, Lnet/sf/saxon/event/SequenceNormalizer;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/SequenceNormalizer;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    invoke-super {p0, p1}, Lnet/sf/saxon/event/SequenceNormalizer;->startDocument(I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;->c()V

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/SequenceNormalizer;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
