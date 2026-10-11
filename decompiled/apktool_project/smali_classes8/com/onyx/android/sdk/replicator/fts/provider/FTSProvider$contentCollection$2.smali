.class final Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/couchbase/lite/Collection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/couchbase/lite/Collection;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;->this$0:Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/couchbase/lite/Collection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;->this$0:Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    const-string v0, "FTS_CONTENT_MODEL"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider$contentCollection$2;->invoke()Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method
