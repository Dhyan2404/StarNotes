.class public Lnet/sf/saxon/expr/instruct/ResultDocument;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ValidatingInstruction;
.implements Lnet/sf/saxon/expr/instruct/InstructionWithComplexContent;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# static fields
.field public static final synthetic x:Z


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Lnet/sf/saxon/expr/Operand;

.field public p:Lnet/sf/saxon/expr/Operand;

.field public q:Z

.field public final r:Ljava/util/Properties;

.field public final s:Ljava/util/Properties;

.field public t:Lnet/sf/saxon/lib/ParseOptions;

.field public final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public final w:Lnet/sf/saxon/serialize/CharacterMapIndex;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/util/Properties;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/SchemaType;Ljava/util/Map;Lnet/sf/saxon/serialize/CharacterMapIndex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/Properties;",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/Expression;",
            "I",
            "Lnet/sf/saxon/type/SchemaType;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/Expression;",
            ">;",
            "Lnet/sf/saxon/serialize/CharacterMapIndex;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->r:Ljava/util/Properties;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    if-eqz p3, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p3, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->n:Lnet/sf/saxon/expr/Operand;

    :cond_0
    if-eqz p4, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p4, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->o:Lnet/sf/saxon/expr/Operand;

    :cond_1
    invoke-virtual {p0, p5, p6}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    iget-object p3, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    new-instance p5, Lnet/sf/saxon/expr/Operand;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/Expression;

    sget-object p6, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p5, p0, p2, p6}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p8, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-interface {p7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static checkAcceptableUri(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/DocumentPool;->find(Ljava/lang/String;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to a URI that has already been read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dummy:/anonymous/principal/result"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "(implicit output URI)"

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p0, "XTDE1500"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XsltController;->checkUniqueOutputDestination(Lnet/sf/saxon/om/DocumentKey;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write more than one result document to the same URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dummy:/anonymous/principal/result"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "(implicit output URI)"

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p0, "XTDE1490"

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XsltController;->addUnavailableOutputDestination(Lnet/sf/saxon/om/DocumentKey;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->h(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 2

    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p2}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {p2}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, v0, p2, v1, p0}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v6, "SEPM0016"

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v1 .. v6}, Lnet/sf/saxon/lib/SaxonOutputKeys;->parseListOfNodeNames(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static makeReceiver(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ResultDocumentResolver;Lnet/sf/saxon/serialize/SerializationProperties;Z)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getBaseOutputURI()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-interface {p3, p2, p0, p1, p4}, Lnet/sf/saxon/lib/ResultDocumentResolver;->resolve(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p3

    invoke-interface {p3}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    :cond_1
    invoke-static {p2, p4}, Lnet/sf/saxon/expr/instruct/ResultDocument;->checkAcceptableUri(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Exception thrown by output resolver"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public static processXslOutputElement(Lnet/sf/saxon/om/NodeInfo;Ljava/util/Properties;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v7

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    move-object v0, p1

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p6}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "{"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v2, 0x7d

    const/16 v4, 0x7b

    if-nez v0, :cond_2

    const-string v0, "http://saxon.sf.net/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const-string p2, "use-character-maps"

    const/4 v0, 0x3

    const/4 v5, 0x0

    const-string v6, "method"

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p1, "{http://saxon.sf.net/}double-space"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x6

    goto :goto_2

    :sswitch_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x5

    goto :goto_2

    :sswitch_2
    const-string p1, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v8, v0

    goto :goto_2

    :sswitch_4
    const-string p1, "{http://saxon.sf.net/}next-in-chain"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_5
    const-string p1, "suppress-indentation"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v8, v7

    goto :goto_2

    :sswitch_6
    const-string p1, "cdata-section-elements"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v8, v5

    :goto_2
    const-string p1, "SEPM0016"

    packed-switch v8, :pswitch_data_0

    const-string p2, "output-version"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string v3, "version"

    :cond_a
    if-nez p5, :cond_c

    :try_start_0
    invoke-static {v3}, Lnet/sf/saxon/lib/SaxonOutputKeys;->isUnstrippedProperty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-static {p3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_b
    invoke-virtual {p6, v3, p3}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    invoke-virtual {p0, v3, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;->i(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZ)V

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_2
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;->i(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZ)V

    goto/16 :goto_5

    :pswitch_3
    invoke-static {p3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Q{}"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v0, :cond_e

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_e
    const-string p3, "xml"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "html"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "text"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "xhtml"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "json"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "adaptive"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    if-nez p5, :cond_14

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto/16 :goto_4

    :cond_f
    const-string p3, "Q{"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_10
    :try_start_1
    invoke-static {p2}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p5, p3, v5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_13

    if-eqz p4, :cond_12

    invoke-interface {p4, p5, v5}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p2, p3, v7

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v6, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_11
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace prefix \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' has not been declared"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_12
    invoke-virtual {p0, v6, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :cond_13
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "method must be xml, html, xhtml, text, json, adaptive, or a prefixed name"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
    :try_end_1
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid method name. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p2

    :cond_14
    :goto_4
    invoke-virtual {p0, v6, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_4
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;->i(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZ)V

    goto :goto_5

    :pswitch_5
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;->i(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZ)V

    :goto_5
    :pswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d86fde1 -> :sswitch_6
        -0x56b1d94f -> :sswitch_5
        -0x461cedf9 -> :sswitch_4
        -0x403a2f1f -> :sswitch_3
        -0x355c33cf -> :sswitch_2
        -0x1061b83f -> :sswitch_1
        -0xacf6aca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static traceDestination(Lnet/sf/saxon/expr/XPathContext;Ljavax/xml/transform/Result;)V
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_0

    const-string v0, "anonymous output stream"

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_1

    const-string v0, "SAX2 ContentHandler"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_2

    const-string v0, "DOM tree"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setReturnable(Z)V

    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 11

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v9, Lnet/sf/saxon/expr/instruct/ResultDocument;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->r:Ljava/util/Properties;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v4, v0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v5, v0

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getValidationAction()I

    move-result v6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v8

    iget-object v10, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-object v0, v9

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/expr/instruct/ResultDocument;-><init>(Ljava/util/Properties;Ljava/util/Properties;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/SchemaType;Ljava/util/Map;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-static {p0, v9}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v9, p1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    iput-boolean p1, v9, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    iput-boolean p0, v9, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    return-object v9
.end method

.method public final e(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot execute xsl:result-document while evaluating xsl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getTemporaryOutputState()I

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XTDE1480"

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "resultDoc"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->r:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->g(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "global"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->g(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getValidationAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getValidationAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getValidationAction()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "validation"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "type"

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    if-eqz v0, :cond_2

    const-string v0, "flags"

    const-string v1, "a"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "format"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_5
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Ljava/util/Properties;)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item-separator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "{http://saxon.sf.net/}newline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->jsEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "use-character-maps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "{"

    if-nez v3, :cond_2

    const-string v3, "method"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "Q{"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public gatherOutputProperties(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Properties;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v11

    iget-object v0, v1, Lnet/sf/saxon/expr/instruct/ResultDocument;->r:Ljava/util/Properties;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Q{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "XTDE1460"

    if-eqz v4, :cond_0

    invoke-static {v0}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    aget-object v6, v4, v14

    invoke-interface {v12, v6, v14}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Lnet/sf/saxon/om/StructuredQName;

    aget-object v8, v4, v14

    aget-object v4, v4, v13

    invoke-direct {v7, v8, v6, v4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v6, v4}, Lnet/sf/saxon/style/StylesheetPackage;->getNamedOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no xsl:output format named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v1

    :cond_2
    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The namespace prefix in the format name "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is undeclared"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v3, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v3

    :catch_0
    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested output format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid QName"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getFormatExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v3, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v3

    :cond_3
    :goto_1
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iget-object v0, v1, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v10, "XTDE0030"

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v1, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v9, 0x1

    move-object v4, v15

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    move-object v13, v10

    move-object v10, v11

    :try_start_2
    invoke-static/range {v4 .. v10}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v13, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v10

    :goto_3
    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_4
    move-object v13, v10

    iget-object v0, v1, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, v15

    move-object v8, v12

    move-object v10, v11

    :try_start_3
    invoke-static/range {v4 .. v10}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v5, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string v0, "http://saxon.sf.net/"

    invoke-virtual {v4}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SXWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, v4}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XmlProcessingException;->setWarning(Z)V

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_4

    :cond_5
    throw v4

    :cond_6
    return-object v15
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getContentExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getFormatExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->o:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getHref()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->n:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xc9

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/high16 p0, 0x2000000

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getTopLevelType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getStaticSerializationProperty(Lnet/sf/saxon/om/StructuredQName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->s:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->r:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ResultDocument"

    return-object p0
.end method

.method public getValidationAction()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public isAsynchronous()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    return p0
.end method

.method public isMultiThreaded(Lnet/sf/saxon/Configuration;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->isAsynchronous()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/lib/Feature;->ALLOW_MULTITHREADING:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResolveAgainstStaticBase()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->o:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->isAsynchronous()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    instance-of p2, p1, Lnet/sf/saxon/expr/LetExpression;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Lnet/sf/saxon/expr/Binding;

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/expr/LetExpression;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/LetExpression;->setNeedsEagerEvaluation(Z)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->e(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/sf/saxon/Configuration;->processResultDocument(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public processInstruction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentOutputUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->processLeft(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1, v1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-interface {p2, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentOutputUri(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    move p1, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    if-nez p1, :cond_0

    throw p2

    :cond_0
    :goto_1
    throw p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public processLeft(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/ComplexContentOutputter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->e(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->gatherOutputProperties(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Properties;

    move-result-object v2

    const-string v3, "parameter-document"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    new-instance v5, Lnet/sf/saxon/serialize/SerializationProperties;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v5, v2, v3}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance v2, Lcom/sunia/HTREnginev2/frl;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/frl;-><init>(Lnet/sf/saxon/expr/instruct/ResultDocument;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v5, v2}, Lnet/sf/saxon/serialize/SerializationProperties;->setValidationFactory(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getHref()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/functions/IriToUri;->iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getBaseOutputURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getGatekeeper()Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;->useAsSecondary()V

    invoke-virtual {v2, v5}, Lnet/sf/saxon/serialize/PrincipalOutputGatekeeper;->makeReceiver(Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getResultDocumentResolver()Lnet/sf/saxon/lib/ResultDocumentResolver;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->getInstance()Lnet/sf/saxon/lib/StandardResultDocumentResolver;

    move-result-object v2

    :cond_5
    move-object v4, v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lnet/sf/saxon/expr/instruct/ResultDocument;->makeReceiver(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ResultDocumentResolver;Lnet/sf/saxon/serialize/SerializationProperties;Z)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->traceDestination(Lnet/sf/saxon/expr/XPathContext;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_6
    :goto_3
    invoke-interface {v2}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/PipelineConfiguration;->setController(Lnet/sf/saxon/Controller;)V

    invoke-interface {v2}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, v2}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentOutputUri(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    return-object v1
.end method

.method public setAsynchronous(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->q:Z

    return-void
.end method

.method public setContentExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->p:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public setFormatExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setHref(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSchemaType(Lnet/sf/saxon/type/SchemaType;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    return-void
.end method

.method public setUseStaticBaseUri(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->v:Z

    return-void
.end method

.method public setValidationAction(ILnet/sf/saxon/type/SchemaType;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    :cond_1
    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    sget-object p2, Lnet/sf/saxon/style/XSLResultDocument;->METHOD:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getStaticSerializationProperty(Lnet/sf/saxon/om/StructuredQName;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->o:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->u:Ljava/util/Map;

    sget-object v1, Lnet/sf/saxon/style/XSLResultDocument;->METHOD:Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnet/sf/saxon/style/XSLResultDocument;->BUILD_TREE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->getStaticSerializationProperty(Lnet/sf/saxon/om/StructuredQName;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const-string v0, "xml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xhtml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->p:Lnet/sf/saxon/expr/Operand;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;->t:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {p1, p2, v0}, Lnet/sf/saxon/expr/instruct/DocumentInstr;->checkContentSequence(Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
