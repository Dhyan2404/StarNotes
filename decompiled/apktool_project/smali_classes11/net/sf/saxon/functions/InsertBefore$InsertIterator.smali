.class public Lnet/sf/saxon/functions/InsertBefore$InsertIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/InsertBefore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertIterator"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/om/SequenceIterator;

.field public final g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    iput-object p1, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->g:I

    if-ne p3, p1, :cond_0

    move v0, p1

    :cond_0
    iput-boolean v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->i:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object p0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->i:Z

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    iget v2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->g:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->i:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_3

    iget v2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    iget v3, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->g:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    iput-boolean v1, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->i:Z

    iget-object v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget v2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/sf/saxon/functions/InsertBefore$InsertIterator;->h:I

    return-object v0
.end method
