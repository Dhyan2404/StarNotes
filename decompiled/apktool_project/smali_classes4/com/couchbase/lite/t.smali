.class public final synthetic Lcom/couchbase/lite/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/DocumentChangeNotifier;

.field public final synthetic f:Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/DocumentChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/t;->e:Lcom/couchbase/lite/DocumentChangeNotifier;

    iput-object p2, p0, Lcom/couchbase/lite/t;->f:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/t;->e:Lcom/couchbase/lite/DocumentChangeNotifier;

    iget-object p0, p0, Lcom/couchbase/lite/t;->f:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    invoke-static {v0, p0}, Lcom/couchbase/lite/DocumentChangeNotifier;->j(Lcom/couchbase/lite/DocumentChangeNotifier;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method
