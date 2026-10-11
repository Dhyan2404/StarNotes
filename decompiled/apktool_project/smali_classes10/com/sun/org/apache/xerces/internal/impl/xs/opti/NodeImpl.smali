.class public Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultNode;
.source "SourceFile"


# instance fields
.field hidden:Z

.field localpart:Ljava/lang/String;

.field nodeType:S

.field prefix:Ljava/lang/String;

.field rawname:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultNode;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->prefix:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->localpart:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->uri:Ljava/lang/String;

    .line 7
    iput-short p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->nodeType:S

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->localpart:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->nodeType:S

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->hidden:Z

    return p0
.end method

.method public setReadOnly(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->hidden:Z

    return-void
.end method
