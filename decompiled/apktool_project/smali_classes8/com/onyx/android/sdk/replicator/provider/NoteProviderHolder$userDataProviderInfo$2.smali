.class final Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$userDataProviderInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$userDataProviderInfo$2;->this$0:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$userDataProviderInfo$2;->this$0:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->access$getUserId$p(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$userDataProviderInfo$2;->invoke()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    return-object p0
.end method
