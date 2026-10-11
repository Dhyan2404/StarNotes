.class Lcom/couchbase/lite/internal/listener/ChangeListenerToken$1;
.super Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/listener/ChangeListenerToken<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ChangeListener;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;-><init>(Lcom/couchbase/lite/ChangeListener;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic postChange(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken$1;->postChange(Ljava/lang/Void;)V

    return-void
.end method

.method public postChange(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "Dummy Token!!"

    return-object p0
.end method
