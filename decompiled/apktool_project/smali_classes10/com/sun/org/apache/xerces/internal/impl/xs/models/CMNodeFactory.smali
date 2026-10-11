.class public Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final MULTIPLICITY:I = 0x1

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field private fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field private maxNodeLimit:I

.field private nodeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->nodeCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    return-void
.end method


# virtual methods
.method public getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    return-object p0
.end method

.method public getCMLeafNode(ILjava/lang/Object;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    return-object p0
.end method

.method public getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    return-object p0
.end method

.method public nodeCountCheck()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->nodeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->nodeCount:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    const-string v4, "maxOccurLimit"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->nodeCount:I

    :cond_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 1

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :try_start_0
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->maxNodeLimit:I
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    :cond_0
    :goto_0
    return-void
.end method

.method public resetNodeCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->nodeCount:I

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
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

    check-cast p2, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    return-void

    :cond_1
    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    const-string v0, "internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :cond_2
    return-void
.end method
