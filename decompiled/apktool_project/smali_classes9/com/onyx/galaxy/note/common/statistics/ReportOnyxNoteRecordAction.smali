.class public final Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n766#2:139\n857#2,2:140\n1855#2,2:142\n1549#2:144\n1620#2,3:145\n1855#2,2:148\n1549#2:150\n1620#2,3:151\n*S KotlinDebug\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n*L\n81#1:137,2\n85#1:139\n85#1:140,2\n86#1:142,2\n105#1:144\n105#1:145,3\n111#1:148,2\n127#1:150\n127#1:151,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;",
        "p",
        "",
        "q",
        "r",
        "summaryReportBean",
        "s",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "g",
        "Lcom/onyx/android/sdk/data/StatistConfig;",
        "config",
        "",
        "",
        "h",
        "Ljava/util/List;",
        "unUploadNoteIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "j",
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "onyxStatisticProvider",
        "k",
        "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;",
        "onyxNoteSummaryReportBean",
        "<init>",
        "(Lcom/onyx/android/sdk/data/StatistConfig;)V",
        "Companion",
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
        "SMAP\nReportOnyxNoteRecordAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n766#2:139\n857#2,2:140\n1855#2,2:142\n1549#2:144\n1620#2,3:145\n1855#2,2:148\n1549#2:150\n1620#2,3:151\n*S KotlinDebug\n*F\n+ 1 ReportOnyxNoteRecordAction.kt\ncom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction\n*L\n81#1:137,2\n85#1:139\n85#1:140,2\n86#1:142,2\n105#1:144\n105#1:145,3\n111#1:148,2\n127#1:150\n127#1:151,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:I = 0x3e8


# instance fields
.field public final g:Lcom/onyx/android/sdk/data/StatistConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

.field public k:Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->Companion:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$Companion;

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

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->g:Lcom/onyx/android/sdk/data/StatistConfig;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$generateUnUploadNoteIds(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->q()V

    return-void
.end method

.method public static final synthetic access$getUnUploadNoteIds$p(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$setOnyxStatisticProvider$p(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->o(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->n(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->p()Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->k:Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->r()Z

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$c;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$d;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->INSTANCE:Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$e;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$e;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$f;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$f;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$g;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$g;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v2, "observeOn(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/qkl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qkl;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/rkl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rkl;-><init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$a;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;
    .locals 11

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/couchbase/lite/SelectResult;

    const-string v3, "uniqueId"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    const-string v4, "property(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "notePointSize"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v1, :cond_0

    const-string v1, "noteProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePointSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v8, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->h:Ljava/util/List;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v3, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePointSize()J

    move-result-wide v7

    invoke-direct {v3, v6, v7, v8}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getRoleFlagList()Ljava/util/List;

    move-result-object v10

    move-object v1, p0

    move-wide v3, v4

    move v5, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;-><init>(Ljava/util/List;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object p0
.end method

.method public final q()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "isUploaded"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez v1, :cond_0

    const-string v1, "onyxStatisticProvider"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt;->loadOnyxNoteRecordList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->h:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final r()Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->k:Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    const/4 v1, 0x0

    const-string v2, "onyxNoteSummaryReportBean"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;->getItems()Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->k:Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1
    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;->setItems(Ljava/util/List;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->k:Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->s(Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final s(Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;)Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->g:Lcom/onyx/android/sdk/data/StatistConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/StatistConfig;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/data/OnyxStatisticReportService;->noteItemSummary(Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;->getItems()Ljava/util/List;

    move-result-object p1

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

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;

    new-instance v3, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean$Item;->getNoteId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/onyx/android/sdk/data/OnyxNoteRecordModel;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->j:Lcom/onyx/android/sdk/db/OnyxStatisticProvider;

    if-nez p0, :cond_1

    const-string p0, "onyxStatisticProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteRecordProviderKt;->saveOnyxNoteRecordList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
