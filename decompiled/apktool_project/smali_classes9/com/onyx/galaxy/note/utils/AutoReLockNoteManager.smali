.class public final Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoReLockNoteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,143:1\n1#2:144\n215#3,2:145\n215#3,2:154\n526#4:147\n511#4,6:148\n*S KotlinDebug\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n*L\n82#1:145,2\n124#1:154,2\n123#1:147\n123#1:148,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000S\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u001f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u000c\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001aR \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;",
        "",
        "",
        "onScreenOffEvent",
        "",
        "docId",
        "addAutoReLockNoteTask",
        "delayReLockNoteTask",
        "removeAutoReLockNoteTask",
        "",
        "isNoteReLocked",
        "hasAutoReLockNoteTask",
        "stop",
        "updateReLockTaskTime",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lio/reactivex/rxjava3/core/Observable;",
        "checkEditorAutoReLockObservable",
        "checkEnableIdleAutoLockInterval",
        "checkEnableAutoReLock",
        "",
        "c",
        "b",
        "a",
        "d",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "reLockedNoteSet",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "reLockTimesMap",
        "com/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1",
        "Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;",
        "timerObserver",
        "",
        "Ljava/lang/Integer;",
        "timerObserverKey",
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
        "SMAP\nAutoReLockNoteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,143:1\n1#2:144\n215#3,2:145\n215#3,2:154\n526#4:147\n511#4,6:148\n*S KotlinDebug\n*F\n+ 1 AutoReLockNoteManager.kt\ncom/onyx/galaxy/note/utils/AutoReLockNoteManager\n*L\n82#1:145,2\n124#1:154,2\n123#1:147\n123#1:148,6\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->c:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$executeReLock(Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final addAutoReLockNoteTask(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEnableAutoReLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->stop()V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->d()V

    return-void
.end method

.method public final b()J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteIdleAutoLockIntervalOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final c()J
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEnableIdleAutoLockInterval()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b()J

    move-result-wide v0

    const p0, 0xea60

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final checkEditorAutoReLockObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEnableAutoReLock()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->isNoteReLocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/onyx/galaxy/note/category/action/CheckNoteEncryptedAction;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/action/CheckNoteEncryptedAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final checkEnableAutoReLock()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteLockPasswordOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final checkEnableIdleAutoLockInterval()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 7

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x2710

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    const-wide/16 v1, 0x0

    sget-object p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v5

    sget-object v6, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->c:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager$timerObserver$1;

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JJLio/reactivex/rxjava3/core/Scheduler;Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final delayReLockNoteTask(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final hasAutoReLockNoteTask(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isNoteReLocked(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "docId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onScreenOffEvent()V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final removeAutoReLockNoteTask(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->stop()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final updateReLockTaskTime()V
    .locals 6

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
