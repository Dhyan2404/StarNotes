.class final Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SAX2XNI"
.end annotation


# instance fields
.field private final fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field private final fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    .line 3
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V

    return-void
.end method

.method private aug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$600(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$600(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$602(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object p0
.end method

.method private elementAug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    return-object p0
.end method

.method private handler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/TeeXMLDocumentFilterImpl;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object p0

    return-object p0
.end method

.method private toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$700(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$700(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v1, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$700(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v1, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$700(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0
.end method

.method private toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/xml/sax/SAXException;

    return-object p1

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {v0, p4}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$400(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$500(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->elementAug()Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method
