.class public final Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006R\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;",
        "",
        "",
        "key",
        "",
        "keepAliveTime",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "scheduler",
        "multiScheduler",
        "coreScheduler",
        "readerScheduler",
        "noteScheduler",
        "subNoteScheduler",
        "ioScheduler",
        "stashScheduler",
        "",
        "a",
        "Ljava/util/Map;",
        "schedulerMap",
        "",
        "b",
        "Z",
        "isSharedReaderScheduler",
        "()Z",
        "setSharedReaderScheduler",
        "(Z)V",
        "<init>",
        "()V",
        "Companion",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final CORE:Ljava/lang/String; = "core"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IO:Ljava/lang/String; = "IO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOTE:Ljava/lang/String; = "note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READER:Ljava/lang/String; = "reader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READER_SHARED:Ljava/lang/String; = "reader_shared"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STASH:Ljava/lang/String; = "stash"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUB_NOTE:Ljava/lang/String; = "sub_note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->Companion:Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$Companion;

    sget-object v2, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    const-string v3, "reader_shared"

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->a:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->b:Z

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public static synthetic multiScheduler$default(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->multiScheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scheduler$default(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final coreScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;->getLONG_KEEP_ALIVE_TIME_IN_SECOND()J

    move-result-wide v0

    const-string v2, "core"

    invoke-virtual {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final ioScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v1, "IO"

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler$default(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final isSharedReaderScheduler()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->b:Z

    return p0
.end method

.method public final multiScheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->a:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$multiScheduler$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$multiScheduler$1;-><init>(Ljava/lang/String;J)V

    new-instance p2, Lcom/sunia/HTREnginev2/q1m;

    invoke-direct {p2, v0}, Lcom/sunia/HTREnginev2/q1m;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final noteScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;->getLONG_KEEP_ALIVE_TIME_IN_SECOND()J

    move-result-wide v0

    const-string v2, "note"

    invoke-virtual {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final readerScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    goto :goto_0

    :cond_0
    const-string v1, "reader"

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler$default(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final scheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->a:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;-><init>(Ljava/lang/String;J)V

    new-instance p2, Lcom/sunia/HTREnginev2/r1m;

    invoke-direct {p2, v0}, Lcom/sunia/HTREnginev2/r1m;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final setSharedReaderScheduler(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->b:Z

    return-void
.end method

.method public final stashScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v1, "stash"

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler$default(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public final subNoteScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sub_note"

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->multiScheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method
