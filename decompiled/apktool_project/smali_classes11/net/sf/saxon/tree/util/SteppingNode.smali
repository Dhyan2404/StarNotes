.class public interface abstract Lnet/sf/saxon/tree/util/SteppingNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# virtual methods
.method public abstract getFirstChild()Lnet/sf/saxon/tree/util/SteppingNode;
.end method

.method public abstract getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;
.end method

.method public bridge synthetic getParent()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/tree/util/SteppingNode;->getParent()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    return-object p0
.end method

.method public abstract getParent()Lnet/sf/saxon/tree/util/SteppingNode;
.end method

.method public abstract getPreviousSibling()Lnet/sf/saxon/tree/util/SteppingNode;
.end method

.method public abstract getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/util/SteppingNode;
.end method
