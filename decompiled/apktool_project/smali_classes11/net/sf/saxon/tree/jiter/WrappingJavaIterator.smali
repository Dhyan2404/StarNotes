.class public Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/saxon/om/Item;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/iter/LookaheadIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/tree/iter/LookaheadIteratorImpl;->makeLookaheadIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/tree/iter/LookaheadIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/jiter/WrappingJavaIterator;->e:Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
