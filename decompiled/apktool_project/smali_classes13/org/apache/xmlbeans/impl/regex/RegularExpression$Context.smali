.class final Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field private charArrayTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;

.field private characterIteratorTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;

.field closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

.field inuse:Z

.field length:I

.field limit:I

.field match:Lorg/apache/xmlbeans/impl/regex/Match;

.field start:I

.field private stringTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;

.field target:Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return-void
.end method

.method private resetCommon(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;-><init>()V

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->reset()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public reset(Ljava/lang/String;III)V
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->stringTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->stringTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->resetTarget(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->stringTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->target:Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;

    .line 12
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 13
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 14
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method

.method public reset(Ljava/text/CharacterIterator;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->characterIteratorTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->characterIteratorTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;->resetTarget(Ljava/text/CharacterIterator;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->characterIteratorTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->target:Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;

    .line 5
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 6
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 7
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method

.method public reset([CIII)V
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->charArrayTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;-><init>([C)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->charArrayTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;->resetTarget([C)V

    .line 18
    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->charArrayTarget:Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->target:Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;

    .line 19
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 20
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    .line 21
    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->resetCommon(I)V

    return-void
.end method

.method public declared-synchronized setInUse(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
