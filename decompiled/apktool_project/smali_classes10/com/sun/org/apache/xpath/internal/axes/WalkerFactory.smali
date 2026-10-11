.class public Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final BITS_COUNT:I = 0xff

.field public static final BITS_RESERVED:I = 0xf00

.field public static final BIT_ANCESTOR:I = 0x2000

.field public static final BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final BIT_ATTRIBUTE:I = 0x8000

.field public static final BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final BIT_CHILD:I = 0x10000

.field public static final BIT_DESCENDANT:I = 0x20000

.field public static final BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final BIT_FILTER:I = 0x4000000

.field public static final BIT_FOLLOWING:I = 0x80000

.field public static final BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final BIT_MATCH_PATTERN:I = -0x80000000

.field public static final BIT_NAMESPACE:I = 0x200000

.field public static final BIT_NODETEST_ANY:I = 0x40000000

.field public static final BIT_PARENT:I = 0x400000

.field public static final BIT_PRECEDING:I = 0x800000

.field public static final BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final BIT_PREDICATE:I = 0x1000

.field public static final BIT_ROOT:I = 0x8000000

.field public static final BIT_SELF:I = 0x2000000

.field static final DEBUG_ITERATOR_CREATION:Z

.field static final DEBUG_PATTERN_CREATION:Z

.field static final DEBUG_WALKER_CREATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analyze(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p2, 0x0

    move v0, p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->analyzePredicate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    packed-switch v1, :pswitch_data_0

    const/high16 v2, 0x8000000

    packed-switch v1, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/high16 v1, -0x7fc00000

    goto :goto_0

    :pswitch_1
    const v1, -0x7fffe000

    goto :goto_0

    :pswitch_2
    const v1, -0x7fff8000

    goto :goto_0

    :pswitch_3
    or-int/2addr v0, v2

    goto :goto_1

    :pswitch_4
    const/high16 v1, 0x200000

    goto :goto_0

    :pswitch_5
    const/high16 v1, 0x2000000

    goto :goto_0

    :pswitch_6
    const/high16 v1, 0x1000000

    goto :goto_0

    :pswitch_7
    const/high16 v1, 0x800000

    goto :goto_0

    :pswitch_8
    const/high16 v1, 0x400000

    goto :goto_0

    :pswitch_9
    const/high16 v1, 0x100000

    goto :goto_0

    :pswitch_a
    const/high16 v1, 0x80000

    goto :goto_0

    :pswitch_b
    const/4 v1, 0x2

    if-ne v1, p2, :cond_2

    if-ne v2, v0, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2
    const/high16 v1, 0x40000

    goto :goto_0

    :pswitch_c
    const/high16 v1, 0x20000

    goto :goto_0

    :pswitch_d
    const/high16 v1, 0x10000

    goto :goto_0

    :pswitch_e
    const v1, 0x8000

    goto :goto_0

    :pswitch_f
    or-int/lit16 v0, v0, 0x4000

    goto :goto_1

    :pswitch_10
    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :pswitch_11
    const/high16 v1, 0x4000000

    :goto_0
    or-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v2, 0x409

    if-ne v2, v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result p1

    if-gez p1, :cond_0

    :cond_4
    and-int/lit16 p0, p2, 0xff

    or-int/2addr p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public static analyzePredicate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLength(I)I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->countPredicates(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static canCrissCross(I)Z
    .locals 2

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksDownOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUpOnly(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method public static canSkipSubtrees(I)Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private static createDefaultStepPattern(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;ILcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;ILcom/sun/org/apache/xpath/internal/patterns/StepPattern;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p2

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    packed-switch p2, :pswitch_data_0

    const/4 p3, 0x7

    const/16 p4, 0xc

    const/4 p5, 0x6

    const/16 v0, 0xb

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v6, 0xa

    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v7, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    const/16 p2, 0x500

    const/16 p3, 0x13

    invoke-direct {v7, p2, p3, p3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(III)V

    goto :goto_0

    :pswitch_1
    const/16 p3, 0x9

    goto :goto_1

    :pswitch_2
    const/16 p3, 0xd

    :goto_0
    move v4, p3

    move v5, v4

    goto :goto_4

    :pswitch_3
    move v4, p3

    move v5, p4

    goto :goto_4

    :pswitch_4
    move v4, p5

    move v5, v0

    goto :goto_4

    :pswitch_5
    move v4, v1

    move v5, v6

    goto :goto_4

    :pswitch_6
    move v5, p3

    move v4, p4

    goto :goto_4

    :pswitch_7
    move v5, p5

    move v4, v0

    goto :goto_4

    :pswitch_8
    move v4, v2

    move v5, v3

    goto :goto_4

    :pswitch_9
    move v5, v1

    goto :goto_2

    :pswitch_a
    const/4 p3, 0x2

    :goto_1
    move v5, p3

    :goto_2
    move v4, v6

    goto :goto_4

    :pswitch_b
    move v5, v2

    move v4, v3

    goto :goto_4

    :pswitch_c
    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_4

    :pswitch_d
    packed-switch p2, :pswitch_data_2

    add-int/lit8 p2, p1, 0x2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p2

    goto :goto_3

    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p2

    :goto_3
    new-instance v7, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    const/16 p3, 0x14

    invoke-direct {v7, p2, p3, p3}, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;II)V

    goto :goto_0

    :goto_4
    :pswitch_f
    if-nez v7, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    new-instance v7, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getCompiledPredicates(I)[Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setPredicates([Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
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

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private static createDefaultWalker(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;ILcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p3

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/16 v0, 0x13

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_1
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/16 v0, 0x9

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_2
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/16 v0, 0xd

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_3
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    const/16 v0, 0xc

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_4
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    const/16 v0, 0xb

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_5
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    const/16 v0, 0xa

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_6
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x7

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_7
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x6

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_8
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x5

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_9
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x4

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_a
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x3

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_b
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    const/4 v0, 0x2

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_c
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    invoke-direct {p3, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_d
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;

    invoke-direct {p3, p2, v1}, Lcom/sun/org/apache/xpath/internal/axes/ReverseAxesWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;I)V

    :goto_0
    move v0, v1

    goto :goto_1

    :pswitch_e
    new-instance p3, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;

    invoke-direct {p3, p2}, Lcom/sun/org/apache/xpath/internal/axes/FilterExprWalker;-><init>(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;)V

    :goto_1
    const/4 p2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x1043

    if-eqz v1, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v0, p2, p0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->initNodeTest(I)V

    :goto_3
    return-object p3

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
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

.method public static diagnoseIterator(Ljava/lang/String;ILcom/sun/org/apache/xpath/internal/compiler/Compiler;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static functionProximateOrContainsProximate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    add-int/2addr p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    invoke-static {p0, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static getAnalysisBitFromAxes(I)I
    .locals 1

    const/high16 v0, 0x40000

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/high16 p0, 0x4000000

    return p0

    :pswitch_1
    const/high16 p0, 0x8000000

    return p0

    :pswitch_2
    const/high16 p0, 0x20000000

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    const/high16 p0, 0x2000000

    return p0

    :pswitch_5
    const/high16 p0, 0x1000000

    return p0

    :pswitch_6
    const/high16 p0, 0x800000

    return p0

    :pswitch_7
    const/high16 p0, 0x400000

    return p0

    :pswitch_8
    const/high16 p0, 0x200000

    return p0

    :pswitch_9
    const/high16 p0, 0x100000

    return p0

    :pswitch_a
    const/high16 p0, 0x80000

    return p0

    :pswitch_b
    return v0

    :pswitch_c
    const/high16 p0, 0x20000

    return p0

    :pswitch_d
    const/high16 p0, 0x10000

    return p0

    :pswitch_e
    const p0, 0x8000

    return p0

    :pswitch_f
    const/16 p0, 0x4000

    return p0

    :pswitch_10
    const/16 p0, 0x2000

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getAnalysisString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getStepCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "NTANY|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "PRED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_2

    const-string v1, "ANC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_3

    const-string v1, "ANCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    const-string v1, "ATTR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const-string v1, "CH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string v1, "DESCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    const-string v1, "FOL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_9

    const-string v1, "FOLS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    const-string v1, "NS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    const-string v1, "P|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    const-string v1, "PREC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    const-string v1, "PRECS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    const-string v1, ".|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "FLT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const/high16 v1, 0x8000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_10

    const-string p0, "R|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAxisFromStep(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_NULL_ERROR_HANDLER"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p0, 0x13

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_a
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/4 p0, 0x0

    return p0

    :pswitch_e
    const/16 p0, 0x14

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
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

.method public static getStepCount(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static hasPredicate(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAbsolute(I)Z
    .locals 1

    const/high16 v0, 0xc000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static isDownwardAxisOfMany(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq v0, p0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p0, :cond_1

    const/4 v0, 0x6

    if-eq v0, p0, :cond_1

    const/16 v0, 0xb

    if-ne v0, p0, :cond_0

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

.method public static isNaturalDocOrder(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/high16 v0, 0x200000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isNaturalDocOrder(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    invoke-static {p3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->canCrissCross(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/high16 p2, 0x200000

    .line 4
    invoke-static {p3, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/high16 p2, 0x180000

    .line 5
    invoke-static {p3, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x1800000

    invoke-static {p3, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    move p2, v0

    move p3, p2

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v3, v1, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p3, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "*"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move p3, v2

    goto :goto_0

    :pswitch_1
    if-lez p2, :cond_5

    return v0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :pswitch_2
    if-eqz p3, :cond_6

    return v0

    .line 10
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result p1

    if-gez p1, :cond_3

    :cond_7
    return v2

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isOneStep(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOptimizableForDescendantIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p2, 0x0

    const/16 v0, 0x409

    move v2, p2

    move v3, v2

    move v4, v3

    move v5, v4

    move v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v7, v6, :cond_9

    if-eq v1, v0, :cond_0

    const/16 v9, 0x23

    if-eq v1, v9, :cond_0

    return p2

    :cond_0
    add-int/2addr v2, v8

    const/4 v1, 0x3

    if-le v2, v1, :cond_1

    return p2

    :cond_1
    invoke-static {p0, p1, v6}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->mightBeProximate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z

    move-result v9

    if-eqz v9, :cond_2

    return p2

    :cond_2
    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eq v8, v2, :cond_6

    return p2

    :pswitch_1
    if-eq v8, v2, :cond_3

    return p2

    :cond_3
    move v5, v8

    goto :goto_1

    :pswitch_2
    move v3, v8

    :pswitch_3
    if-ne v1, v2, :cond_4

    return p2

    :cond_4
    move v4, v8

    goto :goto_1

    :pswitch_4
    if-nez v3, :cond_6

    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    return p2

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepTestType(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result v6

    if-gez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v8

    if-eq v7, v8, :cond_8

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->countPredicates(I)I

    move-result p1

    if-lez p1, :cond_8

    return p2

    :cond_8
    move p1, v6

    goto :goto_0

    :pswitch_5
    return p2

    :cond_9
    :goto_2
    return v8

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return v2

    :pswitch_0
    invoke-static {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->functionProximateOrContainsProximate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :pswitch_2
    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWild(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadOneWalker(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->createDefaultWalker(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;ILcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static loadSteps(Lcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v6, p1

    invoke-static/range {p1 .. p3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->analyze(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)I

    move-result v7

    const/4 v8, 0x0

    move/from16 v9, p2

    move-object v0, v8

    move-object v10, v0

    move-object v11, v10

    :goto_0
    invoke-virtual {v6, v9}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    move-object/from16 v0, p1

    move v1, v9

    move-object/from16 v2, p0

    move v3, v7

    move-object v4, v10

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->createDefaultStepPattern(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;ILcom/sun/org/apache/xpath/internal/axes/MatchPatternIterator;ILcom/sun/org/apache/xpath/internal/patterns/StepPattern;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v0

    if-nez v10, :cond_0

    move-object v10, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v11}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V

    :goto_1
    invoke-virtual {v6, v9}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result v9

    if-gez v9, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v0

    goto :goto_0

    :cond_2
    :goto_2
    const/16 v1, 0xd

    move-object v2, v0

    move-object v4, v2

    move v3, v1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getAxis()I

    move-result v4

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setAxis(I)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getWhatToShow()I

    move-result v10

    const/4 v5, 0x2

    if-eq v10, v5, :cond_3

    const/16 v6, 0x1000

    if-ne v10, v6, :cond_8

    :cond_3
    if-ne v10, v5, :cond_4

    move v13, v5

    goto :goto_4

    :cond_4
    const/16 v6, 0x9

    move v13, v6

    :goto_4
    invoke-static {v3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getStaticScore()Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    move-result-object v5

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setNamespace(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setLocalName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getPredicates()[Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setPredicates([Lcom/sun/org/apache/xpath/internal/Expression;)V

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setPredicates([Lcom/sun/org/apache/xpath/internal/Expression;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setWhatToShow(I)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getRelativePathPattern()Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v6

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setStaticScore(Lcom/sun/org/apache/xpath/internal/objects/XNumber;)V

    const/16 v5, 0xb

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getAxis()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setAxis(I)V

    goto :goto_5

    :cond_5
    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getAxis()I

    move-result v6

    if-ne v5, v6, :cond_6

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setAxis(I)V

    :cond_6
    :goto_5
    move-object v2, v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getAxis()I

    move-result v6

    if-ne v3, v6, :cond_8

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setAxis(I)V

    :cond_8
    :goto_6
    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getRelativePathPattern()Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object v3

    move v15, v4

    move-object v4, v2

    move-object v2, v3

    move v3, v15

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0x10

    if-ge v3, v2, :cond_a

    new-instance v2, Lcom/sun/org/apache/xpath/internal/patterns/ContextMatchStepPattern;

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xpath/internal/patterns/ContextMatchStepPattern;-><init>(II)V

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->getStaticScore()Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    move-result-object v1

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setStaticScore(Lcom/sun/org/apache/xpath/internal/objects/XNumber;)V

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setStaticScore(Lcom/sun/org/apache/xpath/internal/objects/XNumber;)V

    :cond_a
    return-object v0
.end method

.method public static loadWalkers(Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->analyze(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)I

    move-result p3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_2

    invoke-static {p1, p2, p0, p3}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->createDefaultWalker(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;ILcom/sun/org/apache/xpath/internal/axes/WalkingIterator;I)Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->init(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setNextWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;->setPrevWalker(Lcom/sun/org/apache/xpath/internal/axes/AxesWalker;)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextStepPos(I)I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static mightBeProximate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLength(I)I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    :goto_1
    const/16 p2, 0x1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    if-ne p2, v0, :cond_3

    add-int/lit8 p2, p1, 0x2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_1

    return v2

    :pswitch_1
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return v2

    :cond_0
    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isProximateInnerExpr(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    :cond_1
    invoke-static {p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->functionProximateOrContainsProximate(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static newDTMIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IZ)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->analyze(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isOneStep(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/SelfIteratorNoPredicate;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksChildrenOnly(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isWild(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/ChildIterator;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/ChildIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksAttributes(I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/AttributeIterator;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/AttributeIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksNamespaces(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/high16 v0, 0x400000

    invoke-static {v2, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIteratorForward;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/OneStepIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_6
    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;

    invoke-direct {v0, p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/axes/DescendantIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    goto :goto_0

    :cond_7
    invoke-static {p0, v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isNaturalDocOrder(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sun/org/apache/xpath/internal/axes/WalkingIteratorSorted;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setIsTopLevel(Z)V

    return-object v0
.end method

.method public static walksAncestors(I)Z
    .locals 1

    const/16 v0, 0x6000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksAttributes(I)Z
    .locals 1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksChildren(I)Z
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksChildrenAndExtraAndSelfOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksChildrenOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksDescendants(I)Z
    .locals 1

    const/high16 v0, 0x60000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksDescendantsAndExtraAndSelfOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksDownExtraOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksDownOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksExtraNodes(I)Z
    .locals 1

    const v0, 0x208000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksExtraNodesOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksFilteredList(I)Z
    .locals 1

    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksFollowingOnlyMaybeAbsolute(I)Z
    .locals 1

    const/high16 v0, 0x2180000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksInDocOrder(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksNamespaces(I)Z
    .locals 1

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksSelfOnly(I)Z
    .locals 1

    const/high16 v0, 0x2000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksSideways(I)Z
    .locals 1

    const/high16 v0, 0x1980000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksSubtree(I)Z
    .locals 1

    const/high16 v0, 0x70000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksSubtreeOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksSubtreeOnlyFromRootOrContext(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksSubtreeOnlyMaybeAbsolute(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static walksUp(I)Z
    .locals 1

    const v0, 0x406000

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static walksUpOnly(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
