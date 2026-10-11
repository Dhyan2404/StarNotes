.class public Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/EntityDeclaration;


# instance fields
.field private fEntityName:Ljava/lang/String;

.field private fNotationName:Ljava/lang/String;

.field private fReplacementText:Ljava/lang/String;

.field private fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->init()V

    .line 6
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLResourceIdentifier()Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    return-object p0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fEntityName:Ljava/lang/String;

    return-void
.end method

.method public setEntityReplacementText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fReplacementText:Ljava/lang/String;

    return-void
.end method

.method public setNotationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-void
.end method

.method public setXMLResourceIdentifier(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->fXMLResourceIdentifier:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    return-void
.end method
