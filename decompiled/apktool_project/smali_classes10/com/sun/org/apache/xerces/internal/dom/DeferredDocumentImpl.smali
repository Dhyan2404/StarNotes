.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;,
        Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x801

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>(Z)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeCount:I

    .line 5
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    .line 6
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    .line 7
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    .line 10
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method public static binarySearch([IIII)I
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_3

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    aget v1, p0, v0

    if-ne v1, p3, :cond_1

    :goto_1
    if-lez v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    aget p1, p0, p1

    if-ne p1, p3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    if-le v1, p3, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private final clearChunkIndex([[III)I
    .locals 4

    aget-object p0, p1, p2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    aget v1, p0, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eq v1, v0, :cond_1

    const/16 v2, 0x800

    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    aput v0, p0, p3

    aget p0, p0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    aput-object p0, p1, p2

    :cond_1
    return v1
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 2

    aget-object p0, p1, p2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    aget-object v1, p0, p3

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    aput-object v0, p0, p3

    aget-object p0, p1, p2

    const/16 p3, 0x800

    aget-object p0, p0, p3

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez p3, :cond_1

    aput-object v0, p1, p2

    :cond_1
    return-object v1
.end method

.method private final createChunk([[II)V
    .locals 1

    const/16 p0, 0x801

    new-array p0, p0, [I

    .line 1
    aput-object p0, p1, p2

    .line 2
    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 p2, 0x0

    const/16 v0, 0x800

    invoke-static {p1, p2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x801

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    aput-object v0, p1, p2

    .line 4
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;)V

    const/16 p0, 0x800

    aput-object p1, v0, p0

    return-void
.end method

.method private final getChunkIndex([[III)I
    .locals 0

    aget-object p0, p1, p2

    if-eqz p0, :cond_0

    aget p0, p0, p3

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 0

    aget-object p0, p1, p2

    if-eqz p0, :cond_0

    aget-object p0, p0, p3

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static print([IIIII)V
    .locals 0

    .line 2
    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setChunkIndex([[IIII)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    return p0

    :cond_0
    aget-object p0, p1, p3

    aget p1, p0, p4

    if-ne p1, v0, :cond_1

    const/16 p3, 0x800

    aget v0, p0, p3

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p3

    :cond_1
    aput p2, p0, p4

    return p1
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object p0, p1, p3

    aget-object p1, p0, p4

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const/16 p3, 0x800

    aget-object p3, p0, p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;

    iget v0, p3, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    :cond_1
    aput-object p2, p0, p4

    return-object p1
.end method


# virtual methods
.method public appendChild(II)V
    .locals 5

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    shr-int/lit8 v2, p2, 0xb

    and-int/lit16 v3, p2, 0x7ff

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public cloneNode(IZ)I
    .locals 8

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    int-to-short v3, v2

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v4, v3, 0xb

    and-int/lit16 v5, v3, 0x7ff

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    aget-object v7, v6, v0

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v7, v6, v0

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    aget-object v7, v6, v0

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    aget-object v0, v6, v0

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    const/4 v7, 0x2

    if-eq v2, v7, :cond_0

    const/4 v7, 0x3

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    move v0, v6

    :goto_0
    if-eq p1, v6, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v2

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->insertBefore(III)I

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p1

    move v0, v2

    goto :goto_0

    :cond_2
    return v3
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    .line 3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    if-eqz p4, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredDocument()I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result p0

    return p0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    .line 7
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    .line 2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v4

    shr-int/lit8 v5, v4, 0xb

    and-int/lit16 v6, v4, 0x7ff

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v7, p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p4, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result p1

    shr-int/lit8 p2, p1, 0xb

    and-int/lit16 p3, p1, 0x7ff

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p4, p1, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p5, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v1
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v4, v0, 0xb

    and-int/lit16 v5, v0, 0x7ff

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p4, v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v1
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v0
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v0
.end method

.method public createNode(S)I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeCount:I

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->ensureCapacity(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeCount:I

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    mul-int/lit8 v1, p1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v0, v1, [[Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v0, v1, [[Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v0, v1, [[I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v0, v1, [[I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v0, v1, [[I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v0, v1, [[Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v0, v1, [[I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto :goto_0

    :cond_1
    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createChunk([[II)V

    return-void
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    shr-int/lit8 v2, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    :goto_0
    if-eq p1, v1, :cond_2

    shr-int/lit8 v2, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    if-ne v3, p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method public getLastChild(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p0

    return p0
.end method

.method public getLastChild(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNamespacesEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return p0
.end method

.method public getNodeExtra(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p0

    return p0
.end method

.method public getNodeExtra(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNodeIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    shr-int/lit8 v2, p1, 0xb

    and-int/lit16 v3, p1, 0x7ff

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v5, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    :cond_1
    const/16 v2, 0xc

    if-eq v4, v2, :cond_9

    const/16 v2, 0x15

    if-eq v4, v2, :cond_8

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredCommentImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredCommentImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredProcessingInstructionImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredProcessingInstructionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredCDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredCDATASectionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    :goto_0
    move-object p0, v0

    goto :goto_3

    :pswitch_7
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrNSImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_8
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;

    invoke-direct {v2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementImpl;

    invoke-direct {v2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    if-nez v3, :cond_4

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    :cond_4
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->binarySearch([IIII)I

    move-result v3

    :goto_2
    if-eq v3, v1, :cond_7

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    invoke-direct {p0, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v0, v4, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move-object p0, v2

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredNotationImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredNotationImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :goto_3
    :pswitch_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public getNodeType(I)S
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result p0

    return p0
.end method

.method public getNodeType(IZ)S
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p0

    :goto_0
    int-to-short p0, p0

    return p0
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeURI(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValue(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    shr-int/lit8 v2, p1, 0xb

    and-int/lit16 v3, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    return-object v0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(I)I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 5
    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    if-ne v0, v2, :cond_9

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    shr-int/lit8 p2, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result p2

    if-eq p2, v2, :cond_3

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_5

    .line 12
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    .line 15
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object p1

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 16
    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 17
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-eq p1, v1, :cond_7

    shr-int/lit8 p2, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-ltz p1, :cond_8

    .line 22
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/Vector;

    invoke-virtual {p2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 25
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object p1

    :cond_9
    return-object p2
.end method

.method public getParentNode(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result p0

    return p0
.end method

.method public getParentNode(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result p0

    return p0
.end method

.method public getPrevSibling(IZ)I
    .locals 4

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    .line 4
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_0

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getRealPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result p0

    return p0
.end method

.method public getRealPrevSibling(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    aget-object v3, v2, p1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    aput-object v1, v2, p1

    aget-object p1, p0, v0

    const/16 v2, 0x800

    aget-object p1, p1, v2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v2, :cond_2

    aput-object v1, p0, v0

    :cond_2
    return-object v3
.end method

.method public insertBefore(III)I
    .locals 4

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->appendChild(II)V

    return p2

    :cond_0
    shr-int/lit8 p1, p2, 0xb

    and-int/lit16 v0, p2, 0x7ff

    shr-int/lit8 v1, p3, 0xb

    and-int/lit16 p3, p3, 0x7ff

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, p2, v1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, p3, v2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return p2
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeCount:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_1

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v3, v0, 0x7ff

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v0, v0, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v3, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    :goto_2
    if-eq v0, v2, :cond_4

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v3, v0, 0x7ff

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_2

    :cond_4
    return v2
.end method

.method public print()V
    .locals 0

    .line 1
    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x40

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    new-array v0, v2, [I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    return-void
.end method

.method public setAsLastChild(II)V
    .locals 2

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setAttributeNode(II)I
    .locals 11

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    shr-int/lit8 v1, p2, 0xb

    and-int/lit16 v2, p2, 0x7ff

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/4 v5, -0x1

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-eq v4, v5, :cond_1

    shr-int/lit8 v7, v4, 0xb

    and-int/lit16 v8, v4, 0x7ff

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v9, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    move v10, v6

    move v6, v4

    move v4, v10

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v4, v5, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    if-ne v6, v5, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_2

    :cond_2
    shr-int/lit8 v5, v6, 0xb

    and-int/lit16 v6, v6, 0x7ff

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v9, v3, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v3, v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v3

    shr-int/lit8 v5, v3, 0xb

    and-int/lit16 v3, v3, 0x7ff

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v4
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .line 13
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    shr-int/lit8 p3, p2, 0xb

    and-int/lit16 p4, p2, 0x7ff

    .line 14
    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, p5, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 p5, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, p5, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p3, p2, p5, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return p2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    shr-int/lit8 p3, p2, 0xb

    and-int/lit16 p4, p2, 0x7ff

    .line 2
    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, p5, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 p5, p1, 0xb

    and-int/lit16 v0, p1, 0x7ff

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, p5, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, p2, p5, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 6
    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p5, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p5

    if-eqz p6, :cond_1

    or-int/lit16 p5, p5, 0x200

    .line 7
    iget-object p6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, p6, p5, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 8
    iget-object p5, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p5, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p5

    .line 9
    invoke-virtual {p0, p5, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    :cond_1
    if-eqz p7, :cond_2

    const/16 p1, 0x14

    .line 10
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result p1

    shr-int/lit8 p5, p1, 0xb

    and-int/lit16 p6, p1, 0x7ff

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 12
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p7, p5, p6}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    :cond_2
    return p2
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIdAttribute(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setIdAttributeNode(II)V
    .locals 3

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 p2, p2, 0x7ff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v1, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result p1

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .locals 5

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 p1, p1, 0x7ff

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method public setNamespacesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method public synchronizeChildren()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->synchronizeData()V

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    .line 6
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 8
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v4, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    .line 10
    :cond_1
    iput-object v4, v2, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 11
    :goto_1
    iput-object p0, v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    .line 12
    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    .line 13
    iput-object v2, v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 14
    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_2

    .line 15
    move-object v2, v4

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    goto :goto_2

    :cond_2
    const/16 v5, 0xa

    if-ne v2, v5, :cond_3

    .line 16
    move-object v2, v4

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->docType:Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    .line 17
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    move-object v2, v4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 18
    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 19
    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    .line 20
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->lastChild(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V

    .line 21
    :cond_5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public final synchronizeChildren(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;I)V
    .locals 7

    .line 22
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getMutationEvents()Z

    move-result v0

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setMutationEvents(Z)V

    .line 24
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 27
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 28
    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    move v3, v2

    move-object v2, p2

    :goto_0
    if-eq v3, v5, :cond_2

    .line 29
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-nez p2, :cond_1

    move-object p2, v6

    goto :goto_1

    .line 30
    :cond_1
    iput-object v6, v2, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 31
    :goto_1
    iput-object p1, v6, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    .line 32
    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    .line 33
    iput-object v2, v6, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 34
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    move-object v2, v6

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 35
    iput-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 36
    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    .line 37
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->lastChild(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V

    .line 38
    :cond_3
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    .line 39
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setMutationEvents(Z)V

    return-void
.end method

.method public final synchronizeChildren(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;I)V
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->getMutationEvents()Z

    move-result v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setMutationEvents(Z)V

    .line 42
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result p2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p2, v3, :cond_1

    .line 44
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    .line 45
    :cond_0
    iput-object v3, v2, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 46
    :goto_1
    iput-object p1, v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    .line 47
    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    .line 48
    iput-object v2, v3, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 49
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result p2

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 50
    iput-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    .line 51
    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    .line 52
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->lastChild(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V

    .line 53
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setMutationEvents(Z)V

    return-void
.end method

.method public synchronizeData()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v1, :cond_7

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;-><init>()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    move v4, v2

    :cond_1
    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    shr-int/lit8 v5, v4, 0xb

    and-int/lit16 v4, v4, 0x7ff

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v6, v5, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    move-object v5, p0

    :goto_1
    if-ltz v4, :cond_4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_3

    instance-of v8, v7, Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    invoke-interface {v8}, Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;->getNodeIndex()I

    move-result v8

    if-ne v8, v6, :cond_2

    move-object v5, v7

    goto :goto_3

    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    :goto_4
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0, v0, v5}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :goto_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
