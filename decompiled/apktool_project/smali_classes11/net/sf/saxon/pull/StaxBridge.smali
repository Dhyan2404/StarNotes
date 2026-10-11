.class public Lnet/sf/saxon/pull/StaxBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pull/PullProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/pull/StaxBridge$b;
    }
.end annotation


# instance fields
.field public a:Ljavax/xml/stream/XMLStreamReader;

.field public b:Lnet/sf/saxon/om/AttributeMap;

.field public c:Lnet/sf/saxon/event/PipelineConfiguration;

.field public d:Lnet/sf/saxon/om/NamePool;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/pull/PullEvent;

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->f:Ljava/util/Stack;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->g:Ljava/util/List;

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->START_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    iput-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    iput-boolean v1, p0, Lnet/sf/saxon/pull/StaxBridge;->j:Z

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/pull/StaxBridge;Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pull/StaxBridge;->d(Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/pull/StaxBridge;)Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->c:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method


# virtual methods
.method public final c(I)Lnet/sf/saxon/pull/PullEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown StAX event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->NAMESPACE:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->TEXT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_4
    iget-object p1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    const-string v0, "javax.xml.stream.entities"

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/pull/StaxBridge;->g:Ljava/util/List;

    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->ATTRIBUTE:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->END_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p1, p0, Lnet/sf/saxon/pull/StaxBridge;->j:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->TEXT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->COMMENT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_b
    iget p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->TEXT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_d
    iget p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_e
    iget p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/pull/StaxBridge;->i:I

    sget-object p0, Lnet/sf/saxon/pull/PullEvent;->START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public current()Lnet/sf/saxon/pull/PullEvent;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    return-object p0
.end method

.method public final d(Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-interface {p1}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public getAtomicValue()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAttributes()Lnet/sf/saxon/om/AttributeMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->b:Lnet/sf/saxon/om/AttributeMap;

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->c:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceDeclarations()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0

    :cond_0
    new-array v1, v0, [Lnet/sf/saxon/om/NamespaceBinding;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    iget-object v5, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    new-instance v5, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v5, v3, v4}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    if-eq v0, v1, :cond_2

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pull/StaxBridge;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeName;

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-interface {v2, v3}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    iget-object v2, p0, Lnet/sf/saxon/pull/StaxBridge;->d:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v2, v1, v0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v1, :cond_5

    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    new-instance v3, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v4, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v3

    :goto_2
    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->e:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->c:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->ATTRIBUTE:Lnet/sf/saxon/pull/PullEvent;

    if-ne p0, v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceLocator()Lnet/sf/saxon/s9api/Location;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pull/StaxBridge;->d(Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/pull/StaxBridge$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->removeLeadingWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v1

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result p0

    invoke-static {v0, v1, p0, v3}, Lnet/sf/saxon/str/StringTool;->compress([CIIZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_0
    :try_start_0
    iget-object v5, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v5

    if-ne v5, v1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    :cond_4
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v7

    iget-object v8, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_5
    if-ne v5, v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-ne v5, v2, :cond_3

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_8

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    iput-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_8
    move v4, v5

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringValue() called when current event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUnparsedEntities()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/pull/UnparsedEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/sf/saxon/pull/StaxBridge;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljavax/xml/stream/events/EntityDeclaration;

    if-eqz v3, :cond_2

    check-cast v2, Ljavax/xml/stream/events/EntityDeclaration;

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.ctc.wstx.ent.UnparsedExtEntity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "getName"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v7, "getSystemId"

    invoke-virtual {v3, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v8, "getPublicId"

    invoke-virtual {v3, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v9, "getBaseURI"

    invoke-virtual {v3, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    goto :goto_2

    :catch_0
    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    goto :goto_1

    :catch_1
    move-object v5, v1

    move-object v3, v6

    move-object v4, v7

    goto :goto_1

    :catch_2
    move-object v4, v1

    move-object v5, v4

    move-object v3, v6

    goto :goto_1

    :catch_3
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_2
    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    :try_start_4
    invoke-static {v4, v2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    new-instance v6, Lnet/sf/saxon/pull/UnparsedEntity;

    invoke-direct {v6}, Lnet/sf/saxon/pull/UnparsedEntity;-><init>()V

    invoke-virtual {v6, v3}, Lnet/sf/saxon/pull/UnparsedEntity;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lnet/sf/saxon/pull/UnparsedEntity;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lnet/sf/saxon/pull/UnparsedEntity;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lnet/sf/saxon/pull/UnparsedEntity;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public next()Lnet/sf/saxon/pull/PullEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->START_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->START_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    return-object v0

    :cond_0
    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->END_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    if-eq v0, v1, :cond_b

    sget-object v2, Lnet/sf/saxon/pull/PullEvent;->END_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pull/StaxBridge;->c(I)Lnet/sf/saxon/pull/PullEvent;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->START_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceMap;

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-nez v4, :cond_2

    move-object v4, v6

    :cond_2
    if-nez v5, :cond_3

    move-object v5, v6

    :cond_3
    :try_start_1
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/om/NamespaceMap;->bind(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->f:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->b:Lnet/sf/saxon/om/AttributeMap;

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/StaxBridge;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v4, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v4

    new-instance v6, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v7, v4, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    iget-object v4, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lnet/sf/saxon/om/AttributeInfo;

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v9, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->b:Lnet/sf/saxon/om/AttributeMap;

    goto :goto_2

    :cond_7
    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_2
    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ParseError at"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\nMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_a
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reported by XML parser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "SXXP0003"

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pull/StaxBridge;->d(Ljavax/xml/stream/Location;)Lnet/sf/saxon/expr/parser/Loc;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v2

    :cond_b
    :goto_3
    :try_start_2
    iget-object p0, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInputStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/pull/StaxBridge$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/sf/saxon/pull/StaxBridge$b;-><init>(Lnet/sf/saxon/pull/StaxBridge;Lnet/sf/saxon/pull/StaxBridge$a;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->setXMLReporter(Ljavax/xml/stream/XMLReporter;)V

    invoke-virtual {v0, p1, p2}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/PipelineConfiguration;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->c:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->d:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/pull/StaxBridge;->j:Z

    return-void
.end method

.method public setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    return-void
.end method

.method public skipToMatchingEnd()Lnet/sf/saxon/pull/PullEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/pull/StaxBridge$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/pull/StaxBridge;->a:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v3

    if-ne v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->END_ELEMENT:Lnet/sf/saxon/pull/PullEvent;

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Element start has no matching element end"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call skipToMatchingEnd() except when at start of element or document"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->END_DOCUMENT:Lnet/sf/saxon/pull/PullEvent;

    iput-object v0, p0, Lnet/sf/saxon/pull/StaxBridge;->h:Lnet/sf/saxon/pull/PullEvent;

    return-object v0
.end method
