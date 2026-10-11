.class public final Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->p()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1",
        "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;",
        "receiveVerifyData",
        "",
        "verifyData",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

.field public final synthetic c:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->b:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    iput-object p3, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveVerifyData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "verifyData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->b:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->access$checkValid(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "security verify fail"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
