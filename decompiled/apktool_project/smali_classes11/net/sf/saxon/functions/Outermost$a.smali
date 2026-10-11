.class public Lnet/sf/saxon/functions/Outermost$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Outermost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/om/NodeInfo;

.field public g:I

.field public final synthetic h:Lnet/sf/saxon/functions/Outermost;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/Outermost;Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/Outermost$a;->h:Lnet/sf/saxon/functions/Outermost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/functions/Outermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/Outermost$a;->g:I

    iput-object p2, p0, Lnet/sf/saxon/functions/Outermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Outermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Outermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/Outermost$a;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/Outermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/functions/Outermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lnet/sf/saxon/functions/Outermost$a;->g:I

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/functions/Outermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    :cond_2
    iput-object v0, p0, Lnet/sf/saxon/functions/Outermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    .line 7
    iget v1, p0, Lnet/sf/saxon/functions/Outermost$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/Outermost$a;->g:I

    return-object v0
.end method
