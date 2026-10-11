.class public abstract Lnet/sf/saxon/functions/TransformFn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResultDocumentResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/TransformFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/s9api/Xslt30Transformer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lnet/sf/saxon/om/Function;

.field public e:Lnet/sf/saxon/expr/XPathContext;

.field public f:Lnet/sf/saxon/ma/map/HashTrieMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/functions/TransformFn$b;->f:Lnet/sf/saxon/ma/map/HashTrieMap;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/functions/TransformFn$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/functions/TransformFn$b;-><init>()V

    return-void
.end method

.method public static d(Lnet/sf/saxon/s9api/Processor;Ljava/lang/String;)Lnet/sf/saxon/functions/TransformFn$b;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "raw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "serialized"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "delivery-format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lnet/sf/saxon/functions/TransformFn$c;

    invoke-direct {p0}, Lnet/sf/saxon/functions/TransformFn$c;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lnet/sf/saxon/functions/TransformFn$d;

    invoke-direct {p0}, Lnet/sf/saxon/functions/TransformFn$d;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/functions/TransformFn$e;

    invoke-direct {p1, p0}, Lnet/sf/saxon/functions/TransformFn$e;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x23a48a7c -> :sswitch_2
        0x1b828 -> :sswitch_1
        0x335cd11b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public abstract b(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/s9api/Destination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract c()Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public e(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/s9api/Serializer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->newSerializer()Lnet/sf/saxon/s9api/Serializer;

    move-result-object p0

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lnet/sf/saxon/value/StringValue;

    const-string v2, "XPTY0004"

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/value/QNameValue;

    if-eqz v1, :cond_e

    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v1, v3}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    :goto_1
    invoke-virtual {p2, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, " "

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/value/StringValue;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_2
    instance-of v4, v3, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v4, :cond_4

    check-cast v3, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "yes"

    goto/16 :goto_2

    :cond_3
    const-string v3, "no"

    goto/16 :goto_2

    :cond_4
    instance-of v4, v3, Lnet/sf/saxon/value/DecimalValue;

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    instance-of v4, v3, Lnet/sf/saxon/value/QNameValue;

    if-eqz v4, :cond_6

    check-cast v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    instance-of v4, v3, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "use-character-maps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast v3, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {v3}, Lnet/sf/saxon/functions/Serialize;->toCharacterMap(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/s9api/Serializer;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    sget-object v1, Lnet/sf/saxon/s9api/Serializer$Property;->USE_CHARACTER_MAPS:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/s9api/Serializer;->getOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_a

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    const-string v3, ""

    :goto_3
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_a

    instance-of v6, v4, Lnet/sf/saxon/value/QNameValue;

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Value of serialization parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getEQName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not recognized"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {v1}, Lnet/sf/saxon/s9api/Serializer;->getProperty(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/Serializer$Property;

    move-result-object v0

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cdata-section-elements"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "suppress-indentation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    :goto_4
    invoke-virtual {p0, v1}, Lnet/sf/saxon/s9api/Serializer;->getOutputProperty(Lnet/sf/saxon/s9api/QName;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Serialization parameters must be strings or QNames"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_f
    return-object p0
.end method

.method public abstract f(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/MapItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public g(Ljava/lang/String;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/GroundedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/TransformFn$b;->d:Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/functions/TransformFn$b;->e:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/sf/saxon/om/Sequence;

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, p0, v1}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/TransformFn$b;->b:Ljava/lang/String;

    return-void
.end method

.method public i(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/TransformFn$b;->d:Lnet/sf/saxon/om/Function;

    iput-object p2, p0, Lnet/sf/saxon/functions/TransformFn$b;->e:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/TransformFn$b;->c:Ljava/lang/String;

    return-void
.end method

.method public final k(Lnet/sf/saxon/s9api/Xslt30Transformer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/TransformFn$b;->a:Lnet/sf/saxon/s9api/Xslt30Transformer;

    return-void
.end method
