.class public interface abstract Lcom/permissionx/guolindev/callback/ExplainReasonCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onExplainReason(Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .param p1    # Lcom/permissionx/guolindev/request/ExplainScope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/permissionx/guolindev/request/ExplainScope;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
