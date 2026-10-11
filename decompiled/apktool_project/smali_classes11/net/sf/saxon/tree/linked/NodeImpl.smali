.class public abstract Lnet/sf/saxon/tree/linked/NodeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/MutableNodeInfo;
.implements Lnet/sf/saxon/tree/util/SteppingNode;
.implements Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;
.implements Lnet/sf/saxon/s9api/Location;


# static fields
.field public static final NODE_LETTER:[C

.field public static final synthetic g:Z


# instance fields
.field public e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/tree/linked/NodeImpl;->NODE_LETTER:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x74s
        0x78s
        0x78s
        0x78s
        0x70s
        0x63s
        0x72s
        0x78s
        0x78s
        0x78s
        0x6es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLastChild()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->a()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V
    .locals 0

    return-void
.end method

.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lnet/sf/saxon/type/SchemaType;->atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public attributes()Lnet/sf/saxon/om/AttributeMap;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object p0

    return-object p0
.end method

.method public final compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 7

    instance-of v0, p1, Lnet/sf/saxon/tree/NamespaceNode;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSequenceNumber()J

    move-result-wide v0

    check-cast p1, Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSequenceNumber()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->compareOrder(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;)I

    move-result p0

    return p0
.end method

.method public delete()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->removeChild(Lnet/sf/saxon/tree/linked/NodeImpl;)V

    new-instance v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-direct {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setImaginary(Z)V

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    return-void
.end method

.method public effectiveBooleanValue()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSequenceNumber()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->generateId(Ljava/lang/StringBuilder;)V

    sget-object v2, Lnet/sf/saxon/tree/linked/NodeImpl;->NODE_LETTER:[C

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hashCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->generateId(Ljava/lang/StringBuilder;)V

    sget-object v0, Lnet/sf/saxon/tree/linked/NodeImpl;->NODE_LETTER:[C

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p0

    return p0
.end method

.method public getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getFirstChild()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLastChild()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    if-ne p0, p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1
.end method

.method public getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getNthChild(I)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getParent()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    instance-of v1, v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->isImaginary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    return-object p0
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPreviousInDocument()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->a()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getNthChild(I)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreviousSibling()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPreviousSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    return-object p0
.end method

.method public getSequenceNumber()J
    .locals 5

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSequenceNumber()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v3, 0x10000

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    :goto_1
    return-wide v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPreviousInDocument()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getSiblingPosition()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    return p0
.end method

.method public getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 2

    .line 2
    check-cast p1, Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFirstChild()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic head()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->head()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public head()Lnet/sf/saxon/tree/linked/NodeImpl;
    .locals 0

    .line 1
    return-object p0
.end method

.method public insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 0

    return-void
.end method

.method public insertSiblings([Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz v0, :cond_1

    iget p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    invoke-virtual {v0, p1, p0, p3}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->insertChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add siblings if there is no parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDeleted()Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->isDeleted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1
    instance-of p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz p1, :cond_0

    .line 2
    check-cast p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 3

    .line 5
    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown axis number "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    new-instance p1, Lcom/sunia/HTREnginev2/o5l;

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/o5l;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 8
    :pswitch_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_2
    new-instance p1, Lcom/sunia/HTREnginev2/p5l;

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/p5l;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 10
    :pswitch_3
    new-instance p1, Lcom/sunia/HTREnginev2/n5l;

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/n5l;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 11
    :pswitch_4
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    if-nez p0, :cond_0

    .line 12
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_5
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 15
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    invoke-static {p0, p2}, Lnet/sf/saxon/tree/NamespaceNode;->makeIterator(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_6
    new-instance p1, Lcom/sunia/HTREnginev2/yog;

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/yog;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 18
    :pswitch_7
    new-instance p1, Lcom/sunia/HTREnginev2/xog;

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/xog;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 19
    :pswitch_8
    new-instance p1, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;

    invoke-direct {p1, p0, v1, p2}, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;ZLnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 20
    :pswitch_9
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    instance-of p1, p2, Lnet/sf/saxon/pattern/NameTest;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lnet/sf/saxon/pattern/NameTest;

    .line 21
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NameTest;->getPrimitiveType()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 22
    check-cast p0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NameTest;->getFingerprint()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;->f(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    new-instance p1, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;

    invoke-direct {p1, p0, v0, p2}, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;ZLnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 25
    :cond_3
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_a
    instance-of p1, p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    if-eqz p1, :cond_4

    .line 27
    check-cast p0, Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->iterateChildren(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 28
    :cond_4
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_b
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 30
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 31
    :cond_5
    check-cast p0, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/linked/ElementImpl;->i(Lnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_c
    new-instance p1, Lcom/sunia/HTREnginev2/ea;

    invoke-direct {p1, p0, p2, v1}, Lcom/sunia/HTREnginev2/ea;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    .line 33
    :pswitch_d
    new-instance p1, Lcom/sunia/HTREnginev2/ea;

    invoke-direct {p1, p0, p2, v0}, Lcom/sunia/HTREnginev2/ea;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newBuilder()Lnet/sf/saxon/event/Builder;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPhysicalRoot()Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->newBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    return-void
.end method

.method public removeTypeAnnotation()V
    .locals 0

    return-void
.end method

.method public rename(Lnet/sf/saxon/om/NodeName;Z)V
    .locals 0

    return-void
.end method

.method public replace([Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    iget v1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    invoke-virtual {v0, p1, v1, p2}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->replaceChildrenAt([Lnet/sf/saxon/om/NodeInfo;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot replace a parentless node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot replace a deleted node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setAttributes(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setAttributes() applies only to element nodes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->e:Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    return-void
.end method

.method public final setSiblingPosition(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/tree/linked/NodeImpl;->f:I

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->setSystemId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    return-void
.end method
