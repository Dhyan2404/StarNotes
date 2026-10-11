.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildTextIndexInBackgroundAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,179:1\n288#2,2:180\n288#2,2:182\n1549#2:184\n1620#2,3:185\n766#2:193\n857#2:194\n858#2:196\n1549#2:197\n1620#2,3:198\n41#3,5:188\n97#3:201\n97#3:202\n637#4:195\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n*L\n77#1:180,2\n102#1:182,2\n109#1:184\n109#1:185,3\n114#1:193\n114#1:194\n114#1:196\n120#1:197\n120#1:198,3\n113#1:188,5\n144#1:201\n148#1:202\n114#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000c\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000c\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0014\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0014\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "v",
        "w",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "t",
        "",
        "docId",
        "u",
        "",
        "excludeRecentPage",
        "",
        "r",
        "",
        "x",
        "p",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lkotlin/Lazy;",
        "s",
        "()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "userNoteProvider",
        "",
        "j",
        "Ljava/util/List;",
        "unIndexedDocIds",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V",
        "Companion",
        "sdk-universal_overseasRelease"
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
        "SMAP\nBuildTextIndexInBackgroundAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,179:1\n288#2,2:180\n288#2,2:182\n1549#2:184\n1620#2,3:185\n766#2:193\n857#2:194\n858#2:196\n1549#2:197\n1620#2,3:198\n41#3,5:188\n97#3:201\n97#3:202\n637#4:195\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexInBackgroundAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction\n*L\n77#1:180,2\n102#1:182,2\n109#1:184\n109#1:185,3\n114#1:193\n114#1:194\n114#1:196\n120#1:197\n120#1:198,3\n113#1:188,5\n144#1:201\n148#1:202\n114#1:195\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FTS_IDLE_INTERVAL:J = 0xea60L

.field public static final FTS_PAGE_PROTECTION_PERIOD:J = 0x2710L

.field public static final FTS_TASK_INTERVAL:J = 0x3e8L

.field public static final SETTINGS_DOC_RECENT:Ljava/lang/String; = "settings_recent_doc_info"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_PAUSE_TASK:Ljava/lang/String; = "settings_pause_task"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider<",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider<",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;",
            "Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    new-instance v0, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->k:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$special$$inlined$delegate$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$special$$inlined$delegate$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->l:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$special$$inlined$delegate$2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$special$$inlined$delegate$2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteSearchArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$userNoteProvider$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$userNoteProvider$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->i:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$buildFTSIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFtsWorkerOptions$cp()Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->k:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-object v0
.end method

.method public static final synthetic access$getPauseTask$delegate$cp()Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->l:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-object v0
.end method

.method public static final synthetic access$getRecentDocInfo$delegate$cp()Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->m:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-object v0
.end method

.method public static final synthetic access$handlePageTask(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->u(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handlePrimaryTask(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleSecondaryTask(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reloadIndexTasks(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->x()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->q(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->o(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->p()V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->destroy()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/jv;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jv;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->access$getPauseTask(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;)Z

    move-result v0

    const-string v1, "delay(...)"

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-wide/32 v2, 0xea60

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "concatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/iv;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/iv;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doFinally(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final r(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->access$getRecentDocInfo(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;)Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;->getPageIds()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;->getLastUpdateTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p1, :cond_6

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;->getPageIds()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, p1

    :cond_6
    return-object v0
.end method

.method public final s()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$i;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->Companion:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getSearchTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType$Companion;->getContentTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->isAllPageIndexed(Ljava/util/List;I)Z

    move-result v1

    const-string v2, "just(...)"

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->r(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->isPageIndexed(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    xor-int/2addr v4, p1

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->access$getRecentDocInfo(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;)Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;->getDocId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "just(...)"

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->s()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;->access$getRecentDocInfo(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction$Companion;)Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;->getDocId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_3
    check-cast v1, Ljava/lang/String;

    const-string v0, "just(...)"

    if-nez v1, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->s()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getNoteModels()Ljava/util/List;

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexInBackgroundAction;->j:Ljava/util/List;

    return-void
.end method
