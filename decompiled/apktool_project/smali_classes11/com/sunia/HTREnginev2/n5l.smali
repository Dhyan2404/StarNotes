.class public final Lcom/sunia/HTREnginev2/n5l;
.super Lcom/sunia/HTREnginev2/rnn;
.source "SourceFile"


# instance fields
.field public j:Lnet/sf/saxon/tree/linked/NodeImpl;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/rnn;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodePredicate;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n5l;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rnn;->f()V

    return-void
.end method


# virtual methods
.method public j(Lnet/sf/saxon/tree/linked/NodeImpl;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n5l;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/n5l;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n5l;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/rnn;->j(Lnet/sf/saxon/tree/linked/NodeImpl;)Z

    move-result p0

    return p0
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPreviousInDocument()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    return-void
.end method
