.class public Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fEmptyCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;


# instance fields
.field private fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

.field private fLeafCount:I

.field private fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

.field private fParticleCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fEmptyCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    return-void
.end method

.method private buildSyntaxTree(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 8

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget-short v2, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_6

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v6, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v6, :cond_3

    iget-object v6, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->buildSyntaxTree(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    iget-short v7, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v4, v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_6

    iget-short p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    if-nez v4, :cond_4

    if-le v6, v3, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v5

    :cond_4
    invoke-direct {p0, v5, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->expandContentModel(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v5

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->expandContentModel(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v5

    :cond_6
    :goto_3
    return-object v5
.end method

.method private copyNode(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_2
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result p1

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->copyNode(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->copyNode(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->copyNode(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method private expandContentModel(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;II)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    if-ne p3, v2, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    if-ne p2, v0, :cond_3

    if-ne p3, v2, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/16 v4, 0x66

    if-ne p3, v2, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p3, v3, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-virtual {v1, v4, p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    if-lez p2, :cond_5

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-le p3, p2, :cond_7

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {v5, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    if-nez v3, :cond_6

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-virtual {v1, v4, v3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v3

    :goto_1
    return-object p1
.end method

.method private multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->copyNode(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-direct {p0, p1, v1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p3

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->multiNodes(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {v2, p1, p3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAllCM(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
    .locals 5

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;-><init>(ZI)V

    move p1, v2

    :goto_1
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge p1, v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v3, v3, p1

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget v3, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->addElement(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public createDFACM(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fParticleCount:I

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->buildSyntaxTree(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    return-object v0
.end method

.method public getContentModel(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-nez p1, :cond_1

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fEmptyCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;

    return-object p0

    :cond_1
    iget-short v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->createAllCM(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->createDFACM(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fNodeFactory:Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMNodeFactory;->resetNodeCount()V

    if-nez p1, :cond_3

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fEmptyCM:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSEmptyCM;

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDeclPool(Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->fDeclPool:Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;

    return-void
.end method
