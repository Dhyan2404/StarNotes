.class public final synthetic Lcom/sunia/HTREnginev2/yce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yce;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yce;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yce;->a:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yce;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->b(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    return-void
.end method
