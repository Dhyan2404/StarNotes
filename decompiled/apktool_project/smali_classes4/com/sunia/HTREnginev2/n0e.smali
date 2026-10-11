.class public final synthetic Lcom/sunia/HTREnginev2/n0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Lcom/couchbase/lite/MutableDocument;

.field public final synthetic c:Lcom/couchbase/lite/ConcurrencyControl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n0e;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/n0e;->b:Lcom/couchbase/lite/MutableDocument;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/n0e;->c:Lcom/couchbase/lite/ConcurrencyControl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n0e;->a:Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/n0e;->b:Lcom/couchbase/lite/MutableDocument;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n0e;->c:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/Collection;->f0(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
