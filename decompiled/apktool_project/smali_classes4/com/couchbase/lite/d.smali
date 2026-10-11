.class public final synthetic Lcom/couchbase/lite/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/AbstractQuery;

.field public final synthetic f:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/d;->e:Lcom/couchbase/lite/AbstractQuery;

    iput-object p2, p0, Lcom/couchbase/lite/d;->f:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/d;->e:Lcom/couchbase/lite/AbstractQuery;

    iget-object p0, p0, Lcom/couchbase/lite/d;->f:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractQuery;->b(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V

    return-void
.end method
