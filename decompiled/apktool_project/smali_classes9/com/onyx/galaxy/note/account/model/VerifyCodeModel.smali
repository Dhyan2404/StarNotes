.class public final Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\"\u0010\u0011\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\n\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;",
        "",
        "",
        "release",
        "",
        "a",
        "Ljava/lang/String;",
        "key",
        "",
        "b",
        "J",
        "countDown",
        "c",
        "getLeftTime",
        "()J",
        "setLeftTime",
        "(J)V",
        "leftTime",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "d",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "timerObserver",
        "<init>",
        "(Ljava/lang/String;J)V",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERIFY_CODE_PERIOD_IN_MILLS:J = 0x3e8L

.field public static final VERIFY_CODE_PERIOD_IN_SEC:I = 0x1


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public c:J

.field public d:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->Companion:Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->b:J

    new-instance v6, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel$timerObserver$1;-><init>(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)V

    iput-object v6, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->d:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JJLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public static final synthetic access$getCountDown$p(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->b:J

    return-wide v0
.end method

.method public static final synthetic access$getKey$p(Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getLeftTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->c:J

    return-wide v0
.end method

.method public final release()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->d:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final setLeftTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/account/model/VerifyCodeModel;->c:J

    return-void
.end method
