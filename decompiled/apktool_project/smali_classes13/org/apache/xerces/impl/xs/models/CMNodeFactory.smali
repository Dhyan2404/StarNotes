.class public Lorg/apache/xerces/impl/xs/models/CMNodeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final f:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field public static final g:Z = false

.field public static final h:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public d:Lorg/apache/xerces/util/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    return-void
.end method


# virtual methods
.method public getCMBinOpNode(ILorg/apache/xerces/impl/dtd/models/CMNode;Lorg/apache/xerces/impl/dtd/models/CMNode;)Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance p0, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    return-object p0
.end method

.method public getCMLeafNode(ILjava/lang/Object;II)Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    return-object p0
.end method

.method public getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance p0, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;-><init>(ILjava/lang/Object;IIII)V

    return-object p0
.end method

.method public getCMUniOpNode(ILorg/apache/xerces/impl/dtd/models/CMNode;)Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance p0, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;)V

    return-object p0
.end method

.method public nodeCountCheck()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->c:Lorg/apache/xerces/impl/XMLErrorReporter;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "maxOccurLimit"

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->a:I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->b:I

    :cond_0
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1

    .line 2
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->c:Lorg/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/util/SecurityManager;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    :goto_0
    return-void
.end method

.method public resetNodeCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->a:I

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string v1, "security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lorg/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->d:Lorg/apache/xerces/util/SecurityManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->b:I

    return-void

    :cond_1
    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    const-string v0, "internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/models/CMNodeFactory;->c:Lorg/apache/xerces/impl/XMLErrorReporter;

    :cond_2
    return-void
.end method
