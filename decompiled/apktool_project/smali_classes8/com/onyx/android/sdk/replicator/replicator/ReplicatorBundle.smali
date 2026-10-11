.class public final Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00084\u00105J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0014R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0014R \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0014R \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0014R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0014R \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0014R\u0011\u0010(\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00170)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0014\u00101\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u00100R\u0014\u00103\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u00102\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createObservable",
        "",
        "userId",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "getNoteReplicatorManager",
        "clearNoteReplicatorManager",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "getMessageReplicator",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "a",
        "Lkotlin/Lazy;",
        "b",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "",
        "Ljava/util/Map;",
        "noteReplicatorManagerMap",
        "",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "c",
        "readerReplicatorManagerMap",
        "d",
        "groupReplicatorManagerMap",
        "e",
        "calendarReplicatorManagerMap",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "f",
        "appDataReplicatorMap",
        "g",
        "configReplicatorMap",
        "h",
        "messageReplicatorMap",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "observeOn",
        "",
        "getNoteReplicatorManagers",
        "()Ljava/util/List;",
        "noteReplicatorManagers",
        "getCurNoteRepManagerObservable",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "curNoteRepManagerObservable",
        "()Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "curNoteReplicatorManager",
        "()Ljava/lang/String;",
        "syncUserId",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle$rxScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->a:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurNoteReplicatorManager(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;)Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->a()Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getNoteReplicatorManager(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;-><init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final clearNoteReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle$a;->e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMessageReplicator(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)Lcom/onyx/android/sdk/replicator/message/MessageReplicator;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    return-object p0
.end method

.method public final getNoteReplicatorManager(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "userId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    return-object p0
.end method

.method public final getNoteReplicatorManagers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->b()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method
