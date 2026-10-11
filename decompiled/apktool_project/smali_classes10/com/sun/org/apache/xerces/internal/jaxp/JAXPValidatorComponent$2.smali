.class Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$300(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$2;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$300(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {p1, p3, p4, p5, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/w3c/dom/ls/LSInput;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
