.class public final synthetic Lcom/sunia/HTREnginev2/g0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Lcom/couchbase/lite/Document;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g0e;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g0e;->b:Lcom/couchbase/lite/Document;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g0e;->a:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g0e;->b:Lcom/couchbase/lite/Document;

    invoke-static {v0, p0}, Lcom/couchbase/lite/Collection;->M(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
