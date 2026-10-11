.class public final Lcom/sunia/HTREnginev2/sqi$b;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/sqi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final e:Lorg/apache/xerces/xni/Augmentations;

.field public final f:Lorg/apache/xerces/xni/QName;

.field public final synthetic g:Lcom/sunia/HTREnginev2/sqi;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sqi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    new-instance p1, Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-direct {p1}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi$b;->e:Lorg/apache/xerces/xni/Augmentations;

    new-instance p1, Lorg/apache/xerces/xni/QName;

    invoke-direct {p1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqi$b;->f:Lorg/apache/xerces/xni/QName;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/sqi;Lcom/sunia/HTREnginev2/pqi;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/sqi$b;-><init>(Lcom/sunia/HTREnginev2/sqi;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/xerces/xni/Augmentations;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/sqi;->u(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/sqi;->u(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sunia/HTREnginev2/sqi;->v(Lcom/sunia/HTREnginev2/sqi;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sqi$b;->e:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi$b;->e:Lorg/apache/xerces/xni/Augmentations;

    return-object p0
.end method

.method public final b()Lorg/apache/xerces/xni/Augmentations;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->a()Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qan;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object p0

    return-object p0
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->c()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->a()Lorg/apache/xerces/xni/Augmentations;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi$b;->e(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/sqi;->w(Lcom/sunia/HTREnginev2/sqi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v1, p2}, Lcom/sunia/HTREnginev2/sqi;->w(Lcom/sunia/HTREnginev2/sqi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v1, p3}, Lcom/sunia/HTREnginev2/sqi;->w(Lcom/sunia/HTREnginev2/sqi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/sqi;->w(Lcom/sunia/HTREnginev2/sqi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sqi$b;->f:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, v0, p2, p3, p1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqi$b;->f:Lorg/apache/xerces/xni/QName;

    return-object p0
.end method

.method public final e(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

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

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->c()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sqi$b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->a()Lorg/apache/xerces/xni/Augmentations;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi$b;->e(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

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
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->c()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->a()Lorg/apache/xerces/xni/Augmentations;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi$b;->e(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

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
    iget-object v0, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {v0, p4}, Lcom/sunia/HTREnginev2/sqi;->s(Lcom/sunia/HTREnginev2/sqi;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->c()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sqi$b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/sqi$b;->g:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/sqi;->t(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sqi$b;->b()Lorg/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sqi$b;->e(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method
