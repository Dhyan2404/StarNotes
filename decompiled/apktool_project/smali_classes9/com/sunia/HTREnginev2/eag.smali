.class public final synthetic Lcom/sunia/HTREnginev2/eag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

.field public final synthetic b:Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eag;->a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eag;->b:Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eag;->a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eag;->b:Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->l(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V

    return-void
.end method
