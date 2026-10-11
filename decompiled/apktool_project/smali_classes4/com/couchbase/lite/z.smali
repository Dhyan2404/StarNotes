.class public final synthetic Lcom/couchbase/lite/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/MessageEndpointChangeNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/MessageEndpointChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/z;->a:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/z;->a:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    check-cast p1, Lcom/couchbase/lite/ListenerToken;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)Z

    return-void
.end method
