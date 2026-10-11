.class public Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
.implements Lorg/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
    }
.end annotation


# instance fields
.field eStatus:Z

.field public fCurrentNode:Lorg/w3c/dom/Node;

.field protected final fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

.field protected fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected final fErrorCode:Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->eStatus:Z

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fErrorCode:Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    .line 5
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->eStatus:Z

    .line 8
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fErrorCode:Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    .line 9
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method private printError(Lorg/w3c/dom/DOMError;)V
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v3, "Warning"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v3, "Error"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v3, "FatalError"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->eStatus:Z

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getLocation()Lorg/w3c/dom/DOMLocator;

    move-result-object v0

    const-string v3, ":"

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getByteOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getUtf16Offset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getRelatedNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/DOMLocator;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    const/4 v0, 0x2

    iput-short v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iput-object p3, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1, p0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iput-object p3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fErrorCode:Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->setValues(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fErrorCode:Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->getDOMErrorType(Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1, p0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_2
    return-void
.end method

.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0
.end method

.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->printError(Lorg/w3c/dom/DOMError;)V

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->eStatus:Z

    return p0
.end method

.method public setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    const/4 v0, 0x1

    iput-short v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iput-object p3, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result p2

    iput p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1, p0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    return-void
.end method
