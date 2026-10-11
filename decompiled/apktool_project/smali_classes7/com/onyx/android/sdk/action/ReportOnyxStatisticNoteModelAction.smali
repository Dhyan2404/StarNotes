.class public final Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;
.super Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n1549#2:175\n1620#2,3:176\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n*L\n137#1:175\n137#1:176,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u001e\u0010\n\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;",
        "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "t",
        "",
        "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
        "list",
        "isDeleted",
        "w",
        "",
        "s",
        "r",
        "q",
        "models",
        "n",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "o",
        "v",
        "m",
        "u",
        "l",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "e",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "config",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "f",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "provider",
        "<init>",
        "(Lcom/onyx/android/sdk/data/StatistConfig;)V",
        "Companion",
        "sdk-statistics_overseasRelease"
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
        "SMAP\nReportOnyxStatisticNoteModelAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n1549#2:175\n1620#2,3:176\n*S KotlinDebug\n*F\n+ 1 ReportOnyxStatisticNoteModelAction.kt\ncom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction\n*L\n137#1:175\n137#1:176,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "report_onyx_note_last_time_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "report_onyx_note_retry_time_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:I = 0xea60

.field public static final j:I = 0x2bf20

.field public static k:I


# instance fields
.field public final e:Lcom/onyx/android/sdk/data/StatistConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->Companion:Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/StatistConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/StatistConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    return-void
.end method

.method public static final synthetic access$reportModels(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-void
.end method

.method public static final synthetic access$updateLastReportTime(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->v()V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->o(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$a;->e:Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$b;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$c;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$d;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$e;-><init>(Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$f;->e:Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction$f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_note_last_time_key"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_note_retry_time_key"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/OnyxNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->deleteOnyxNoteByIds(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V

    return-void
.end method

.method public final o(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 2

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "status"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p1
.end method

.method public final q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->o(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->loadOnyxNoteList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->f:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->o(Z)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->loadOnyxNoteList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final s()V
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/StatistConfig;->getRetryConfigs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->k:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 p0, 0x0

    sput p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->k:I

    return-void

    :cond_1
    sget v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->k:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/StatistConfig$RetryConfig;->getPeriodTime()I

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    mul-int/2addr p0, v2

    int-to-long v2, p0

    add-long/2addr v0, v2

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "report_onyx_note_retry_time_key"

    invoke-virtual {p0, v2, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final t()Z
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->r()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->w(Ljava/util/List;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->r()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->w(Ljava/util/List;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->q()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final u()V
    .locals 3

    const/4 p0, 0x0

    sput p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->k:I

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "report_onyx_note_last_time_key"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final v()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "report_onyx_note_last_time_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final w(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v2, p0, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->e:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    sget-object v2, Lcom/onyx/android/sdk/data/OnyxNoteReportBean;->Companion:Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/OnyxNoteReportBean$Companion;->createOnyxNoteReportBean(Ljava/util/List;)Lcom/onyx/android/sdk/data/OnyxNoteReportBean;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;->deletedNoteItem(Lcom/onyx/android/sdk/data/OnyxNoteReportBean;)Lretrofit2/Call;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;->updateNoteItem(Lcom/onyx/android/sdk/data/OnyxNoteReportBean;)Lretrofit2/Call;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p2

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->n(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->u()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/action/ReportOnyxStatisticNoteModelAction;->s()V

    const/4 p0, 0x0

    return p0
.end method
