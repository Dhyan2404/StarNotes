.class public Lcom/sun/org/apache/xpath/internal/compiler/OpMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BLOCKTOKENQUEUESIZE:I = 0x1f4

.field public static final MAPINDEX_LENGTH:I = 0x1

.field static final MAXTOKENQUEUESIZE:I = 0x1f4


# instance fields
.field protected m_currentPattern:Ljava/lang/String;

.field m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

.field m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;-><init>(II)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    return-void
.end method

.method public static getFirstChildPos(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static getFirstChildPosOfStep(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getNextOpPos([II)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 2
    aget p0, p0, v0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArgLength(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public getArgLengthOfStep(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    return p0
.end method

.method public getFirstPredicateOpPos(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-lt v0, v1, :cond_0

    const/16 v1, 0x35

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_0
    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_OPCODE"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getNextOpPos(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getNextStepPos(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x35

    const/16 v2, 0x25

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v3, 0x16

    if-lt v0, v3, :cond_4

    const/16 v3, 0x19

    if-gt v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    if-lt p0, v2, :cond_3

    if-le p0, v1, :cond_2

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_STEP"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOp(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public getOpMap()Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    return-object p0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getStepLocalName(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    if-ltz v2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne v1, v2, :cond_5

    const-string p0, "*"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStepNS(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, -0x3

    if-ne p0, p1, :cond_1

    const-string p0, "*"

    return-object p0

    :cond_1
    return-object v2
.end method

.method public getStepTestType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public getToken(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    return-object p0
.end method

.method public getTokenQueueSize()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result p0

    return p0
.end method

.method public setOp(II)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->setElementAt(II)V

    return-void
.end method

.method public shrink()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->setToSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->setElementAt(II)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->setElementAt(II)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_opMap:Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->setElementAt(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setToSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_tokenQueue:Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object p0
.end method
