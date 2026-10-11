.class public Lorg/apache/xerces/impl/xs/opti/NodeImpl;
.super Lorg/apache/xerces/impl/xs/opti/DefaultNode;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:S

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/opti/DefaultNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/opti/DefaultNode;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->f:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->g:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->h:Ljava/lang/String;

    iput-short p5, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->i:S

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->i:S

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->j:Z

    return p0
.end method

.method public setReadOnly(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/DefaultNode;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
