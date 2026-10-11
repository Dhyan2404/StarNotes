.class public Lnet/sf/saxon/tree/iter/EmptyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/om/AtomizedValueIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/iter/EmptyIterator$a;,
        Lnet/sf/saxon/tree/iter/EmptyIterator$b;
    }
.end annotation


# static fields
.field public static final e:Lnet/sf/saxon/tree/iter/EmptyIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/iter/EmptyIterator;

    invoke-direct {v0}, Lnet/sf/saxon/tree/iter/EmptyIterator;-><init>()V

    sput-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator;->e:Lnet/sf/saxon/tree/iter/EmptyIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator;->e:Lnet/sf/saxon/tree/iter/EmptyIterator;

    return-object v0
.end method

.method public static getInstance()Lnet/sf/saxon/tree/iter/EmptyIterator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator;->e:Lnet/sf/saxon/tree/iter/EmptyIterator;

    return-object v0
.end method

.method public static ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator$a;->f:Lnet/sf/saxon/tree/iter/EmptyIterator$a;

    return-object v0
.end method

.method public static ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator$b;->f:Lnet/sf/saxon/tree/iter/EmptyIterator$b;

    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;
    .locals 0

    .line 1
    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public nextAtomizedValue()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
