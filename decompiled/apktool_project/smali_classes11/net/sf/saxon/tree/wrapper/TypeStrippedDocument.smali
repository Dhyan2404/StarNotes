.class public Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"


# instance fields
.field public j:Lnet/sf/saxon/om/TreeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/TreeInfo;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    return-void
.end method


# virtual methods
.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget-object p2, p0, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/TypeStrippedDocument;Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;)Lnet/sf/saxon/tree/wrapper/TypeStrippedNode;

    move-result-object p0

    return-object p0
.end method
