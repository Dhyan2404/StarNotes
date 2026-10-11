.class public Lnet/sf/saxon/tree/wrapper/RebasedDocument;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"


# instance fields
.field public final j:Lnet/sf/saxon/om/TreeInfo;

.field public final k:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/TreeInfo;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/TreeInfo;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->k:Ljava/util/function/Function;

    iput-object p3, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->l:Ljava/util/function/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/RebasedNode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/om/GenericTreeInfo;->setRootNode(Lnet/sf/saxon/om/NodeInfo;)V

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    return-void
.end method


# virtual methods
.method public getBaseUriMapper()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->k:Ljava/util/function/Function;

    return-object p0
.end method

.method public getSystemIdMapper()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->l:Ljava/util/function/Function;

    return-object p0
.end method

.method public getUnderlyingTree()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    return-object p0
.end method

.method public isTyped()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result p0

    return p0
.end method

.method public selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    iget-object p2, p0, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->j:Lnet/sf/saxon/om/TreeInfo;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/wrapper/RebasedDocument;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/RebasedNode;

    move-result-object p0

    return-object p0
.end method

.method public wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/RebasedNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/RebasedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/RebasedDocument;Lnet/sf/saxon/tree/wrapper/RebasedNode;)Lnet/sf/saxon/tree/wrapper/RebasedNode;

    move-result-object p0

    return-object p0
.end method
