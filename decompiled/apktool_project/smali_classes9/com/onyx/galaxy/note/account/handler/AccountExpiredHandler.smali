.class public final Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;",
        "",
        "Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;",
        "event",
        "",
        "onAccountExpired",
        "",
        "a",
        "Z",
        "isHandlingTokenExpireEvent",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setHandlingTokenExpireEvent$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->a:Z

    return-void
.end method


# virtual methods
.method public final onAccountExpired(Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->a:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountExpired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->a:Z

    new-instance p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    sget p1, Lcom/onyx/android/sdk/base/R$string;->tip:I

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_login_expired:I

    invoke-direct {p0, v0, p1, v1}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$a;->e:Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
