.class public final Lcom/sunia/HTREnginev2/xog;
.super Lcom/sunia/HTREnginev2/rnn;
.source "SourceFile"


# instance fields
.field public final j:Lnet/sf/saxon/tree/linked/NodeImpl;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/rnn;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodePredicate;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/tree/linked/NodeImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xog;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextSibling()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    if-nez p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/rnn;->j(Lnet/sf/saxon/tree/linked/NodeImpl;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xog;->w()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xog;->j:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNextInDocument(Lnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    return-void
.end method
