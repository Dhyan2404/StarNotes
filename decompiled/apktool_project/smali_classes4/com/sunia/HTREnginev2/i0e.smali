.class public final synthetic Lcom/sunia/HTREnginev2/i0e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i0e;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i0e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/i0e;->c:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i0e;->a:Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/i0e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i0e;->c:Ljava/util/Date;

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/Collection;->w(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
