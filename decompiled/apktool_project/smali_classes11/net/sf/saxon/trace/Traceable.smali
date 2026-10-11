.class public interface abstract Lnet/sf/saxon/trace/Traceable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Locatable;


# virtual methods
.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getObjectName()Lnet/sf/saxon/om/StructuredQName;
.end method
