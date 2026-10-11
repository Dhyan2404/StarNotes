.class public abstract Lcom/sunia/HTREnginev2/rnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public e:Lnet/sf/saxon/tree/linked/NodeImpl;

.field public f:Lnet/sf/saxon/tree/linked/NodeImpl;

.field public g:Lnet/sf/saxon/pattern/NodePredicate;

.field public h:Lnet/sf/saxon/tree/linked/NodeImpl;

.field public i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodePredicate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->h:Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/rnn;->i:I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rnn;->e:Lnet/sf/saxon/tree/linked/NodeImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rnn;->g:Lnet/sf/saxon/pattern/NodePredicate;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rnn;->w()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/rnn;->j(Lnet/sf/saxon/tree/linked/NodeImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(Lnet/sf/saxon/tree/linked/NodeImpl;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnn;->g:Lnet/sf/saxon/pattern/NodePredicate;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rnn;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->h:Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/sunia/HTREnginev2/rnn;->i:I

    return-object v0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->h:Lnet/sf/saxon/tree/linked/NodeImpl;

    .line 6
    iget v0, p0, Lcom/sunia/HTREnginev2/rnn;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/rnn;->i:I

    .line 7
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rnn;->f()V

    .line 8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnn;->h:Lnet/sf/saxon/tree/linked/NodeImpl;

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract w()V
.end method
