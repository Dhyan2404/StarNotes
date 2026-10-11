.class final Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;->scheduler(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "it",
        "",
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
.field final synthetic $keepAliveTime:J

.field final synthetic $key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;->$key:Ljava/lang/String;

    iput-wide p2, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;->$keepAliveTime:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;->$key:Ljava/lang/String;

    iget-wide v1, p0, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;->$keepAliveTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager(Ljava/lang/String;J)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/SchedulerManager$scheduler$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    return-object p0
.end method
