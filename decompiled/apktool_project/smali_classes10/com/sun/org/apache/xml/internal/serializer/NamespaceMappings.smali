.class public Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"


# instance fields
.field private count:I

.field private m_namespaces:Ljava/util/Hashtable;

.field private m_nodeStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method

.method private initNamespaces()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v2, v3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;-><init>(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const-string v2, "xml"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;-><init>(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;-><init>(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    iput p0, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    return-object v0
.end method

.method public generateNextPrefix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMappingFromPrefix(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMappingFromURI(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public lookupNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public popNamespace(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public popNamespaces(ILorg/xml/sax/ContentHandler;)V
    .locals 1

    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    iget v0, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    if-ge v0, p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->popNamespace(Ljava/lang/String;)Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;-><init>(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->count:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->m_nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method
