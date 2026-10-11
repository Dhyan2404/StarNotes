.class public Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# static fields
.field private static DEBUG:Z


# instance fields
.field private fCachedAttributes:Ljava/util/ArrayList;

.field private fCachedCharEncoding:Ljava/lang/String;

.field private fCachedElementText:Ljava/lang/String;

.field private fCachedEncoding:Ljava/lang/String;

.field private fCachedEventType:I

.field private fCachedLocation:Ljavax/xml/stream/Location;

.field private fCachedNamespaceAttr:Ljava/util/ArrayList;

.field private fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

.field private fCachedPIData:Ljava/lang/String;

.field private fCachedPITarget:Ljava/lang/String;

.field private fCachedStandalone:Z

.field private fCachedTextValue:Ljava/lang/String;

.field private fCachedVersion:Ljava/lang/String;

.field private fCurrentEventType:I

.field private fElementName:Ljavax/xml/namespace/QName;

.field private fHasMoreEvents:Z

.field private fHasName:Z

.field private fLocalName:Ljava/lang/String;

.field private fReadFromCache:Z

.field private fReadNext:Z

.field private fStreamFilter:Ljavax/xml/stream/StreamFilter;

.field private fStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasName:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedElementText:Ljava/lang/String;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEncoding:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedStandalone:Z

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedLocation:Ljavax/xml/stream/Location;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPITarget:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPIData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedCharEncoding:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1, p2}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->next()I

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cache()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while creating a stream Filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    sget-boolean p1, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cached Event"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private cache()V
    .locals 4

    const-string v0, "Name is "

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->clearCache()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedLocation:Ljavax/xml/stream/Location;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEncoding:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedStandalone:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedCharEncoding:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPIData:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPITarget:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasName:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cacheNamespaceContext()V

    goto/16 :goto_0

    :pswitch_7
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasName:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    sget-boolean v1, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cacheAttributes()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cacheNamespaceAttributes()V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cacheNamespaceContext()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedElementText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred while trying to cache START_ELEMENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private cacheAttributes()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    new-instance v3, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    invoke-direct {v3}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>()V

    invoke-virtual {v3, v2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setName(Ljavax/xml/namespace/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setAttributeType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v1}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setSpecified(Z)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cacheNamespaceContext()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    return-void
.end method

.method private clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedElementText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedLocation:Ljavax/xml/stream/Location;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPITarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPIData:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedCharEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasName:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    return-void
.end method

.method private getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current event state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private readNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    return v0
.end method

.method private readNextTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    return v0
.end method


# virtual methods
.method public cacheNamespaceAttributes()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    new-instance v4, Lcom/sun/xml/internal/stream/events/NamespaceImpl;

    invoke-direct {v4, v3, v2}, Lcom/sun/xml/internal/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->close()V

    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getDTDType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1, p2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current event state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedCharEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedElementText:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT to read next text"

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEventType()I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fLocalName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedLocation:Ljavax/xml/stream/Location;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal to call getName() when event type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    return-object p0
.end method

.method public getNamespaceCount()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current event state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceAttr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPIData:Ljava/lang/String;

    return-object p0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedPITarget:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fElementName:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTextCharacters(I[CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_5

    if-ltz p3, :cond_4

    if-ltz p4, :cond_4

    if-ltz p1, :cond_4

    .line 7
    array-length v0, p2

    if-ge p3, v0, :cond_4

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_3

    if-ge v0, p4, :cond_2

    move p4, v0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "sourceStart is greater thannumber of characters associated with this event"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "target char array can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextLength()I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getTextStart()I
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedVersion:Ljava/lang/String;

    return-object p0
.end method

.method public hasName()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->cache()V

    sget-boolean v0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached Event in hasNext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->readNext()Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fHasMoreEvents:Z

    return p0
.end method

.method public hasText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getCachedAttribute(I)Lcom/sun/xml/internal/stream/events/AttributeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->isSpecified()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCharacters()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndElement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedStandalone:Z

    return p0
.end method

.method public isStartElement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->isCharacters()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedTextValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_5

    aget-char v3, v0, v2

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->readNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    :cond_1
    :goto_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    return p0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->readNextTag()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadNext:Z

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    :cond_2
    :goto_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCurrentEventType:I

    return p0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedEventType:I

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace URI "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " specified did not match with current namespace URI"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LocalName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " specified did not match with current local name"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Event type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified did not match with current parser event"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStreamFilter(Ljavax/xml/stream/StreamFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamFilter:Ljavax/xml/stream/StreamFilter;

    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fReadFromCache:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;->fCachedStandalone:Z

    return p0
.end method
