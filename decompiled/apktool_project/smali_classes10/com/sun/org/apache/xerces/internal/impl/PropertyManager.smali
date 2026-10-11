.class public Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTEXT_READER:I = 0x1

.field public static final CONTEXT_WRITER:I = 0x2

.field protected static final STAX_ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field protected static final STAX_NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field private static final STRING_INTERNING:Ljava/lang/String;


# instance fields
.field supportedProps:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->STRING_INTERNING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->initWriterProps()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->initConfigurableReaderProperties()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    .line 7
    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperties()Ljava/util/HashMap;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private getProperties()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    return-object p0
.end method

.method private initConfigurableReaderProperties()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "javax.xml.stream.isValidating"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v3, "javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v3, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v3, "javax.xml.stream.isCoalescing"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v3, "javax.xml.stream.supportDTD"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "javax.xml.stream.reporter"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "javax.xml.stream.resolver"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "javax.xml.stream.allocator"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "javax.xml.stream.notations"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v4, "http://xml.org/sax/features/string-interning"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v4, "http://apache.org/xml/features/allow-java-encodings"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "add-namespacedecl-as-attrbiute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "http://java.sun.com/xml/stream/properties/reader-in-defined-state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v2, "reuse-instance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v3, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v3, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v1, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initWriterProps()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "javax.xml.stream.isRepairingNamespaces"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "escapeCharacters"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v1, "reuse-instance"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsProperty(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "javax.xml.stream.isNamespaceAware"

    if-eq p1, v0, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "javax.xml.stream.isValidating"

    if-eq p1, v0, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->STRING_INTERNING:Ljava/lang/String;

    if-eq p1, v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "javax.xml.stream.resolver"

    if-eq p1, v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    new-instance v1, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;

    move-object v2, p2

    check-cast v2, Ljavax/xml/stream/XMLResolver;

    invoke-direct {v1, v2}, Lcom/sun/xml/internal/stream/StaxEntityResolverWrapper;-><init>(Ljavax/xml/stream/XMLResolver;)V

    const-string v2, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "false value of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "feature is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "true value of isValidating not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const-string v0, "http://apache.org/xml/features/namespaces"

    :goto_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
