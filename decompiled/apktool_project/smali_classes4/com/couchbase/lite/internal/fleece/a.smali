.class public final synthetic Lcom/couchbase/lite/internal/fleece/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/a;->a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/a;->a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;->w(Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;Ljava/lang/Long;)V

    return-void
.end method
