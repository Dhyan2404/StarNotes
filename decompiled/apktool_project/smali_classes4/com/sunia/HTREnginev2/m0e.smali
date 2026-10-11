.class public final synthetic Lcom/sunia/HTREnginev2/m0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Provider;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/couchbase/lite/CollectionChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m0e;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m0e;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/m0e;->c:Lcom/couchbase/lite/CollectionChangeListener;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m0e;->a:Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/m0e;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m0e;->c:Lcom/couchbase/lite/CollectionChangeListener;

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/Collection;->H(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method
