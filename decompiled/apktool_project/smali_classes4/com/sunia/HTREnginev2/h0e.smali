.class public final synthetic Lcom/sunia/HTREnginev2/h0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Provider;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Lcom/couchbase/lite/DocumentChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h0e;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h0e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/h0e;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/h0e;->d:Lcom/couchbase/lite/DocumentChangeListener;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h0e;->a:Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/h0e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/h0e;->c:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h0e;->d:Lcom/couchbase/lite/DocumentChangeListener;

    invoke-static {v0, v1, v2, p0}, Lcom/couchbase/lite/Collection;->i0(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method
