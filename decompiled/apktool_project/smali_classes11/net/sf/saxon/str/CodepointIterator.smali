.class public Lnet/sf/saxon/str/CodepointIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# instance fields
.field public final e:Lnet/sf/saxon/z/IntIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/CodepointIterator;->e:Lnet/sf/saxon/z/IntIterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/str/CodepointIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/str/CodepointIterator;->e:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-object p0, p0, Lnet/sf/saxon/str/CodepointIterator;->e:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
