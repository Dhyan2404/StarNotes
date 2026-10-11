.class final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->s(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $authDialog:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

.field final synthetic $behaviorSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;->$behaviorSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;->$authDialog:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;->$behaviorSubject:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;->$authDialog:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method
