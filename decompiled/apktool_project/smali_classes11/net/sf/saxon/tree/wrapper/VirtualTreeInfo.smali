.class public Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;
.super Lnet/sf/saxon/om/GenericTreeInfo;
.source "SourceFile"


# instance fields
.field public j:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/tree/wrapper/VirtualCopy;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/NodeInfo;)V

    return-void
.end method


# virtual methods
.method public getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getOriginalNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntityNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getOriginalNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntityNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public isCopyAccumulators()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->j:Z

    return p0
.end method

.method public setCopyAccumulators(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->j:Z

    return-void
.end method
