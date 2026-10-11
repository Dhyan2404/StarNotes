.class public interface abstract Lnet/sf/saxon/expr/PendingUpdateList;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addPutAction(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract apply(Lnet/sf/saxon/expr/XPathContext;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getAffectedTrees()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/om/MutableNodeInfo;",
            ">;"
        }
    .end annotation
.end method
