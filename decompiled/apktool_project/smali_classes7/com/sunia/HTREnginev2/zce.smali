.class public final synthetic Lcom/sunia/HTREnginev2/zce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Ljava/util/Collection;

.field public final synthetic b:Lcom/couchbase/lite/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Lcom/couchbase/lite/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zce;->a:Ljava/util/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zce;->b:Lcom/couchbase/lite/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zce;->a:Ljava/util/Collection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zce;->b:Lcom/couchbase/lite/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->e(Ljava/util/Collection;Lcom/couchbase/lite/Collection;)V

    return-void
.end method
