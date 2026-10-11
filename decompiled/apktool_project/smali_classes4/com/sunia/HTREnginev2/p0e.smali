.class public final synthetic Lcom/sunia/HTREnginev2/p0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Provider;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p0e;->a:Lcom/couchbase/lite/Collection;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p0e;->a:Lcom/couchbase/lite/Collection;

    invoke-static {p0}, Lcom/couchbase/lite/Collection;->g0(Lcom/couchbase/lite/Collection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
