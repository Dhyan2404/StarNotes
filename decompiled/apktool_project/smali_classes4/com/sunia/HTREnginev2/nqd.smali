.class public final synthetic Lcom/sunia/HTREnginev2/nqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/couchbase/lite/ListenerToken;

    invoke-static {p1}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->w(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method
