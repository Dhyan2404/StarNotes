.class public final synthetic Lcom/couchbase/lite/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/AbstractQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/c;->a:Lcom/couchbase/lite/AbstractQuery;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/c;->a:Lcom/couchbase/lite/AbstractQuery;

    check-cast p1, Lcom/couchbase/lite/ListenerToken;

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->a(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method
