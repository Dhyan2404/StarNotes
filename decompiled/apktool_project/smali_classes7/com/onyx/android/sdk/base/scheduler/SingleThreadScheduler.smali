.class public final Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;",
        "",
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
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_KEEP_ALIVE_TIME_IN_SECOND:J = 0x5L

.field public static final a:I = 0x1

.field public static final b:I = 0x1

.field public static final c:J

.field public static final d:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->c:J

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion$scheduler$2;->INSTANCE:Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion$scheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLONG_KEEP_ALIVE_TIME_IN_SECOND$cp()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->c:J

    return-wide v0
.end method

.method public static final synthetic access$getScheduler$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;->d:Lkotlin/Lazy;

    return-object v0
.end method
