.class final Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;->m(Ljava/util/Set;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveInvalidVirtualPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveInvalidVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2,2:73\n*S KotlinDebug\n*F\n+ 1 RemoveInvalidVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1\n*L\n53#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "models",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoveInvalidVirtualPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveInvalidVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2,2:73\n*S KotlinDebug\n*F\n+ 1 RemoveInvalidVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1\n*L\n53#1:73,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $benchmark:Lcom/onyx/android/sdk/base/utils/Benchmark;

.field final synthetic $count:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $provider:Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

.field final synthetic $queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/utils/Benchmark;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$count:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$provider:Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$benchmark:Lcom/onyx/android/sdk/base/utils/Benchmark;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$count:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setStatus(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$provider:Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setOffset(I)V

    .line 8
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$benchmark:Lcom/onyx/android/sdk/base/utils/Benchmark;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInvalidPage totalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;->$count:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportAndRestart(Ljava/lang/String;)V

    return-void
.end method
