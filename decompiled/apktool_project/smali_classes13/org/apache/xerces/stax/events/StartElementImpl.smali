.class public final Lorg/apache/xerces/stax/events/StartElementImpl;
.super Lcom/sunia/HTREnginev2/jnf;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/StartElement;


# static fields
.field public static final k:Ljava/util/Comparator;


# instance fields
.field public final i:Ljava/util/Map;

.field public final j:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/a;

    invoke-direct {v0}, Lorg/apache/xerces/stax/events/a;-><init>()V

    sput-object v0, Lorg/apache/xerces/stax/events/StartElementImpl;->k:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;Ljavax/xml/stream/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p5}, Lcom/sunia/HTREnginev2/jnf;-><init>(Ljavax/xml/namespace/QName;ZLjava/util/Iterator;Ljavax/xml/stream/Location;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/TreeMap;

    sget-object p3, Lorg/apache/xerces/stax/events/StartElementImpl;->k:Ljava/util/Comparator;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->i:Ljava/util/Map;

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/stream/events/Attribute;

    iget-object p3, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object p5

    invoke-interface {p3, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->i:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/apache/xerces/stax/DefaultNamespaceContext;->getInstance()Lorg/apache/xerces/stax/DefaultNamespaceContext;

    move-result-object p4

    :goto_1
    iput-object p4, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->j:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method


# virtual methods
.method public getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/events/Attribute;

    return-object p0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/jnf;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->j:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/StartElementImpl;->j:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {p0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/16 v0, 0x3c

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jnf;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jnf;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x20

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/stax/events/StartElementImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x3e

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-interface {v0, p1}, Ljavax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-interface {v1, p1}, Ljavax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
