.class public final Lcom/onyx/android/sdk/base/action/ConfigLogAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;",
        "e",
        "Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;",
        "param",
        "<init>",
        "(Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;)V",
        "ConfigLogParams",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    return-void
.end method

.method public static final synthetic access$configLog(Lcom/onyx/android/sdk/base/action/ConfigLogAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/action/ConfigLogAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/action/ConfigLogAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$a;-><init>(Lcom/onyx/android/sdk/base/action/ConfigLogAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->getConfig()Lcom/blankj/utilcode/util/LogUtils$Config;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getEnableLogcat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->setConsoleSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getLogcatFilterLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->setConsoleFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getFileSaveDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getEnableSave2File()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/LogUtils$Config;->setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/action/ConfigLogAction;->e:Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/action/ConfigLogAction$ConfigLogParams;->getFileFilterLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->setFileFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;

    return-void
.end method
