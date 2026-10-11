.class public final synthetic Lcom/sunia/HTREnginev2/uce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/Collection;

.field public final synthetic b:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uce;->a:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uce;->b:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uce;->c:Lkotlin/jvm/internal/Ref$LongRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uce;->a:Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uce;->b:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uce;->c:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->a(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method
