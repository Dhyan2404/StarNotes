.class public final synthetic Lcom/couchbase/lite/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/AbstractQuery;

.field public final synthetic b:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/b;->a:Lcom/couchbase/lite/AbstractQuery;

    iput-object p2, p0, Lcom/couchbase/lite/b;->b:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    return-void
.end method


# virtual methods
.method public final onQueryChanged(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/b;->a:Lcom/couchbase/lite/AbstractQuery;

    iget-object p0, p0, Lcom/couchbase/lite/b;->b:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/AbstractQuery;->d(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V

    return-void
.end method
