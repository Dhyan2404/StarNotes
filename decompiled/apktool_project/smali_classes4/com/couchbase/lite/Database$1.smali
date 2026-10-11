.class Lcom/couchbase/lite/Database$1;
.super Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/Database;->registerUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
        "Lcom/couchbase/lite/URLEndpointListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/Database;

.field final synthetic val$listener:Lcom/couchbase/lite/URLEndpointListener;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/URLEndpointListener;Lcom/couchbase/lite/URLEndpointListener;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/Database$1;->this$0:Lcom/couchbase/lite/Database;

    iput-object p3, p0, Lcom/couchbase/lite/Database$1;->val$listener:Lcom/couchbase/lite/URLEndpointListener;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Database$1;->val$listener:Lcom/couchbase/lite/URLEndpointListener;

    invoke-virtual {p0}, Lcom/couchbase/lite/URLEndpointListener;->isRunning()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Database$1;->val$listener:Lcom/couchbase/lite/URLEndpointListener;

    invoke-virtual {p0}, Lcom/couchbase/lite/URLEndpointListener;->stop()V

    return-void
.end method
