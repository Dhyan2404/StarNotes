.class public Lnet/sf/saxon/om/LazySequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Sequence;


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/om/LazySequence;->f:Z

    iput-object p1, p0, Lnet/sf/saxon/om/LazySequence;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public head()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/om/LazySequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/om/LazySequence;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/om/LazySequence;->f:Z

    iget-object v0, p0, Lnet/sf/saxon/om/LazySequence;->e:Lnet/sf/saxon/om/SequenceIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A LazySequence can only be read once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public makeRepeatable()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
