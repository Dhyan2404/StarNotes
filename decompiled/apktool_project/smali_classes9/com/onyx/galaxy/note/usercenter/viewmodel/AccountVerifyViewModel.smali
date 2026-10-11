.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002R%\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R(\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "reset",
        "",
        "",
        "i",
        "Ljava/util/Map;",
        "getTabTitles",
        "()Ljava/util/Map;",
        "tabTitles",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "j",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "getVerifyArgs",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "setVerifyArgs",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V",
        "verifyArgs",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "",
        "k",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "getEventPublisher",
        "()Lio/reactivex/rxjava3/subjects/Subject;",
        "setEventPublisher",
        "(Lio/reactivex/rxjava3/subjects/Subject;)V",
        "eventPublisher",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "l",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "getAccount",
        "()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "setAccount",
        "(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V",
        "account",
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


# instance fields
.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->verify_method_account:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Password"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->verify_method_phone:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Phone"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$string;->user_title_email:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Email"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->user_title_wechat:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Wechat"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    sget v5, Lcom/onyx/galaxy/note/R$string;->login_ways_huawei:I

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Huawei"

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v1, v2, v3, v4, v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->i:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->k:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method


# virtual methods
.method public final getAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->l:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final getEventPublisher()Lio/reactivex/rxjava3/subjects/Subject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->k:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method

.method public final getTabTitles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-object p0
.end method

.method public final reset()V
    .locals 2

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->k:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method

.method public final setAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->l:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-void
.end method

.method public final setEventPublisher(Lio/reactivex/rxjava3/subjects/Subject;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/subjects/Subject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->k:Lio/reactivex/rxjava3/subjects/Subject;

    return-void
.end method

.method public final setVerifyArgs(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-void
.end method
