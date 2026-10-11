.class public final Lcom/sunia/HTREnginev2/o5l;
.super Lcom/sunia/HTREnginev2/rnn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/rnn;-><init>(Lnet/sf/saxon/tree/linked/NodeImpl;Lnet/sf/saxon/pattern/NodePredicate;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/rnn;->f()V

    return-void
.end method


# virtual methods
.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getPreviousInDocument()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rnn;->f:Lnet/sf/saxon/tree/linked/NodeImpl;

    return-void
.end method
