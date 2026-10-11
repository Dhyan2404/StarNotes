.class public Lnet/sf/saxon/functions/Remove$RemoveIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Remove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveIterator"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:I

.field public g:I

.field public h:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->h:Lnet/sf/saxon/om/Item;

    iput-object p1, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput p2, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->f:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->f:I

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->h:Lnet/sf/saxon/om/Item;

    iget v1, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->f:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->h:Lnet/sf/saxon/om/Item;

    iget v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->g:I

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->h:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Remove$RemoveIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method
