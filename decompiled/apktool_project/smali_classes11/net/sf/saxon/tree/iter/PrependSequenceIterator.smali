.class public Lnet/sf/saxon/tree/iter/PrependSequenceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public e:Lnet/sf/saxon/om/Item;

.field public f:Lnet/sf/saxon/om/SequenceIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->e:Lnet/sf/saxon/om/Item;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->e:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->e:Lnet/sf/saxon/om/Item;

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
