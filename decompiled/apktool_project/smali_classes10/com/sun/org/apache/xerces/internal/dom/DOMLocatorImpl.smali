.class public Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field public fByteOffset:I

.field public fColumnNumber:I

.field public fLineNumber:I

.field public fRelatedNode:Lorg/w3c/dom/Node;

.field public fUri:Ljava/lang/String;

.field public fUtf16Offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    .line 18
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    .line 19
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 20
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 24
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    .line 25
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 26
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    .line 27
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 28
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    .line 31
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 32
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    .line 33
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    .line 34
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    .line 11
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    .line 12
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    .line 13
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    .line 14
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fByteOffset:I

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fColumnNumber:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fLineNumber:I

    return p0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object p0
.end method

.method public getUtf16Offset()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fUtf16Offset:I

    return p0
.end method
