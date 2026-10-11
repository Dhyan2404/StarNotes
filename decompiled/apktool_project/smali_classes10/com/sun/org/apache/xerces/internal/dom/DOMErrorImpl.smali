.class public Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field public fException:Ljava/lang/Exception;

.field public fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

.field public fMessage:Ljava/lang/String;

.field public fRelatedData:Ljava/lang/Object;

.field public fSeverity:S

.field public fType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(SLcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    .line 10
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    .line 11
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 12
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->createDOMLocator(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    return-void
.end method

.method private createDOMLocator(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;
    .locals 3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    return-object p0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-object p0
.end method

.method public getSeverity()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method
