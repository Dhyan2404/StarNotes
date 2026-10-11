.class public Lnet/sf/saxon/om/MemoSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Sequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;,
        Lnet/sf/saxon/om/MemoSequence$State;
    }
.end annotation


# static fields
.field public static final synthetic i:Z


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:[Lnet/sf/saxon/om/Item;

.field public g:I

.field public h:Lnet/sf/saxon/om/MemoSequence$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    sget-object v0, Lnet/sf/saxon/om/MemoSequence$State;->UNREAD:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object p1, p0, Lnet/sf/saxon/om/MemoSequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/MemoSequence;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/MemoSequence;)[Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/MemoSequence$State;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    return-object p0
.end method

.method public static synthetic d(Lnet/sf/saxon/om/MemoSequence;Lnet/sf/saxon/om/MemoSequence$State;)Lnet/sf/saxon/om/MemoSequence$State;
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    return-object p1
.end method

.method public static synthetic e(Lnet/sf/saxon/om/MemoSequence;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/MemoSequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/om/MemoSequence;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence;->i()V

    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/om/MemoSequence;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/MemoSequence;->h(Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public final h(Lnet/sf/saxon/om/Item;)V
    .locals 3

    iget v0, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    iget v1, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    array-length v1, v0

    iget v2, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    sub-int/2addr v1, v2

    const/16 v3, 0x1e

    if-le v1, v3, :cond_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    :cond_0
    return-void
.end method

.method public declared-synchronized itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    if-eqz v1, :cond_1

    iget v2, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    if-ge p1, v2, :cond_1

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    sget-object v2, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    if-eq v1, v2, :cond_7

    sget-object v2, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lnet/sf/saxon/om/MemoSequence$State;->UNREAD:Lnet/sf/saxon/om/MemoSequence$State;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_3

    iput-object v2, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    sget-object v2, Lnet/sf/saxon/om/MemoSequence$State;->MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v2, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    const/16 v2, 0x32

    new-array v2, v2, [Lnet/sf/saxon/om/Item;

    iput-object v2, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/om/MemoSequence;->h(Lnet/sf/saxon/om/Item;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_3
    iget v1, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object p1, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object p1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_4
    invoke-virtual {p0, v1}, Lnet/sf/saxon/om/MemoSequence;->h(Lnet/sf/saxon/om/Item;)V

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    aget-object p1, v0, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/sf/saxon/om/MemoSequence$a;->a:[I

    iget-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown iterator state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Attempt to access a variable while it is being evaluated"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "XTDE0640"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v1

    :cond_2
    iget v0, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    new-instance v1, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;

    iget-object v3, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    invoke-direct {v1, v3, v2, v0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;-><init>([Lnet/sf/saxon/om/Item;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    aget-object v0, v0, v2

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_3
    sget-object v0, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_4
    new-instance v0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;-><init>(Lnet/sf/saxon/om/MemoSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_5
    sget-object v0, Lnet/sf/saxon/om/MemoSequence$State;->BUSY:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    iget-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v1, v0, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v1, :cond_7

    sget-object v1, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v1, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    const/16 v0, 0x32

    :try_start_6
    new-array v0, v0, [Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->f:[Lnet/sf/saxon/om/Item;

    iput v2, p0, Lnet/sf/saxon/om/MemoSequence;->g:I

    sget-object v0, Lnet/sf/saxon/om/MemoSequence$State;->MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

    iput-object v0, p0, Lnet/sf/saxon/om/MemoSequence;->h:Lnet/sf/saxon/om/MemoSequence$State;

    new-instance v0, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/MemoSequence$ProgressiveIterator;-><init>(Lnet/sf/saxon/om/MemoSequence;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
