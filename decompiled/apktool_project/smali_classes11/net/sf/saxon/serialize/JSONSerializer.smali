.class public Lnet/sf/saxon/serialize/JSONSerializer;
.super Lnet/sf/saxon/event/SequenceWriter;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/ReceiverWithOutputProperties;


# instance fields
.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public final m:Lnet/sf/saxon/serialize/JSONEmitter;

.field public n:Ljava/util/Properties;

.field public o:Lnet/sf/saxon/serialize/charcode/CharacterSet;

.field public p:Z

.field public q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/JSONEmitter;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceWriter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->h:Z

    const-string v0, "xml"

    iput-object v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->i:Ljava/lang/String;

    iput p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    iput p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->k:I

    const/16 v0, 0x50

    iput v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->l:I

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->r:Z

    invoke-virtual {p0, p3}, Lnet/sf/saxon/serialize/JSONSerializer;->setOutputProperties(Ljava/util/Properties;)V

    iput-object p2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/JSONEmitter;->close()V

    invoke-super {p0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    return-void
.end method

.method public final d(Lnet/sf/saxon/ma/arrays/ArrayItem;)Z
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    instance-of v4, v3, Lnet/sf/saxon/value/AtomicValue;

    if-nez v4, :cond_2

    return v0

    :cond_2
    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p0, Lnet/sf/saxon/serialize/JSONSerializer;->l:I

    if-le v1, v3, :cond_1

    return v0

    :cond_3
    return v2
.end method

.method public final e(Lnet/sf/saxon/ma/map/MapItem;)Z
    .locals 9

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v4, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    instance-of v5, v4, Lnet/sf/saxon/value/AtomicValue;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v4, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    iget-object v3, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v7

    add-long/2addr v4, v7

    const-wide/16 v7, 0x4

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0x6

    int-to-long v3, v3

    add-long/2addr v0, v3

    :goto_0
    iget v3, p0, Lnet/sf/saxon/serialize/JSONSerializer;->l:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    :cond_3
    return v6

    :cond_4
    return v2
.end method

.method public final f(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v2, "method"

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "indent"

    const-string v2, "no"

    invoke-virtual {v1, p0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v1, p0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, p0, v1}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;Ljavax/xml/transform/Result;Ljava/util/Properties;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONSerializer;->write(Lnet/sf/saxon/om/Item;)V

    iget p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    sub-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON serialization: cannot handle a sequence of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SERE0023"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->n:Ljava/util/Properties;

    return-object p0
.end method

.method public setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V

    return-void
.end method

.method public setNormalizationForm(Ljava/text/Normalizer$Form;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->setNormalizationForm(Ljava/text/Normalizer$Form;)V

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->n:Ljava/util/Properties;

    const-string v0, "allow-duplicate-names"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->h:Z

    :cond_0
    const-string v0, "indent"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->p:Z

    :cond_1
    const-string v0, "{http://saxon.sf.net/}unfailing"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->r:Z

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->h:Z

    :cond_2
    const-string v0, "json-node-output-method"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->i:Ljava/lang/String;

    :cond_3
    const-string v0, "{http://saxon.sf.net/}line-length"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->l:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public setPropertySorter(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/serialize/JSONSerializer;->q:Ljava/util/Comparator;

    return-void
.end method

.method public write(Lnet/sf/saxon/om/Item;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->j:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->k:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "JSON output method cannot handle sequences of two or more items"

    const-string v0, "SERE0023"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONEmitter;->writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V

    goto/16 :goto_8

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->h:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v3, p0, Lnet/sf/saxon/serialize/JSONSerializer;->p:Z

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/serialize/JSONSerializer;->e(Lnet/sf/saxon/ma/map/MapItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    iget-object v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->startMap(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v3, v3, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lnet/sf/saxon/serialize/JSONSerializer;->q:Ljava/util/Comparator;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/serialize/JSONEmitter;->writeKey(Ljava/lang/String;)V

    iget-boolean v4, p0, Lnet/sf/saxon/serialize/JSONSerializer;->h:Z

    if-nez v4, :cond_9

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key value \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" occurs more than once in JSON map"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SERE0022"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/JSONSerializer;->g(Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/JSONEmitter;->endMap()V

    goto :goto_8

    :cond_b
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->p:Z

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONSerializer;->d(Lnet/sf/saxon/ma/arrays/ArrayItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v1, v2

    :cond_d
    :goto_6
    iget-object v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/serialize/JSONEmitter;->startArray(Z)V

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONSerializer;->g(Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_7

    :cond_e
    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/JSONEmitter;->endArray()V

    goto :goto_8

    :cond_f
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_10

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/JSONSerializer;->f(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V

    goto :goto_8

    :cond_10
    iget-boolean v0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->r:Z

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/JSONSerializer;->m:Lnet/sf/saxon/serialize/JSONEmitter;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/JSONEmitter;->writeAtomicValue(Lnet/sf/saxon/value/AtomicValue;)V

    :goto_8
    return-void

    :cond_11
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON output method cannot handle an item of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SERE0021"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
