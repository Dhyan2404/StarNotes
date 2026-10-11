.class public Lcom/sun/org/apache/xpath/internal/objects/XObject;
.super Lcom/sun/org/apache/xpath/internal/Expression;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLASS_BOOLEAN:I = 0x1

.field public static final CLASS_NODESET:I = 0x4

.field public static final CLASS_NULL:I = -0x1

.field public static final CLASS_NUMBER:I = 0x2

.field public static final CLASS_RTREEFRAG:I = 0x5

.field public static final CLASS_STRING:I = 0x3

.field public static final CLASS_UNKNOWN:I = 0x0

.field public static final CLASS_UNRESOLVEDVARIABLE:I = 0x258

.field static final serialVersionUID:J = -0xb67edf6448449e7L


# instance fields
.field protected m_obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/Expression;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObjectFactory;->create(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObjectFactory;->create(Ljava/lang/Object;Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    return-void
.end method

.method public appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public bool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public boolWithSideEffects()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    return p0
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    const/4 p1, 0x0

    const-string p2, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public castToType(ILcom/sun/org/apache/xpath/internal/XPathContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANT_CONVERT_TO_TYPE"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method public deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public destruct()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/sun/org/apache/xpath/internal/XPathException;

    invoke-direct {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathException;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    throw p2
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getFresh()Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greaterThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->lessThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public greaterThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->lessThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public lessThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->greaterThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lessThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->greaterThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    return-object p0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public notEquals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->notEquals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public num()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_CANT_CONVERT_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public numWithSideEffects()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public rtf()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public rtf(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->rtf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result v0

    :cond_0
    return v0
.end method

.method public rtree()Lorg/w3c/dom/DocumentFragment;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public rtree(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lorg/w3c/dom/DocumentFragment;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->rtf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    :goto_0
    return-object p0
.end method

.method public str()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
