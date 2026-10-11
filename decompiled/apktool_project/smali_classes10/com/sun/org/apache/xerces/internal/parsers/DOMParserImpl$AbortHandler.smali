.class Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbortHandler"
.end annotation


# instance fields
.field private documentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field private dtdContentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

.field private dtdSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->this$0:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;)V

    return-void
.end method


# virtual methods
.method public any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public getDTDContentModelSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->dtdContentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-object p0
.end method

.method public getDTDSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->dtdSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->documentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->dtdContentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->dtdSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;->documentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0
.end method
