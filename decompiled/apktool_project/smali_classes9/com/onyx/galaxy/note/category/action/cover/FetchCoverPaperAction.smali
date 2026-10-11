.class public final Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchCoverPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n766#2:131\n857#2,2:132\n766#2:134\n857#2,2:135\n1855#2,2:137\n*S KotlinDebug\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n*L\n82#1:131\n82#1:132,2\n83#1:134\n83#1:135,2\n120#1:137,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u001e\u0010\u0012\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u00032\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u0005H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "p",
        "q",
        "s",
        "u",
        "r",
        "t",
        "o",
        "w",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;",
        "models",
        "",
        "n",
        "v",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;",
        "f",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;",
        "cloudData",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;",
        "g",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;",
        "localData",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;",
        "h",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;",
        "service",
        "i",
        "J",
        "changeSize",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFetchCoverPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n766#2:131\n857#2,2:132\n766#2:134\n857#2,2:135\n1855#2,2:137\n*S KotlinDebug\n*F\n+ 1 FetchCoverPaperAction.kt\ncom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction\n*L\n82#1:131\n82#1:132,2\n83#1:134\n83#1:135,2\n120#1:137,2\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

.field public i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    new-instance v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    return-void
.end method

.method public static final synthetic access$batchDownload(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToLocalData(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->o()V

    return-void
.end method

.method public static final synthetic access$createService(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->p()V

    return-void
.end method

.method public static final synthetic access$getChangeSize$p(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    return-wide v0
.end method

.method public static final synthetic access$getLocalData$p(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    return-object p0
.end method

.method public static final synthetic access$loadCoverDataFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadCoverResourceRelationFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadPaperDataFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadPaperResourceRelationFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadResourceFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$markSyncState(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->v()V

    return-void
.end method

.method public static final synthetic access$saveToDatabase(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->w()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->y(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->x(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;)V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$coverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCoverResources()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveTemplateResourceList(Ljava/util/List;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCoverCategories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveCoverCategoryList(Ljava/util/List;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCovers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->saveCoverList(Ljava/util/List;Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$templateProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPaperResources()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateResourceList(Ljava/util/List;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPaperCategories()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateCategoryList(Ljava/util/List;Z)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPapers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateList(Ljava/util/List;Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->i:J

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$f;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getResourceSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getThumbnailUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getThumbnailSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/data/glide/GlideExt;->INSTANCE:Lcom/onyx/android/sdk/data/glide/GlideExt;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/glide/GlideExt;->batchDownload(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertAll(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;)Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->g:Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    return-void
.end method

.method public final p()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    return-void
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;->loadCoverData()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCoverCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getCategories()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCoverCategoryRelations()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getItemCategoryShips()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    const-string v2, "cover"

    invoke-interface {v1, v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;->loadResourceRelation(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationData;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResourceRelations()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationData;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;->loadPaperData()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPapers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPaperCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getCategories()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPaperCategoryRelations()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperData;->getItemCategoryShips()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    const-string v2, "template"

    invoke-interface {v1, v2}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;->loadResourceRelation(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationData;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResourceRelations()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationData;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->h:Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;->loadResourceData()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/ResourceData;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/ResourceData;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResources()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getTarget()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cover"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->setCoverResources(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->f:Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResources()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getTarget()Ljava/lang/String;

    move-result-object v3

    const-string v4, "template"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->setPaperResources(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v0, "template"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-void
.end method

.method public final w()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCoverProvider()Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/dag;

    invoke-direct {v3, p0, v1}, Lcom/sunia/HTREnginev2/dag;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;)V

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/eag;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/eag;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method
