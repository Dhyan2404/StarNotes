.class public final synthetic Lcom/sunia/HTREnginev2/o0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o0e;->a:Lcom/couchbase/lite/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o0e;->a:Lcom/couchbase/lite/Collection;

    check-cast p1, Lcom/couchbase/lite/ListenerToken;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->removeCollectionChangeListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method
