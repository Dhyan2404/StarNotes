.class public final synthetic Lcom/sunia/HTREnginev2/dde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/couchbase/lite/Database;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/couchbase/lite/Database;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dde;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dde;->b:Lcom/couchbase/lite/Database;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dde;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dde;->b:Lcom/couchbase/lite/Database;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->a(Ljava/util/List;Lcom/couchbase/lite/Database;)V

    return-void
.end method
