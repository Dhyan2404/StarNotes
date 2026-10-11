.class public Lnet/sf/saxon/tree/iter/SingletonIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# static fields
.field public static final synthetic g:Z


# instance fields
.field public final e:Lnet/sf/saxon/om/Item;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->f:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

    return-void
.end method

.method public static makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/iter/SingletonIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/SingletonIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/SingletonIterator;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/iter/SingletonIterator;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public getValue()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->f:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->f:Z

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingletonIterator;->e:Lnet/sf/saxon/om/Item;

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
