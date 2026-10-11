.class public Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;
.super Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3e9fa9c3363f67d5L


# instance fields
.field protected m_inNaturalOrderStatic:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method


# virtual methods
.method public canBeWalkedInNaturalDocOrderStatic()Z
    .locals 4

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->m_firstWalker:Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getAxis()I

    move-result v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->isDocOrdered()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    if-nez v3, :cond_7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->isDocOrdered()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    if-eq v2, p0, :cond_5

    const/4 p0, 0x5

    if-eq v2, p0, :cond_5

    const/16 p0, 0x11

    if-eq v2, p0, :cond_5

    const/16 p0, 0x12

    if-eq v2, p0, :cond_5

    :cond_4
    const/4 p0, 0x2

    if-ne v2, p0, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->getNextWalker()Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    goto :goto_0

    :cond_8
    return v0

    :cond_9
    return v1

    :cond_a
    return v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->fixupVariables(Ljava/util/Vector;I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;->getAnalysisBits()I

    move-result p1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isNaturalDocOrder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    :goto_0
    return-void
.end method

.method public isDocOrdered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return p0
.end method
