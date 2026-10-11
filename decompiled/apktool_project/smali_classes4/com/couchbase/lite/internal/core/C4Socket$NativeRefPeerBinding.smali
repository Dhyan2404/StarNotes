.class public Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;
.super Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeRefPeerBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public preBind(JLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    return-void
.end method

.method public preGetBinding(J)V
    .locals 0

    return-void
.end method
