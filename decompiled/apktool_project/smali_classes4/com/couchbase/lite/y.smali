.class public final synthetic Lcom/couchbase/lite/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/IndexUpdaterImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/IndexUpdaterImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/y;->a:Lcom/couchbase/lite/IndexUpdaterImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/y;->a:Lcom/couchbase/lite/IndexUpdaterImpl;

    check-cast p1, Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    invoke-static {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->e0(Lcom/couchbase/lite/IndexUpdaterImpl;Lcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method
