.class final Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getAutoBackupProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        "it",
        "",
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
.field final synthetic $info:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/bundle/DBProviderBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;->this$0:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;->$info:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    iget-object v0, p0, Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;->this$0:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;->$info:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$getAutoBackupProvider$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    move-result-object p0

    return-object p0
.end method
