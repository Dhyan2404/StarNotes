.class public final Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onPause",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic g:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->f:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->g:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->g:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->access$getLoginPublishSubject$p(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->g:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->access$getLoginPublishSubject$p(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
